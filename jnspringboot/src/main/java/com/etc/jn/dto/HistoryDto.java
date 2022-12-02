package com.etc.jn.dto;

import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;

import java.util.Date;

public class HistoryDto {
    private Integer jn_historyid; //历史记录id
    private User jn_userid; //外键用户id
    private Post postid; //外键帖子id
    private String  jn_historytime; //帖子浏览时间
    private  String jn_historystatus; //状态
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

    public Integer getJn_historyid() {
        return jn_historyid;
    }

    public void setJn_historyid(Integer jn_historyid) {
        this.jn_historyid = jn_historyid;
    }

    public User getJn_userid() {
        return jn_userid;
    }

    public void setJn_userid(User jn_userid) {
        this.jn_userid = jn_userid;
    }

    public Post getPostid() {
        return postid;
    }

    public void setPostid(Post postid) {
        this.postid = postid;
    }

    public String  getJn_historytime() {
        return jn_historytime;
    }

    public void setJn_historytime(String  jn_historytime) {
        this.jn_historytime = jn_historytime;
    }

    public String getJn_historystatus() {
        return jn_historystatus;
    }

    public void setJn_historystatus(String jn_historystatus) {
        this.jn_historystatus = jn_historystatus;
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
