package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.TimeCost;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.dto.WeatherDto;
import com.fpj.poetry.dto.WeatherForecastDto;
import com.fpj.poetry.service.WeatherService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.List;
import java.util.concurrent.TimeUnit;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/weather")
@Tag(name = "天气查询", description = "天气相关接口")
@RequiredArgsConstructor
@Slf4j
public class WeatherController {

    private final WeatherService weatherService;

    @TimeCost(value = "获取当前天气", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/current")
    @Operation(summary = "获取当前天气")
    public Result<WeatherDto> getCurrentWeather(
            @RequestParam(required = false) Double lat,
            @RequestParam(required = false) Double lon,
            @RequestParam(required = false) String city) {
        log.info("获取当前天气, 城市: {}， 纬度：{}， 经度：{}", city, lat, lon);

        WeatherDto weather;
        if (city != null && !city.isEmpty()) {
            weather = weatherService.getWeatherByCity(city);
        } else if (lat != null && lon != null) {
            weather = weatherService.getCurrentWeather(lat, lon);
        } else {
            weather = weatherService.getCurrentWeather(22.5431, 114.0579);
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
        log.info("获取天气预报, 城市: {}， 纬度：{}， 经度：{}", city, lat, lon);

        List<WeatherForecastDto> forecasts;
        if (city != null && !city.isEmpty()) {
            WeatherDto weatherDto = weatherService.getWeatherByCity(city);
            forecasts = weatherService.getWeatherForecast(weatherDto.getLatitude(), weatherDto.getLongitude());
        } else if (lat != null && lon != null) {
            forecasts = weatherService.getWeatherForecast(lat, lon);
        } else {
            forecasts = weatherService.getWeatherForecast(22.5431, 114.0579);
        }
        return Result.success(forecasts);
    }
}
