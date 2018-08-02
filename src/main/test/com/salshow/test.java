package com.salshow;

import com.salshow.dao.UserDao;
import com.salshow.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class test extends BaseTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void testQueryUser() throws Exception{
        String Email ="sphinx@hotmail.com";
        User user  = userDao.queryUser(Email);
        System.out.println(user);
    }
}
