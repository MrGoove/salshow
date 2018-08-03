package com.salshow.controller;

import com.salshow.dao.GoodsDao;
import com.salshow.entity.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsDao goodsDao;

    @RequestMapping("/goods")
    public String getGoods(Model model){
        Goods goods = goodsDao.getGoods("测试商品1");
        model.addAttribute("goods",goods);
        return "details";
    }

}
