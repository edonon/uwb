package com.wch.uwb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/error")
public class BaseErrorPage implements ErrorController {

    @Override
    public String getErrorPath() {
        logger.info("pageERRRedirectt");
        return "linkERR";
    }

    @RequestMapping
    public String error() {
        return getErrorPath();
    }
    private  final Logger logger = LoggerFactory.getLogger(this.getClass());
}