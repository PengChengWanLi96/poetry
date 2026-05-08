package com.fpj.poetry.dto;

import lombok.Builder;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

@Data
@Builder
public class HealthInfoDto implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    private String status;
    private Long processId;
    private Double cpuUsage;
    private Long totalMemory;
    private Long freeMemory;
    private Long usedMemory;
    private Integer threadCount;
    private Integer peakThreadCount;
    private Long uptime;
    private String startTime;
    private String applicationName;
    private String version;
    private String javaVersion;
    private String osName;
    private String osArch;
    private Integer availableProcessors;
}
