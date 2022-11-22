package com.etc.jn.dto;

import com.etc.jn.entity.User;

import java.util.Date;

public class FollowDto {
    private  Integer fans; //粉丝id
    private User jn_userid; //外键用户id
    private User jn_fansid; // 外键粉丝id
    private String jn_fansstatus; //粉丝状态
    private  Integer jn_postid; //帖子id
    private  String jn_posttitle; //帖子标题
    private String jn_postcontent; //帖子内容
    private String jn_poststatus; //帖子状态
    private String  jn_posttime; // 帖子的发布时间
    private Integer jn_likes; //点赞数
    private  Integer jn_collection; //收藏数
    private String jn_logo; //封面图片
    private Integer jn_views; //浏览量
    private Integer jn_heat; //热度

    public Integer getFans() {
        return fans;
    }

    public void setFans(Integer fans) {
        this.fans = fans;
    }

    public User getJn_userid() {
        return jn_userid;
    }

    public void setJn_userid(User jn_userid) {
        this.jn_userid = jn_userid;
    }

    public User getJn_fansid() {
        return jn_fansid;
    }

    public void setJn_fansid(User jn_fansid) {
        this.jn_fansid = jn_fansid;
    }

    public String getJn_fansstatus() {
        return jn_fansstatus;
    }

    public void setJn_fansstatus(String jn_fansstatus) {
        this.jn_fansstatus = jn_fansstatus;
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
}

