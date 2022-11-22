package com.etc.jnbackstage.entity;

public class User_type {
    private  Integer jn_user_typeid; //id
    private  User jn_userid; //外键用户id
    private  Posttype jn_posttypeid; //外键 标签类型id

    public Integer getJn_user_typeid() {
        return jn_user_typeid;
    }

    public void setJn_user_typeid(Integer jn_user_typeid) {
        this.jn_user_typeid = jn_user_typeid;
    }

    public User getJn_userid() {
        return jn_userid;
    }

    public void setJn_userid(User jn_userid) {
        this.jn_userid = jn_userid;
    }

    public Posttype getJn_posttypeid() {
        return jn_posttypeid;
    }

    public void setJn_posttypeid(Posttype jn_posttypeid) {
        this.jn_posttypeid = jn_posttypeid;
    }
}
