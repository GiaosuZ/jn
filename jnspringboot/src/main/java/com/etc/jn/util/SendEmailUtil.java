package com.etc.jn.util;

import org.apache.commons.mail.HtmlEmail;

import java.util.Random;

public class SendEmailUtil {
    public int sendEmail(String emailaddress){
        try {
            Random random =new Random();
            int code=random.nextInt(9000)+1000;
            HtmlEmail email = new HtmlEmail();
            email.setHostName("smtp.qq.com");
            email.setCharset("utf-8");
            email.setAuthentication("1426682108@qq.com","uejesmdpaysvjbdf");

            email.setFrom("1426682108@qq.com","cxx");//发件人邮箱
            email.setSubject("测试邮件");
            email.setMsg("尊敬的用户你好，你本次注册的验证码是："+code);
            email.addTo(emailaddress,"测试");//收件地址
            email.send();
            return code;
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }

    }
}
