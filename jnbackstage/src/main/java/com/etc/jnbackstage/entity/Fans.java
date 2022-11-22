package com.etc.jnbackstage.entity;

public class Fans {
    private  Integer fans; //粉丝id
    private User jn_userid; //外键用户id
    private User jn_fansid; // 外键粉丝id
    private String jn_fansstatus; //粉丝状态

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
}
