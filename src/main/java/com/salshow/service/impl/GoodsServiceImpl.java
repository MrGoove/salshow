package com.salshow.service.impl;

import com.salshow.dao.GoodsDao;
import com.salshow.entity.Goods;
import com.salshow.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDao;

    @Override
    public List<Goods> getGoodsList(Goods goods) {
        return goodsDao.getGoodsList(goods);
    }

    @Override
    public Goods getGoods(String goods_name) {
        return goodsDao.getGoods(goods_name);
    }

    @Override
    public int saveGoods(Goods goods, HttpServletRequest request) throws IOException {

        String FilePath = null;

        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());

        if(commonsMultipartResolver.isMultipart(request)){
            MultipartHttpServletRequest multiRequest =  (MultipartHttpServletRequest) request;
            Iterator iter = multiRequest.getFileNames();
            while(iter.hasNext()){
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if(file != null){
                    FilePath = "/resources/images/goods/9000/" +file.getOriginalFilename();

                    file.transferTo(new File("C:\\Users\\sphinx12252\\Documents\\GitHub\\salshow\\src\\main\\webapp\\"+FilePath));
                }
            }
        }

        goods.photomain =FilePath;

        return goodsDao.SaveGoods(goods);
    }
}
