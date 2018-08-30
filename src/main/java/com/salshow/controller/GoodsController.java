package com.salshow.controller;

import com.salshow.dao.GoodsDao;
import com.salshow.entity.Goods;
import com.salshow.service.GoodsService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/goods")
    public String getGoods(ServletRequest request, Model model){
        String goodsName = request.getParameter("goodsName");
        String id = request.getParameter("id");
        Goods goods = new Goods();
        if(goodsName !=null){
            goods.goodsname =goodsName;
        }
        if(id!=null){
            goods.id=Integer.parseInt(id);
        }
        Goods resutlGoods = goodsService.getGoods(goods);
        model.addAttribute("goods",resutlGoods);
        return "details";
    }

    @RequestMapping("/goodsList")
    public String getGoodsList(@RequestParam(value = "category",required = false) Integer category, ServletRequest request, Model model){
            String goodsName = request.getParameter("goodsName");
            Goods goods = new Goods();
            goods.goodsname = goodsName;
            goods.catogory =category==null?0:category;
            List<Goods> goodsList = goodsService.getGoodsList(goods);
            model.addAttribute("goodsList",goodsList);
            return "woman";
    }

    @RequestMapping("/addGoods")
        public String addGoods(){
        return "goodsManage";
        }

    @RequestMapping("/goodsMamage")
    public String goodsManage(HttpServletRequest request) throws IllegalStateException,IOException{
        Goods goods = new Goods();
        goods.goodsname = request.getParameter("goods_name");
        goods.descriptionbrief = request.getParameter("desc_brief");
        goods.descriptiondetails =request.getParameter("desc_details");
        goods.price =Integer.parseInt(request.getParameter("price"));
        goods.sizes = request.getParameter("size");
        goods.catogory =Integer.parseInt(request.getParameter("goods_type"));
        goodsService.saveGoods(goods,request);
        return "goodsManage";
    }

    @RequestMapping("/buy")
    public String buy(HttpServletRequest request,Model model){
        String id = request.getParameter("id");
        if(id!=null&&id!="") {
            Goods goods = new Goods();
            goods.id = Integer.parseInt(id);
            Goods resultGoods = goodsService.getGoods(goods);
            if (resultGoods != null) {
                model.addAttribute("goods", resultGoods);
                return "buy";
            }
        }
        return "index";
    }

    @RequestMapping("/ConfirmBuy")
    public String confirmBuy(){

        return "orderSuccess";
    }

}
