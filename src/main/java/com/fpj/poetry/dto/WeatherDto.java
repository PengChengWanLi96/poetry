package com.fpj.poetry.dto;

import lombok.Data;

@Data
public class WeatherDto {
    private String cityName;
    private String cityCode;
    private double latitude;
    private double longitude;
    private double temperature;
    private double feelsLike;
    private int humidity;
    private double windSpeed;
    private String windDirection;
    private String weatherCode;
    private String weatherText;
    private boolean day;
    private String localTime;
    
    public boolean isDay() {
        return day;
    }
    
    public void setDay(boolean day) {
        this.day = day;
    }
}
