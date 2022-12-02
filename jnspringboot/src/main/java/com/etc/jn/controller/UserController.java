package com.etc.jn.controller;

import com.etc.jn.dto.*;
import com.etc.jn.dto.FansCount;
import com.etc.jn.dto.MyMessage;
import com.etc.jn.dto.MyUserDto;
import com.etc.jn.dto.UserDto;
import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;
import com.etc.jn.service.UserService;
import com.etc.jn.util.SendEmailUtil;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

    @RequestMapping("/Login")
    public void Login(String your_name, String your_password, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception
    {
       User user=service.checkLogin(your_name,your_password);
       response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if (user!=null)
        {
            session.setAttribute("myuser",user);
            User user1= (User) session.getAttribute("myuser");
            Integer jn_userid=user1.getJn_userid();
            FansCount fansnumber1=service.getFansNumberByUserid(jn_userid);
            session.setAttribute("fansnumber1",fansnumber1.getFansnumber());
            FansCount collectionnumber1=service.getCollectionNumberByUserid(jn_userid);
            session.setAttribute("collectionnumber1",collectionnumber1.getFansnumber());
            FansCount historynumber1=service.getHistoryNumberByUserid(jn_userid);
            session.setAttribute("historynumber1",historynumber1.getFansnumber());
            FansCount concernnumber1=service.getConcernNumberByUserid(jn_userid);
            session.setAttribute("concernnumber1",concernnumber1.getFansnumber());
        out.print("<script>alert('登录成功');location.href='index.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('登录失败');history.go(-1);</script>");
        }
            out.flush();
            out.close();

    }
    @RequestMapping("/validationEmail")
    @ResponseBody
    public MyMessage validationEmail(HttpServletRequest request) throws Exception {
        String sendResult = "";
        MyMessage myMessage = new MyMessage();
        String email = request.getParameter("email");
        boolean flag = service.queryEmmailByEmail(email);
        if (flag) {
            if (email != null && !"".equals(email)) {
                SendEmailUtil sendEmailUtil = new SendEmailUtil();
                int code = sendEmailUtil.sendEmail(email);
                System.out.println("验证码是：" + code);
                if (code != 0) {
                    request.getSession().setAttribute("code", code);
                    request.getSession().setAttribute("firstemail", email);
                    sendResult = "验证码已发送";
                    myMessage.setData(sendResult);
                    return myMessage;
                } else {
                    sendResult = "发送验证码失败";
                    myMessage.setData(sendResult);
                    return myMessage;
                }
            } else {
                sendResult = "请输入正确的邮箱地址";
                myMessage.setData(sendResult);
                return myMessage;
            }

        } else {
            myMessage.setData("该邮箱已注册！");
            return myMessage;
        }
    }
    @RequestMapping("/addUser")
    public void addUser(UserDto userDto, HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter pw=response.getWriter();
        int code = (int) request.getSession().getAttribute("code");
        String firstemail = (String) request.getSession().getAttribute("firstemail");
        System.out.println("注册的地方注册的地方注册的地方注册的地方注册的地方注册的地方注册的地方");
        if (code==userDto.getCode()&&firstemail.equals(userDto.getJn_email())){
            User user=new User();
            user.setJn_username(userDto.getJn_username());
            user.setJn_userpwd(userDto.getJn_userpwd());
            user.setJn_useremail(userDto.getJn_email());
            user.setJn_usersex(userDto.getJn_usersex());
            service.addUser(user);

            pw.print("<script>alert('注册成功');location.href='login.jsp';</script>");
        }else{
            pw.print("<script>alert('验证码错误');location.href='register.jsp';</script>");
        }
        pw.flush();
        pw.close();
    }

    @RequestMapping("/checkpersonal")
    @ResponseBody
    public MyMessage checkpersonal(Integer jn_userid,Integer page,Integer size)
    {
        MyMessage mm=new MyMessage();
        List<Post> a1= service.queryPostByUserid(jn_userid,(page-1)*size,size);
        if (a1.size()>0){
            mm.setData(a1);
            return mm;
        }
        return null;
    }

    @RequestMapping("/checkpersonal2")
    @ResponseBody
    public MyMessage checkpersonal2(Integer jn_userid)
    {
        MyMessage mm2=new MyMessage();
        List<Post> a2= service.getPostByUserid2(jn_userid);
        if (a2.size()>0){
            mm2.setData(a2);
            return mm2;
        }
        return null;
    }
    @RequestMapping("/checkpersonal0")
    @ResponseBody
    public MyMessage checkpersonal0(Integer jn_userid,Integer page,Integer size)
    {
        MyMessage mm=new MyMessage();
        List<CollectionDto> a1= service.queryCollectionidByUserid(jn_userid,(page-1)*size,size);
        if (a1.size()>0){
            mm.setData(a1);
            return mm;
        }
        return null;
    }
    @RequestMapping("/checkpersona20")
    @ResponseBody
    public MyMessage checkpersona20(Integer jn_userid,Integer page,Integer size)
    {
        MyMessage mm=new MyMessage();
        List<HistoryDto> a1= service.queryHistoryByUserid(jn_userid,(page-1)*size,size);
        if (a1.size()>0){
            mm.setData(a1);
            return mm;
        }
        return null;
    }
    @RequestMapping("/checkpersona30")
    @ResponseBody
    public MyMessage checkpersona30(Integer jn_userid,Integer page,Integer size)
    {
        MyMessage mm=new MyMessage();
        List<FollowDto> a1= service.queryFollowDtoByUserid(jn_userid,(page-1)*size,size);
        if (a1.size()>0){
            mm.setData(a1);
            return mm;
        }
        return null;
    }
    @RequestMapping("/checkpersonal3")
    public String checkpersonal3( HttpSession session)
    {
        User user1= (User) session.getAttribute("myuser");
        Integer jn_userid=user1.getJn_userid();
        FansCount fansnumber1=service.getFansNumberByUserid(jn_userid);
        session.setAttribute("fansnumber1",fansnumber1.getFansnumber());
        FansCount collectionnumber1=service.getCollectionNumberByUserid(jn_userid);
        session.setAttribute("collectionnumber1",collectionnumber1.getFansnumber());
        FansCount historynumber1=service.getHistoryNumberByUserid(jn_userid);
        session.setAttribute("historynumber1",historynumber1.getFansnumber());
        FansCount concernnumber1=service.getConcernNumberByUserid(jn_userid);
        session.setAttribute("concernnumber1",concernnumber1.getFansnumber());
        return "personal";
    }

    @RequestMapping("/saveUser")
    public void saveUser(MyUserDto dto, HttpServletResponse response, HttpServletRequest request) throws Exception{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        //获取当前服务器所在的磁盘地址
        String path=  request.getServletContext().getRealPath("/upload");
        System.out.println("上传的地址path:"+path);
        //判断当前文件夹是否存在,不存在则创建
        File file =new File(path);
        if(!file.exists()){
            file.mkdirs();
        }

        //从会话中获取当前用户
        User user1= (User) request.getSession().getAttribute("myuser");

        String filename=null;
        if(dto.getJn_userlogo().getOriginalFilename().equals("")){
            filename= user1.getJn_userlogo();
        }else{
            //获取当前上传的文件名
            filename=dto.getJn_userlogo().getOriginalFilename();
            // 对该文件进行重命名   当前系统时间毫秒数+原文件名
            filename=System.currentTimeMillis()+"-"+filename;
            //获取要上传的文件的路径对象
            File file2=new File(path+"/"+filename);

            try{
                FileUtils.copyInputStreamToFile(dto.getJn_userlogo().getInputStream(),file2);
                System.out.println("文件上传成功！！！");
            }catch (Exception e){
                e.printStackTrace();
                out.print("<script>alert('保存失败，发生了异常');history.go(-1);</script>");
            }
        }

        try{
            user1.setJn_useremail(dto.getJn_useremail());
            user1.setJn_userlogo(filename);
            user1.setJn_userpwd(dto.getJn_userpwd());
            user1.setJn_usersex(dto.getJn_usersex());
            user1.setJn_usersignature(dto.getJn_usersignature());
            //调用保存用户的业务逻辑
            if(service.updateUser(user1) ){
                //重新设置session用户
                request.getSession().setAttribute("myuser",user1);
                out.print("<script>alert('保存成功');location.href='personal.jsp';</script>");
            }
            else{
                out.print("<script>alert('保存失败');history.go(-1);</script>");
            }
        }catch (Exception e){
            e.printStackTrace();
            out.print("<script>alert('保存失败，发生了异常');history.go(-1);</script>");
        }
        out.flush();
        out.close();


    }
    @RequestMapping("cancellationuser")
    public void cancellationUser(HttpServletRequest request,HttpServletResponse response) throws  Exception{
        HttpSession session=request.getSession();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out =response.getWriter();
        ServletContext applicaiton=  session.getServletContext();
        session.removeAttribute("myuser");
//        out.print("<script>alert(111111111);</script>");
        out.print("<script>alert('注销成功');location.href='index.jsp';</script>");
       //out.print("<script>location.href=index.jsp;</script>");
        out.flush();
        out.close();
    }

}
