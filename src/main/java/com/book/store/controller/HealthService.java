package com.book.store.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthService {

    @RequestMapping("/status")
    public String index() {
        return "Status is green!Service is up";
    }
}
