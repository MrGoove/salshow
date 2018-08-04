package com.salshow.service;

import com.salshow.entity.User;

public interface UserService {
    User login(String Email,String password);
    int SaveUser(User user);
}
