package com.salshow.service.impl;

import com.salshow.dao.GoodsDao;
import com.salshow.entity.Goods;
import com.salshow.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDao;

    @Override
    public List<Goods> getGoodsList() {
        return goodsDao.getGoodsList();
    }

    @Override
    public Goods getGoods(String goods_name) {
        return goodsDao.getGoods(goods_name);
    }
}