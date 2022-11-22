package com.etc.jn.entity;

import java.util.Date;

public class History {
    private Integer jn_historyid; //历史记录id
    private  User jn_userid; //外键用户id
    private Post postid; //外键帖子id
    private Date jn_historytime; //帖子浏览时间
    private  String jn_historystatus; //状态

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

    public Date getJn_historytime() {
        return jn_historytime;
    }

    public void setJn_historytime(Date jn_historytime) {
        this.jn_historytime = jn_historytime;
    }

    public String getJn_historystatus() {
        return jn_historystatus;
    }

    public void setJn_historystatus(String jn_historystatus) {
        this.jn_historystatus = jn_historystatus;
    }
}
