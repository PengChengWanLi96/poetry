package com.fpj.poetry.service.impl;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fpj.poetry.dto.WeatherDto;
import com.fpj.poetry.dto.WeatherForecastDto;
import com.fpj.poetry.service.WeatherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class WeatherServiceImpl implements WeatherService {

    private static final String GEOCODING_API = "https://geocoding-api.open-meteo.com/v1/search";
    private static final String WEATHER_API = "https://api.open-meteo.com/v1/forecast";

    private final RestTemplate restTemplate;
    private final ObjectMapper objectMapper;
    private final Map<String, String> cityCache = new HashMap<>();

    public WeatherServiceImpl() {
        SimpleClientHttpRequestFactory factory = new SimpleClientHttpRequestFactory();
        factory.setConnectTimeout(5000);
        factory.setReadTimeout(5000);
        this.restTemplate = new RestTemplate(factory);
        this.objectMapper = new ObjectMapper();
        initCityCache();
    }

    private void initCityCache() {
        cityCache.put("39.9042_116.4074", "北京");
        cityCache.put("31.2304_121.4737", "上海");
        cityCache.put("22.5431_114.0579", "深圳");
        cityCache.put("23.1291_113.2644", "广州");
        cityCache.put("30.5728_104.0668", "成都");
        cityCache.put("29.5647_106.5507", "重庆");
        cityCache.put("31.2989_121.4737", "苏州");
        cityCache.put("32.0603_118.7969", "南京");
        cityCache.put("30.2741_120.1551", "杭州");
        cityCache.put("34.3416_108.9398", "西安");
    }

    @Override
    public WeatherDto getCurrentWeather(double latitude, double longitude) {
        try {
            String url = String.format(
                "%s?latitude=%f&longitude=%f&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,weather_code,wind_speed_10m,wind_direction_10m&timezone=auto",
                WEATHER_API, latitude, longitude
            );
            
            String response = restTemplate.getForObject(url, String.class);
            JsonNode root = objectMapper.readTree(response);
            JsonNode current = root.path("current");
            
            WeatherDto weather = new WeatherDto();
            weather.setLatitude(latitude);
            weather.setLongitude(longitude);
            weather.setTemperature(current.path("temperature_2m").asDouble());
            weather.setFeelsLike(current.path("apparent_temperature").asDouble());
            weather.setHumidity(current.path("relative_humidity_2m").asInt());
            weather.setWindSpeed(current.path("wind_speed_10m").asDouble());
            weather.setDay(current.path("is_day").asInt() == 1);
            weather.setWeatherCode(current.path("weather_code").asText());
            weather.setWeatherText(getWeatherText(current.path("weather_code").asInt()));
            weather.setLocalTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm")));
            
            int windDir = current.path("wind_direction_10m").asInt();
            weather.setWindDirection(getWindDirection(windDir));
            
            weather.setCityName(getCityName(latitude, longitude));
            
            return weather;
        } catch (Exception e) {
            log.error("Failed to get current weather", e);
            return createDefaultWeather();
        }
    }

    @Override
    public List<WeatherForecastDto> getWeatherForecast(double latitude, double longitude) {
        List<WeatherForecastDto> forecasts = new ArrayList<>();
        try {
            String url = String.format(
                "%s?latitude=%f&longitude=%f&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max,wind_speed_10m_max&timezone=auto&forecast_days=15",
                WEATHER_API, latitude, longitude
            );
            
            String response = restTemplate.getForObject(url, String.class);
            JsonNode root = objectMapper.readTree(response);
            JsonNode daily = root.path("daily");
            
            JsonNode dates = daily.path("time");
            JsonNode weatherCodes = daily.path("weather_code");
            JsonNode tempMax = daily.path("temperature_2m_max");
            JsonNode tempMin = daily.path("temperature_2m_min");
            JsonNode precipitation = daily.path("precipitation_probability_max");
            JsonNode windSpeed = daily.path("wind_speed_10m_max");
            
            for (int i = 0; i < dates.size(); i++) {
                WeatherForecastDto dto = new WeatherForecastDto();
                dto.setDate(LocalDate.parse(dates.get(i).asText()));
                dto.setWeatherCode(weatherCodes.get(i).asText());
                dto.setWeatherText(getWeatherText(weatherCodes.get(i).asInt()));
                dto.setTempMax(tempMax.get(i).asDouble());
                dto.setTempMin(tempMin.get(i).asDouble());
                dto.setPrecipitationProbability(precipitation.get(i).asDouble());
                dto.setWindSpeed(windSpeed.get(i).asDouble());
                forecasts.add(dto);
            }
        } catch (Exception e) {
            log.error("Failed to get weather forecast", e);
        }
        return forecasts;
    }

    @Override
    public WeatherDto getWeatherByCity(String cityName) {
        try {
            String geoUrl = String.format("%s?name=%s&count=1&language=zh&format=json", 
                GEOCODING_API, cityName);
            
            String geoResponse = restTemplate.getForObject(geoUrl, String.class);
            JsonNode geoRoot = objectMapper.readTree(geoResponse);
            JsonNode results = geoRoot.path("results");
            
            if (results.isArray() && results.size() > 0) {
                JsonNode city = results.get(0);
                double lat = city.path("latitude").asDouble();
                double lon = city.path("longitude").asDouble();
                
                return getCurrentWeatherByCoordinates(lat, lon, city.path("name").asText(), city.path("country_code").asText());
            }
        } catch (Exception e) {
            log.error("Failed to get weather by city: {}", cityName, e);
        }
        return createDefaultWeather();
    }

    private WeatherDto getCurrentWeatherByCoordinates(double latitude, double longitude, String cityName, String countryCode) {
        try {
            String url = String.format(
                "%s?latitude=%f&longitude=%f&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,weather_code,wind_speed_10m,wind_direction_10m&timezone=auto",
                WEATHER_API, latitude, longitude
            );
            
            String response = restTemplate.getForObject(url, String.class);
            JsonNode root = objectMapper.readTree(response);
            JsonNode current = root.path("current");
            
            WeatherDto weather = new WeatherDto();
            weather.setLatitude(latitude);
            weather.setLongitude(longitude);
            weather.setCityName(cityName);
            weather.setCityCode(countryCode);
            weather.setTemperature(current.path("temperature_2m").asDouble());
            weather.setFeelsLike(current.path("apparent_temperature").asDouble());
            weather.setHumidity(current.path("relative_humidity_2m").asInt());
            weather.setWindSpeed(current.path("wind_speed_10m").asDouble());
            weather.setDay(current.path("is_day").asInt() == 1);
            weather.setWeatherCode(current.path("weather_code").asText());
            weather.setWeatherText(getWeatherText(current.path("weather_code").asInt()));
            weather.setLocalTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm")));
            
            int windDir = current.path("wind_direction_10m").asInt();
            weather.setWindDirection(getWindDirection(windDir));
            
            return weather;
        } catch (Exception e) {
            log.error("Failed to get current weather by coordinates", e);
            return createDefaultWeather();
        }
    }

    private String getCityName(double latitude, double longitude) {
        String key = String.format("%.4f_%.4f", latitude, longitude);
        
        if (cityCache.containsKey(key)) {
            return cityCache.get(key);
        }
        
        String roundedKey = String.format("%.1f_%.1f", latitude, longitude);
        for (Map.Entry<String, String> entry : cityCache.entrySet()) {
            String[] parts = entry.getKey().split("_");
            if (parts.length == 2) {
                double lat = Double.parseDouble(parts[0]);
                double lon = Double.parseDouble(parts[1]);
                if (Math.abs(lat - latitude) < 0.5 && Math.abs(lon - longitude) < 0.5) {
                    cityCache.put(roundedKey, entry.getValue());
                    return entry.getValue();
                }
            }
        }
        
        return "未知城市";
    }

    private String getWeatherText(int code) {
        return switch (code) {
            case 0 -> "晴朗";
            case 1, 2, 3 -> "多云";
            case 45, 48 -> "雾";
            case 51, 53, 55 -> "小毛毛雨";
            case 56, 57 -> "冻毛毛雨";
            case 61, 63, 65 -> "小雨";
            case 66, 67 -> "冻雨";
            case 71, 73, 75 -> "小雪";
            case 77 -> "雪粒";
            case 80, 81, 82 -> "阵雨";
            case 85, 86 -> "阵雪";
            case 95 -> "雷暴";
            case 96, 99 -> "雷暴伴冰雹";
            default -> "未知";
        };
    }

    private String getWindDirection(int degrees) {
        String[] directions = {"北", "东北", "东", "东南", "南", "西南", "西", "西北"};
        int index = (int) Math.round(degrees / 45.0) % 8;
        return directions[index] + "风";
    }

    private WeatherDto createDefaultWeather() {
        WeatherDto weather = new WeatherDto();
        weather.setCityName("未知城市");
        weather.setTemperature(0);
        weather.setWeatherText("晴朗");
        weather.setLocalTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm")));
        return weather;
    }
}
