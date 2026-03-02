package com.fpj.poetry.config;

import com.fpj.poetry.annotation.TimeCost;
import java.util.concurrent.TimeUnit;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

/**
 * @author fangpengjun
 * @date 2026/3/2
 */
@Aspect
@Component
@Slf4j
public class TimeCostAspect {

    /**
     * 接口耗时切面
     */
    @Around("@annotation(timeCost)")
    public Object timeCostAround(ProceedingJoinPoint joinPoint, TimeCost timeCost) throws Throwable {
        long startTime = System.currentTimeMillis();

        try {
            Object result = joinPoint.proceed();
            return result;

        } finally {
            long endTime = System.currentTimeMillis();
            long costTime = endTime - startTime;

            // 根据配置的单位转换时间
            long displayTime = convertTime(costTime, timeCost.unit());

            MethodSignature signature = (MethodSignature) joinPoint.getSignature();
            String methodName = signature.getMethod().getName();
            String className = joinPoint.getTarget().getClass().getSimpleName();

            log.info("【耗时统计】方法: {}.{}, 耗时: {}{}",
                    className, methodName, displayTime, getTimeUnitStr(timeCost.unit()));
        }
    }

    private long convertTime(long millis, TimeUnit unit) {
        switch (unit) {
            case NANOSECONDS:
                return millis * 1_000_000;
            case MICROSECONDS:
                return millis * 1_000;
            case MILLISECONDS:
                return millis;
            case SECONDS:
                return millis / 1_000;
            case MINUTES:
                return millis / (60 * 1_000);
            default:
                return millis;
        }
    }

    private String getTimeUnitStr(TimeUnit unit) {
        switch (unit) {
            case NANOSECONDS: return "ns";
            case MICROSECONDS: return "μs";
            case MILLISECONDS: return "ms";
            case SECONDS: return "s";
            case MINUTES: return "min";
            default: return "ms";
        }
    }
}
