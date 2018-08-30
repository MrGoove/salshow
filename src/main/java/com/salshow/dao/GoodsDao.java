package com.salshow.dao;

import com.salshow.entity.Goods;

import java.util.List;

public interface GoodsDao {
    List<Goods> getGoodsList (Goods goods);
    Goods getGoods(Goods goods);
    int SaveGoods(Goods goods);
    int updateGoods(Goods goods);
}
