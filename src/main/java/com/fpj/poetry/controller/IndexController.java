package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.TimeCost;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.concurrent.TimeUnit;

@Controller
public class IndexController {

    @TimeCost(value = "首页跳转", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/")
    public String index() {
        return "forward:/index.html";
    }
}
