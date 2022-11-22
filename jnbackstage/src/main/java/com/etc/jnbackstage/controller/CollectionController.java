package com.etc.jnbackstage.controller;

import com.etc.jnbackstage.dto.CollectionDto;
import com.etc.jnbackstage.dto.CollectionMessageDto;
import com.etc.jnbackstage.dto.MyMessage;
import com.etc.jnbackstage.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CollectionController {
    @Autowired
    private CollectionService collectionService;

    public CollectionService getCollectionService() {
        return collectionService;
    }

    public void setCollectionService(CollectionService collectionService) {
        this.collectionService = collectionService;
    }

    @RequestMapping("/dynamic")
    @ResponseBody
    public MyMessage dynamic(Integer page,Integer size,Integer jn_userid, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception{
        //获取page size
        if (request.getParameter("page") != null){
            try {
                page = Integer.valueOf(request.getParameter("page"));
            }catch (Exception e){
                e.printStackTrace();
                System.err.println("page获参Erro");
            }
        }
        if (request.getParameter("size") != null){
            try {
                size = Integer.valueOf(request.getParameter("size"));
            }catch (Exception e){
                e.printStackTrace();
                System.err.println("size获参Erro");
            }
        }
        //对分页数据进行容错
        if(size==null||size<=0){
            size=9;
        }
        if(page==null||page<=0){
            page=1;
        }
        //获取最大页数
        //就要先获取总条数
        Integer all= collectionService.queryCollectionCount(jn_userid);
        //求符合条件的最大页数
        Integer maxPage=(all%size==0?(all/size):(all/size+1));
        //对当前页数上下限容错
        page=page>maxPage?maxPage:page;
        page=page<=0?1:page;
        //设置每页显式条数，从哪条数据开始取
        List<CollectionDto> list = collectionService.queryUserCollectionByUseridandPagSize(jn_userid,page,size);
        MyMessage my=new MyMessage();
        CollectionMessageDto cmdto=new CollectionMessageDto();
        cmdto.setList(list);
        cmdto.setMaxPage(maxPage);
        cmdto.setPage(page);
        cmdto.setSize(size);
        my.setData(cmdto);
        return my;
    }
}
