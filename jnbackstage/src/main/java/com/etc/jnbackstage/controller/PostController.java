package com.etc.jnbackstage.controller;

import com.etc.jnbackstage.dto.*;
import com.etc.jnbackstage.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PostController {
    @Autowired
    private PostService service;

    public PostService getService() {
        return service;
    }

    public void setService(PostService service) {
        this.service = service;
    }
    @RequestMapping("/chart")
    @ResponseBody
    public MyMessage chart(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        MyMessage my=new MyMessage();
        EcharsMessageDto emddto = new EcharsMessageDto();
        try {
            List<EcharsDto> list = service.queryecharsDateandecharsCount();
            if(list == null && list.size() == 0){
                my.setFlag(0);//没有数据
            }else {
                my.setFlag(1);//成功获取数据
                emddto.setList(list);
                my.setData(emddto);
            }
        }catch (Exception e){
            my.setFlag(2);//异常
        }
        return my;
    }
    @RequestMapping("/font")
    @ResponseBody
    public MyMessage font(PostDto postDto,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        MyMessage my = new MyMessage();
        PostMessageDto pmd = new PostMessageDto();
        List<PostDto> list = new ArrayList<>();
        try {
            list = service.queryPostInfo(postDto);
            if(list == null && list.size() == 0){
                my.setFlag(0);//没有数据
            }else {
                my.setFlag(1);//成功获取数据
                pmd.setList(list);
                my.setData(pmd);
            }
        }catch (Exception e){
            my.setFlag(2);//异常
        }
        return my;
    }
    @RequestMapping("deletpost")
    public void deletpost(Integer postid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updatePostByPostid(postid)){
            //转发 - 这些是测试，不要学
            request.getRequestDispatcher("table-font-list.jsp").forward(request, response);
            out.print("<script>alert('删除成功');history.back();</script>");
        }else {
            out.print("<script>alert('删除异常');history.back();</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("updatepost")
    public void updatepost(Integer postid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updatePostOpenByPostid(postid)){
            //转发
            request.getRequestDispatcher("table-font-list.jsp").forward(request, response);
            out.print("<script>alert('删除成功');history.back();</script>");
        }else {
            out.print("<script>alert('删除异常');history.back();</script>");
        }
        out.flush();
        out.close();
    }
}
