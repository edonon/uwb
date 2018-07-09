package com.wch.uwb.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class BaseErrorPage implements ErrorController {

    @Override
    public String getErrorPath() {
        return "linkERR";
    }

    @RequestMapping
    public String error() {
        return getErrorPath();
    }

}