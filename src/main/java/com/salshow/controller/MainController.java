package com.salshow.controller;

import com.salshow.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/{formName}")
    public String main(@PathVariable String formName){
        return formName;
    }

    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
