package com.salshow.controller;

import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

@Controller
@RequestMapping("/login")
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(ServletRequest httpRequest, ServletResponse httpresponse){
        String email = httpRequest.getParameter("email2");
        String password = httpRequest.getParameter("password");
        User user = userDao.queryUser(email);
        if(user != null){

            if(!user.password.equals(password)){
                return "mainPage";
            }
            else{
                return "woman";
            }
        }
        else{
            return "details";
        }
    }


}
