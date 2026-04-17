package com.fpj.poetry.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class WeatherForecastDto {
    private LocalDate date;
    private double tempMax;
    private double tempMin;
    private int humidity;
    private double windSpeed;
    private String weatherCode;
    private String weatherText;
    private double precipitationProbability;
}
