package com.salshow.service.impl;

import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import com.salshow.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login(String Email,String password) {
         User user = userDao.queryUser(Email);
         if(user!=null && password.equals(user.password)){
             return user;
         }else{
            return null;
         }
    }

    @Override
    public int SaveUser(User user) {
        return userDao.SaveUser(user);
    }


}
