package com.salshow.dao;

import com.salshow.entity.User;

public interface UserDao {
    User queryUser(String Email);
}
