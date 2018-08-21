package com.salshow;

import com.salshow.dao.GoodsDao;
import com.salshow.dao.UserDao;
import com.salshow.entity.Goods;
import com.salshow.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;

public class test extends BaseTest {

    @Autowired
    private UserDao userDao;

    @Autowired
    private GoodsDao goodsDao;

    @Test
    public void testQueryUser() throws Exception{
        String Email ="sphinx@hotmail.com";
        User user  = userDao.queryUser(Email);
        System.out.println(user);
    }

    @Test
    public void testQueryGoods() throws  Exception{
        String goods_name = "9000";
        Goods goods = goodsDao.getGoods(goods_name);
        System.out.println(goods);
    }


    @Test
    public  void test(){

    }

}
