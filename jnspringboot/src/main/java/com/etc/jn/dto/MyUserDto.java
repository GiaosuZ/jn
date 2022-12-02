package com.etc.jn.dto;

import org.springframework.web.multipart.MultipartFile;

public class MyUserDto {
    private  String jn_username; //用户名字
    private  String jn_userpwd; // 用户密码
    private String jn_usertel;  //用户电话号码
    private String jn_useremail; //用户邮箱
    private  String jn_userstatus; //用户状态
    private  MultipartFile jn_userlogo;  //用户头像
    private  String jn_usersex;   //用户性别
    private String jn_usersignature; //个性签名

    public String getJn_username() {
        return jn_username;
    }

    public void setJn_username(String jn_username) {
        this.jn_username = jn_username;
    }

    public String getJn_userpwd() {
        return jn_userpwd;
    }

    public void setJn_userpwd(String jn_userpwd) {
        this.jn_userpwd = jn_userpwd;
    }

    public String getJn_usertel() {
        return jn_usertel;
    }

    public void setJn_usertel(String jn_usertel) {
        this.jn_usertel = jn_usertel;
    }

    public String getJn_useremail() {
        return jn_useremail;
    }

    public void setJn_useremail(String jn_useremail) {
        this.jn_useremail = jn_useremail;
    }

    public String getJn_userstatus() {
        return jn_userstatus;
    }

    public void setJn_userstatus(String jn_userstatus) {
        this.jn_userstatus = jn_userstatus;
    }

    public MultipartFile getJn_userlogo() {
        return jn_userlogo;
    }

    public void setJn_userlogo(MultipartFile jn_userlogo) {
        this.jn_userlogo = jn_userlogo;
    }

    public String getJn_usersex() {
        return jn_usersex;
    }

    public void setJn_usersex(String jn_usersex) {
        this.jn_usersex = jn_usersex;
    }

    public String getJn_usersignature() {
        return jn_usersignature;
    }

    public void setJn_usersignature(String jn_usersignature) {
        this.jn_usersignature = jn_usersignature;
    }
}
