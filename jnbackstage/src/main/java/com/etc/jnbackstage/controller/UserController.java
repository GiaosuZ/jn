package com.etc.jnbackstage.controller;

import com.etc.jnbackstage.dto.*;
import com.etc.jnbackstage.entity.User;
import com.etc.jnbackstage.entity.Users;
import com.etc.jnbackstage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.lang.annotation.ElementType;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService service;

    public UserService getService() {
        return service;
    }

    public void setService(UserService service) {
        this.service = service;
    }

    @RequestMapping("/login")
    public void Login(String jn_managename, String jn_managepwd, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception
    {
       User user=service.checkLogin(jn_managename,jn_managepwd);
       response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if (user!=null)
        {
        out.print("<script>alert('登录成功');location.href='chart.jsp';</script>");
        session.setAttribute("loginuser",user);
        }
        else
        {
            out.print("<script>alert('登录失败');history.go(-1);</script>");
        }
            out.flush();
            out.close();

    }
    @RequestMapping("/userinfo")
    @ResponseBody
    public MyMessage userinfo(HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception{
        MyMessage my = new MyMessage();
        UserMessageDto umd = new UserMessageDto();
        try {
            List<Users> list = service.queryUserByUserstatus();
            if(list == null && list.size() == 0){
                my.setFlag(0);//没有数据
            }else {
                my.setFlag(1);//成功获取数据
                umd.setList(list);
                my.setData(umd);
            }
        }catch (Exception e){
            my.setFlag(2);//异常
        }
        return my;
    }
    @RequestMapping("deletuser")
    public void deletuser(Integer userid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updateUsersByuserid(userid)){
            //转发
            request.getRequestDispatcher("table-images-list.jsp").forward(request, response);
        }else {
            out.print("<script>alert('删除异常');</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("updateuser")
    public void updateuser(Integer userid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updateUsersOpenByuserid(userid)){
            //转发
            request.getRequestDispatcher("table-images-list.jsp").forward(request, response);
        }else {
            out.print("<script>alert('解封异常');</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("/manageinfo")
    @ResponseBody
    public MyMessage manageinfo(HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception{
        MyMessage my = new MyMessage();
        ManageMessageDto mmd = new ManageMessageDto();
        try {
            List<User> list = service.queryUserByManage();
            if(list == null && list.size() == 0){
                my.setFlag(0);//没有数据
            }else {
                my.setFlag(1);//成功获取数据
                mmd.setList(list);
                my.setData(mmd);
            }
        }catch (Exception e){
            my.setFlag(2);//异常
        }
        return my;
    }
    @RequestMapping("updatemanagedown")
    public void updatemanagedown(Integer userid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updateMannageDownById(userid)){
            //转发
            request.getRequestDispatcher("form-news.jsp").forward(request, response);
        }else {
            out.print("<script>alert('升级异常');</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("updateuserup")
    public void updateuserup(Integer userid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updateMannageUpById(userid)){
            //转发
            request.getRequestDispatcher("form-news.jsp").forward(request, response);
        }else {
            out.print("<script>alert('降级异常');</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("deletmanage")
    public void deletmanage(Integer userid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(service.updateMannageDeletById(userid)){
            //转发
            request.getRequestDispatcher("form-news.jsp").forward(request, response);
        }else {
            out.print("<script>alert('删除异常');</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("manageout")
    public void manageout(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        session.invalidate();
        out.print("<script>alert('用户已注销！');location.href='login.jsp';</script>");
        out.flush();
        out.close();
    }
    @RequestMapping("/newmanage")
    public void newmanage(String managename,String managepwd,String email,String telephone,String sex,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        User user = new User();
        user.setJn_managename(managename);
        user.setJn_managepwd(managepwd);
        user.setJn_manageeamil(email);
        user.setJn_managetel(telephone);
        user.setJn_managesex(sex);
        if(service.insertNewManage(user)) {
            out.print("<script>alert('用户添加成功！');location.href='form-news.jsp';</script>");
        }else {
        out.print("<script>alert('用户添加失败！');history.back();</script>");
        }
        out.flush();
        out.close();
    }
    @RequestMapping("/querymanage")
    public String querymanage(Integer manageid,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        User user = service.queryManageById(manageid);
        request.setAttribute("manageinfo",user);
        return "updatemanage";
    }
    @RequestMapping("/updatemanage")
    public String updatemanage(Integer id,String managename,String managepwd,String email,String telephone,String sex,HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        User user = new User();
        user.setJn_managename(managename);
        user.setJn_managepwd(managepwd);
        user.setJn_manageeamil(email);
        user.setJn_managetel(telephone);
        user.setJn_managesex(sex);
        user.setJn_manageid(id);
        if(service.updateMannageById(user)) {
            out.print("<script>alert('修改成功！');location.href='form-news.jsp';</script>");
        }else {
            out.print("<script>alert('修改失败！');history.back();</script>");
        }
        out.flush();
        out.close();
        return "form-news";
    }
}
