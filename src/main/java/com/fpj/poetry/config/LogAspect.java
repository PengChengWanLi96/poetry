package com.fpj.poetry.config;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.annotation.TimeCost;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

/**
 * @author fangpengjun
 * @date 2026/3/2
 */
@Aspect
@Component
@Slf4j
public class LogAspect {
    /**
     * 审计日志切面
     */
    @Around("@annotation(auditLog)")
    public Object auditLogAround(ProceedingJoinPoint joinPoint, AuditLog auditLog) throws Throwable {
        // 获取方法信息
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        String methodName = signature.getMethod().getName();
        String className = joinPoint.getTarget().getClass().getSimpleName();

        // 获取请求参数
        Object[] args = joinPoint.getArgs();
        String params = Arrays.toString(args);

        // 执行前记录
//        log.info("【审计日志】开始 - 模块: {}, 操作: {}, 方法: {}.{}, 参数: {}",
//                auditLog.module(), auditLog.operation(), className, methodName, params);

        try {
            // 执行原方法
            Object result = joinPoint.proceed();

            // 执行后记录
            log.info("【审计日志】成功 - 模块: {}, 操作: {}, 方法: {}.{}",
                    auditLog.module(), auditLog.operation(), className, methodName);

            return result;

        } catch (Exception e) {
            // 异常记录
            log.error("【审计日志】失败 - 模块: {}, 操作: {}, 方法: {}.{}, 异常: {}",
                    auditLog.module(), auditLog.operation(), className, methodName, e.getMessage());
            throw e;
        }
    }
}
