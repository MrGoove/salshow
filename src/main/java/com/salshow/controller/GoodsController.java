package com.salshow.controller;

import com.salshow.dao.GoodsDao;
import com.salshow.entity.Goods;
import com.salshow.service.GoodsService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/goods")
    public String getGoods(ServletRequest request, Model model){
        String goodsName = request.getParameter("goodsName");
        Goods goods = goodsService.getGoods(goodsName);
        model.addAttribute("goods",goods);
        return "details";
    }

    @RequestMapping("/goodsList")
    public String getGoodsList(Model model){
        List<Goods> goodsList = goodsService.getGoodsList();
        goodsList.remove(1);
        model.addAttribute("goodsList",goodsList);
        return "woman";
    }

}
