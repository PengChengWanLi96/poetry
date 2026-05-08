package com.fpj.poetry.dto;

import lombok.Builder;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.util.Map;

@Data
@Builder
public class HealthCheckResult implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    private String status;
    private Map<String, Object> details;
}
