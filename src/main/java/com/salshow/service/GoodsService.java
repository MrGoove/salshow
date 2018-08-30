package com.salshow.service;

import com.salshow.entity.Goods;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

public interface GoodsService {
    List<Goods> getGoodsList(Goods goods);
    Goods getGoods(Goods goods);
    int saveGoods(Goods goods, HttpServletRequest request) throws IOException;
}
