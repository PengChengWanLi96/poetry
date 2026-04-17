package com.fpj.poetry.service;

import com.fpj.poetry.dto.WeatherDto;
import com.fpj.poetry.dto.WeatherForecastDto;

import java.util.List;

public interface WeatherService {

    WeatherDto getCurrentWeather(double latitude, double longitude);

    List<WeatherForecastDto> getWeatherForecast(double latitude, double longitude);

    WeatherDto getWeatherByCity(String cityName);
}
