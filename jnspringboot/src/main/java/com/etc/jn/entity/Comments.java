package com.etc.jn.entity;

public class Comments {
    private Integer jn_commentsid; //评论id
    private String jn_commentcontent; //评论内容
    private User jn_userid; //外键 用户id
    private String jn_commentstatus;   //评论状态

    public Integer getJn_commentsid() {
        return jn_commentsid;
    }

    public void setJn_commentsid(Integer jn_commentsid) {
        this.jn_commentsid = jn_commentsid;
    }

    public String getJn_commentcontent() {
        return jn_commentcontent;
    }

    public void setJn_commentcontent(String jn_commentcontent) {
        this.jn_commentcontent = jn_commentcontent;
    }

    public User getJn_userid() {
        return jn_userid;
    }

    public void setJn_userid(User jn_userid) {
        this.jn_userid = jn_userid;
    }

    public String getJn_commentstatus() {
        return jn_commentstatus;
    }

    public void setJn_commentstatus(String jn_commentstatus) {
        this.jn_commentstatus = jn_commentstatus;
    }
}
