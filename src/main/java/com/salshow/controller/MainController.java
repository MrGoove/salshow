package com.salshow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping(value = "/{formName}")
    public String main(@PathVariable String formName){
        return formName;
    }


    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
