package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.annotation.TimeCost;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.dto.WeatherDto;
import com.fpj.poetry.dto.WeatherForecastDto;
import com.fpj.poetry.service.WeatherService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/api/weather")
@Tag(name = "天气查询", description = "天气相关接口")
@RequiredArgsConstructor
public class WeatherController {

    private final WeatherService weatherService;

    @TimeCost(value = "获取当前天气", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/current")
    @Operation(summary = "获取当前天气")
    public Result<WeatherDto> getCurrentWeather(
            @RequestParam(required = false) Double lat,
            @RequestParam(required = false) Double lon,
            @RequestParam(required = false) String city) {
        
        WeatherDto weather;
        if (city != null && !city.isEmpty()) {
            weather = weatherService.getWeatherByCity(city);
        } else if (lat != null && lon != null) {
            weather = weatherService.getCurrentWeather(lat, lon);
        } else {
            weather = weatherService.getCurrentWeather(39.9042, 116.4074);
        }
        return Result.success(weather);
    }

    @TimeCost(value = "获取天气预报", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/forecast")
    @Operation(summary = "获取天气预报")
    public Result<List<WeatherForecastDto>> getWeatherForecast(
            @RequestParam(required = false) Double lat,
            @RequestParam(required = false) Double lon,
            @RequestParam(required = false) String city) {
        
        List<WeatherForecastDto> forecasts;
        if (city != null && !city.isEmpty()) {
            WeatherDto weatherDto = weatherService.getWeatherByCity(city);
            forecasts = weatherService.getWeatherForecast(weatherDto.getLatitude(), weatherDto.getLongitude());
        } else if (lat != null && lon != null) {
            forecasts = weatherService.getWeatherForecast(lat, lon);
        } else {
            forecasts = weatherService.getWeatherForecast(39.9042, 116.4074);
        }
        return Result.success(forecasts);
    }
}
