package com.etc.jn.dto;

import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;

import java.util.Date;

public class CollectionDto {
    private Integer jn_postid; //帖子id
    private String jn_posttitle; //帖子标题
    private String jn_postcontent; //帖子内容
    private User jn_userid; // 外键用户id
    private String jn_poststatus; //帖子状态
    private String  jn_posttime; // 帖子的发布时间
    private Integer jn_likes; //点赞数
    private Integer jn_collection; //收藏数
    private String jn_logo; //封面图片
    private Integer jn_views; //浏览量
    private Integer jn_heat; //热度
    private  Integer jn_collectionid; //帖子收藏id
    private Post postid; //外键帖子id
    private  String jn_username; //用户名字
    private  String jn_userpwd; // 用户密码
    private String jn_usertel;  //用户电话号码
    private String jn_useremail; //用户邮箱
    private  String jn_userstatus; //用户状态
    private  String jn_userlogo;  //用户头像
    private  String jn_usersex;   //用户性别
    private String jn_usersigature; //个性签名
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

    public String getJn_userlogo() {
        return jn_userlogo;
    }

    public void setJn_userlogo(String jn_userlogo) {
        this.jn_userlogo = jn_userlogo;
    }

    public String getJn_usersex() {
        return jn_usersex;
    }

    public void setJn_usersex(String jn_usersex) {
        this.jn_usersex = jn_usersex;
    }

    public String getJn_usersigature() {
        return jn_usersigature;
    }

    public void setJn_usersigature(String jn_usersigature) {
        this.jn_usersigature = jn_usersigature;
    }

    public Integer getJn_postid() {
        return jn_postid;
    }

    public void setJn_postid(Integer jn_postid) {
        this.jn_postid = jn_postid;
    }

    public String getJn_posttitle() {
        return jn_posttitle;
    }

    public void setJn_posttitle(String jn_posttitle) {
        this.jn_posttitle = jn_posttitle;
    }

    public String getJn_postcontent() {
        return jn_postcontent;
    }

    public void setJn_postcontent(String jn_postcontent) {
        this.jn_postcontent = jn_postcontent;
    }

    public User getJn_userid() {
        return jn_userid;
    }

    public void setJn_userid(User jn_userid) {
        this.jn_userid = jn_userid;
    }

    public String getJn_poststatus() {
        return jn_poststatus;
    }

    public void setJn_poststatus(String jn_poststatus) {
        this.jn_poststatus = jn_poststatus;
    }

    public String  getJn_posttime() {
        return jn_posttime;
    }

    public void setJn_posttime(String  jn_posttime) {
        this.jn_posttime = jn_posttime;
    }

    public Integer getJn_likes() {
        return jn_likes;
    }

    public void setJn_likes(Integer jn_likes) {
        this.jn_likes = jn_likes;
    }

    public Integer getJn_collection() {
        return jn_collection;
    }

    public void setJn_collection(Integer jn_collection) {
        this.jn_collection = jn_collection;
    }

    public String getJn_logo() {
        return jn_logo;
    }

    public void setJn_logo(String jn_logo) {
        this.jn_logo = jn_logo;
    }

    public Integer getJn_views() {
        return jn_views;
    }

    public void setJn_views(Integer jn_views) {
        this.jn_views = jn_views;
    }

    public Integer getJn_heat() {
        return jn_heat;
    }

    public void setJn_heat(Integer jn_heat) {
        this.jn_heat = jn_heat;
    }

    public Integer getJn_collectionid() {
        return jn_collectionid;
    }

    public void setJn_collectionid(Integer jn_collectionid) {
        this.jn_collectionid = jn_collectionid;
    }

    public Post getPostid() {
        return postid;
    }

    public void setPostid(Post postid) {
        this.postid = postid;
    }

}
