package com.salshow.controller;

import com.mysql.cj.Session;
import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import com.salshow.service.UserService;
import com.salshow.service.impl.UserServiceImpl;
import com.sun.deploy.net.HttpResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/User")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("email2") String email2,@RequestParam("password") String password, ServletRequest httpRequest, HttpServletResponse ServletResponse, HttpSession httpSession) throws ServletException,IOException{

        Subject currentUser = SecurityUtils.getSubject();

        if(currentUser.isAuthenticated() ==false){
            UsernamePasswordToken token = new UsernamePasswordToken(email2,password);
            try{
                currentUser.login(token);
                httpSession.setAttribute("userName", token.getUsername());
                return "index";
            }catch (Exception e){
                e.printStackTrace();
                return "loginError";
            }
        }
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.removeAttribute("User");
        return "index";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    public String regist(ServletRequest request,HttpSession httpSession){
        User user = new User();
        user.FName = request.getParameter("FName");
        user.LName = request.getParameter("LName");
        user.Email = request.getParameter("Email");
        user.password= new SimpleHash("MD5",request.getParameter("password"),null,1024).toString();
        user.address = request.getParameter("Address");
        user.buyamount =0;
        user.authorize="user";
        userService.SaveUser(user);
        httpSession.setAttribute("userName",user.Email);
        return "index";
    }


    //管理人员注册---不对外开放

    @RequestMapping("/registerManage")
    public void  addManager(){
        User user = new User();
        user.FName = "郭怀想";
        user.LName = "老六";
        user.Email = "22345@hotmail.com";
        user.password= new SimpleHash("MD5","lch881607",null,1024).toString();
        user.address ="大河";
        user.buyamount =45;
        user.authorize ="admin";
        userService.SaveUser(user);
    }
}
