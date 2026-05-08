package com.fpj.poetry.controller;

import com.fpj.poetry.common.Result;
import com.fpj.poetry.dto.HealthCheckResult;
import com.fpj.poetry.dto.HealthInfoDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.PostConstruct;
import java.io.File;
import java.lang.management.ManagementFactory;
import java.lang.management.MemoryMXBean;
import java.lang.management.MemoryUsage;
import java.lang.management.RuntimeMXBean;
import java.lang.management.ThreadMXBean;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.sql.DataSource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.SpringVersion;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/api/health")
@Tag(name = "健康检查", description = "服务健康状态监控接口")
public class HealthController {

    private static final String STATUS_UP = "UP";
    private static final String STATUS_DOWN = "DOWN";
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    private final long startTimeMillis = System.currentTimeMillis();

    @Autowired(required = false)
    private DataSource dataSource;

    @PostConstruct
    public void init() {
        log.info("HealthController initialized, startTime={}", LocalDateTime.now().format(FORMATTER));
    }

    @GetMapping
    @Operation(summary = "综合健康检查", description = "返回服务整体健康状态")
    public Result<HealthCheckResult> health() {
        Map<String, Object> details = new LinkedHashMap<>();
        boolean allUp = true;

        try {
            details.put("service", Map.of("status", STATUS_UP, "message", "Service is running"));
        } catch (Exception e) {
            allUp = false;
            details.put("service", Map.of("status", STATUS_DOWN, "message", e.getMessage()));
        }

        try {
            if (dataSource != null) {
                dataSource.getConnection().close();
                details.put("database", Map.of("status", STATUS_UP, "message", "Database connection is OK"));
            } else {
                details.put("database", Map.of("status", STATUS_UP, "message", "No datasource configured"));
            }
        } catch (Exception e) {
            allUp = false;
            details.put("database", Map.of("status", STATUS_DOWN, "message", e.getMessage()));
        }

        try {
            long freeSpace = new File(".").getFreeSpace();
            long totalSpace = new File(".").getTotalSpace();
            details.put("disk", Map.of(
                    "status", STATUS_UP,
                    "freeSpaceBytes", freeSpace,
                    "totalSpaceBytes", totalSpace,
                    "freeSpaceGB", String.format("%.2f", freeSpace / (1024.0 * 1024 * 1024)),
                    "totalSpaceGB", String.format("%.2f", totalSpace / (1024.0 * 1024 * 1024))
            ));
        } catch (Exception e) {
            allUp = false;
            details.put("disk", Map.of("status", STATUS_DOWN, "message", e.getMessage()));
        }

        String status = allUp ? STATUS_UP : STATUS_DOWN;
        HealthCheckResult result = HealthCheckResult.builder()
                .status(status)
                .details(details)
                .build();

        return Result.success(result);
    }

    @GetMapping("/status")
    @Operation(summary = "服务状态", description = "返回简单服务运行状态")
    public Result<Map<String, String>> status() {
        Map<String, String> status = new LinkedHashMap<>();
        status.put("status", STATUS_UP);
        status.put("service", "poetry");
        status.put("timestamp", LocalDateTime.now().format(FORMATTER));
        return Result.success(status);
    }

    @GetMapping("/info")
    @Operation(summary = "服务详细信息", description = "返回进程ID、CPU、内存、线程等详细信息")
    public Result<HealthInfoDto> info() {
        RuntimeMXBean runtimeMXBean = ManagementFactory.getRuntimeMXBean();
        MemoryMXBean memoryMXBean = ManagementFactory.getMemoryMXBean();
        ThreadMXBean threadMXBean = ManagementFactory.getThreadMXBean();

        MemoryUsage heapUsage = memoryMXBean.getHeapMemoryUsage();

        double cpuUsage = getProcessCpuLoad();

        long uptimeMillis = System.currentTimeMillis() - startTimeMillis;

        HealthInfoDto healthInfo = HealthInfoDto.builder()
                .status(STATUS_UP)
                .processId(getProcessId(runtimeMXBean))
                .cpuUsage(cpuUsage)
                .totalMemory(heapUsage.getCommitted())
                .freeMemory(heapUsage.getCommitted() - heapUsage.getUsed())
                .usedMemory(heapUsage.getUsed())
                .threadCount(threadMXBean.getThreadCount())
                .peakThreadCount(threadMXBean.getPeakThreadCount())
                .uptime(uptimeMillis)
                .startTime(LocalDateTime.ofInstant(Instant.ofEpochMilli(runtimeMXBean.getStartTime()), ZoneId.systemDefault()).format(FORMATTER))
                .applicationName("poetry")
                .version(getClass().getPackage().getImplementationVersion())
                .javaVersion(System.getProperty("java.version"))
                .osName(System.getProperty("os.name"))
                .osArch(System.getProperty("os.arch"))
                .availableProcessors(Runtime.getRuntime().availableProcessors())
                .build();

        return Result.success(healthInfo);
    }

    @GetMapping("/db")
    @Operation(summary = "数据库健康检查", description = "检查数据库连接状态")
    public Result<HealthCheckResult> dbHealth() {
        Map<String, Object> details = new LinkedHashMap<>();
        String status;

        try {
            if (dataSource != null) {
                dataSource.getConnection().close();
                status = STATUS_UP;
                details.put("database", Map.of("status", STATUS_UP, "message", "Database connection is OK"));
            } else {
                status = STATUS_UP;
                details.put("database", Map.of("status", STATUS_UP, "message", "No datasource configured"));
            }
        } catch (Exception e) {
            status = STATUS_DOWN;
            details.put("database", Map.of("status", STATUS_DOWN, "message", e.getMessage()));
            log.error("Database health check failed", e);
        }

        HealthCheckResult result = HealthCheckResult.builder()
                .status(status)
                .details(details)
                .build();

        return Result.success(result);
    }

    @GetMapping("/disk")
    @Operation(summary = "磁盘空间健康检查", description = "检查磁盘空间使用情况")
    public Result<HealthCheckResult> diskHealth() {
        Map<String, Object> details = new LinkedHashMap<>();
        String status = STATUS_UP;

        try {
            File root = new File(".");
            long freeSpace = root.getFreeSpace();
            long totalSpace = root.getTotalSpace();
            long usableSpace = root.getUsableSpace();
            double usagePercent = ((double) (totalSpace - freeSpace) / totalSpace) * 100;

            details.put("freeSpaceBytes", freeSpace);
            details.put("totalSpaceBytes", totalSpace);
            details.put("usableSpaceBytes", usableSpace);
            details.put("freeSpaceGB", String.format("%.2f", freeSpace / (1024.0 * 1024 * 1024)));
            details.put("totalSpaceGB", String.format("%.2f", totalSpace / (1024.0 * 1024 * 1024)));
            details.put("usagePercent", String.format("%.2f%%", usagePercent));

            if (freeSpace < 1024L * 1024 * 1024) {
                status = STATUS_DOWN;
                details.put("warning", "Disk space is critically low (< 1GB)");
            } else if (freeSpace < 5L * 1024 * 1024 * 1024) {
                status = "WARNING";
                details.put("warning", "Disk space is low (< 5GB)");
            }
        } catch (Exception e) {
            status = STATUS_DOWN;
            details.put("error", e.getMessage());
            log.error("Disk health check failed", e);
        }

        HealthCheckResult result = HealthCheckResult.builder()
                .status(status)
                .details(details)
                .build();

        return Result.success(result);
    }

    @GetMapping("/uptime")
    @Operation(summary = "运行时间", description = "返回服务已运行时间")
    public Result<Map<String, Object>> uptime() {
        long uptimeMillis = System.currentTimeMillis() - startTimeMillis;
        long days = TimeUnit.MILLISECONDS.toDays(uptimeMillis);
        long hours = TimeUnit.MILLISECONDS.toHours(uptimeMillis) % 24;
        long minutes = TimeUnit.MILLISECONDS.toMinutes(uptimeMillis) % 60;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(uptimeMillis) % 60;

        Map<String, Object> uptime = new LinkedHashMap<>();
        uptime.put("uptimeMillis", uptimeMillis);
        uptime.put("uptimeFormatted", String.format("%dd %dh %dm %ds", days, hours, minutes, seconds));
        uptime.put("startTime", LocalDateTime.ofInstant(
                Instant.ofEpochMilli(startTimeMillis), ZoneId.systemDefault()).format(FORMATTER));
        uptime.put("currentTime", LocalDateTime.now().format(FORMATTER));

        return Result.success(uptime);
    }

    @GetMapping("/memory")
    @Operation(summary = "内存使用情况", description = "返回JVM内存详细使用情况")
    public Result<Map<String, Object>> memory() {
        MemoryMXBean memoryMXBean = ManagementFactory.getMemoryMXBean();
        MemoryUsage heapUsage = memoryMXBean.getHeapMemoryUsage();
        MemoryUsage nonHeapUsage = memoryMXBean.getNonHeapMemoryUsage();

        Map<String, Object> memory = new LinkedHashMap<>();

        Map<String, Object> heap = new LinkedHashMap<>();
        heap.put("init", heapUsage.getInit());
        heap.put("used", heapUsage.getUsed());
        heap.put("committed", heapUsage.getCommitted());
        heap.put("max", heapUsage.getMax());
        heap.put("usedMB", String.format("%.2f", heapUsage.getUsed() / (1024.0 * 1024)));
        heap.put("committedMB", String.format("%.2f", heapUsage.getCommitted() / (1024.0 * 1024)));
        if (heapUsage.getMax() > 0) {
            heap.put("usagePercent", String.format("%.2f%%", ((double) heapUsage.getUsed() / heapUsage.getMax()) * 100));
        }
        memory.put("heap", heap);

        Map<String, Object> nonHeap = new LinkedHashMap<>();
        nonHeap.put("init", nonHeapUsage.getInit());
        nonHeap.put("used", nonHeapUsage.getUsed());
        nonHeap.put("committed", nonHeapUsage.getCommitted());
        nonHeap.put("max", nonHeapUsage.getMax());
        nonHeap.put("usedMB", String.format("%.2f", nonHeapUsage.getUsed() / (1024.0 * 1024)));
        memory.put("nonHeap", nonHeap);

        Runtime runtime = Runtime.getRuntime();
        memory.put("totalMemory", runtime.totalMemory());
        memory.put("freeMemory", runtime.freeMemory());
        memory.put("maxMemory", runtime.maxMemory());
        memory.put("totalMemoryMB", String.format("%.2f", runtime.totalMemory() / (1024.0 * 1024)));
        memory.put("freeMemoryMB", String.format("%.2f", runtime.freeMemory() / (1024.0 * 1024)));
        memory.put("maxMemoryMB", String.format("%.2f", runtime.maxMemory() / (1024.0 * 1024)));

        return Result.success(memory);
    }

    @GetMapping("/threads")
    @Operation(summary = "线程信息", description = "返回JVM线程详细情况")
    public Result<Map<String, Object>> threads() {
        ThreadMXBean threadMXBean = ManagementFactory.getThreadMXBean();

        Map<String, Object> threads = new LinkedHashMap<>();
        threads.put("threadCount", threadMXBean.getThreadCount());
        threads.put("peakThreadCount", threadMXBean.getPeakThreadCount());
        threads.put("daemonThreadCount", threadMXBean.getDaemonThreadCount());
        threads.put("totalStartedThreadCount", threadMXBean.getTotalStartedThreadCount());

        return Result.success(threads);
    }

    @GetMapping("/env")
    @Operation(summary = "环境信息", description = "返回运行环境相关信息")
    public Result<Map<String, String>> env() {
        Map<String, String> env = new LinkedHashMap<>();
        env.put("java.version", System.getProperty("java.version"));
        env.put("java.vendor", System.getProperty("java.vendor"));
        env.put("java.home", System.getProperty("java.home"));
        env.put("os.name", System.getProperty("os.name"));
        env.put("os.version", System.getProperty("os.version"));
        env.put("os.arch", System.getProperty("os.arch"));
        env.put("user.name", System.getProperty("user.name"));
        env.put("user.dir", System.getProperty("user.dir"));
        env.put("file.encoding", System.getProperty("file.encoding"));
        env.put("spring.version", SpringVersion.getVersion());
        env.put("availableProcessors", String.valueOf(Runtime.getRuntime().availableProcessors()));

        return Result.success(env);
    }

    private long getProcessId(RuntimeMXBean runtimeMXBean) {
        String name = runtimeMXBean.getName();
        try {
            return Long.parseLong(name.split("@")[0]);
        } catch (Exception e) {
            return -1;
        }
    }

    private double getProcessCpuLoad() {
        try {
            java.lang.management.OperatingSystemMXBean osBean = ManagementFactory.getOperatingSystemMXBean();
            if (osBean instanceof com.sun.management.OperatingSystemMXBean sunOsBean) {
                double load = sunOsBean.getProcessCpuLoad();
                return load >= 0 ? load * 100 : -1;
            }
        } catch (Exception e) {
            log.debug("Failed to get process CPU load", e);
        }
        return -1;
    }
}
