package com.ps.helloworld.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * Created by pavlo.shtefanesku on 5/27/2016.
 */

@Service
public class HelloWorldService {

    private final Logger logger = LoggerFactory.getLogger(HelloWorldService.class);

    public String getTitle(String name) {
        logger.debug("getTitle() is executed");
        if(StringUtils.isEmpty(name)) {
            return "Greetings Master.";
        }
        return "Hello " + name;
    }

    public String getDesc() {
        logger.debug("getDesc() is executed");
        return "User";
    }
}
