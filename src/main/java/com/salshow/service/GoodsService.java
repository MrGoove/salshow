package com.salshow.service;

import com.salshow.entity.Goods;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

public interface GoodsService {
    List<Goods> getGoodsList(Goods goods);
    Goods getGoods(String goods_name);
    int saveGoods(Goods goods, HttpServletRequest request) throws IOException;
}
