package com.salshow.service;

import com.salshow.entity.Goods;

import java.util.List;

public interface GoodsService {
    List<Goods> getGoodsList();
    Goods getGoods(String goods_name);
}