package com.salshow.controller;

import com.mysql.cj.Session;
import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import com.salshow.service.UserService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/User")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(ServletRequest httpRequest, ServletResponse httpresponse,HttpSession httpSession){
        String email = httpRequest.getParameter("email2");
        String password = httpRequest.getParameter("password");
        User user = userService.login(email,password);
        if(user != null){
            httpSession.setAttribute("UserName",user.FName+user.LName);
            return "index";
        }else{
            return "loginError";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.removeAttribute("UserName");
        return "index";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    public String regist(ServletRequest request,HttpSession httpSession){
        User user = new User();
        user.FName = request.getParameter("FName");
        user.LName = request.getParameter("LName");
        user.Email = request.getParameter("Email");
        user.password = request.getParameter("password");
        user.address = request.getParameter("Address");
        user.buyamount =0;
        userService.SaveUser(user);
        httpSession.setAttribute("UserName",user.FName+user.LName);
        return "index";
    }
}
