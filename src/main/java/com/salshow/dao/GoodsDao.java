package com.salshow.dao;

import com.salshow.entity.Goods;

import java.util.List;

public interface GoodsDao {
    List<Goods> getGoodsList ();
    Goods getGoods(String goods_name);
}