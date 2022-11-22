package com.etc.jnbackstage.entity;

public class User {
    private  Integer jn_manageid;  //管理员id
    private  String jn_managename; //管理员名字
    private  String jn_managepwd; //管理员密码
    private  Integer jn_managestatus; //管理员状态
    private  String jn_managelogo;  ///管理员头像
    private  String jn_managesex;//管理员性别
    private  String jn_managetel;//管理员电话
    private  String jn_manageeamil;//管理员邮箱

    public User(Integer jn_manageid, String jn_managename, String jn_managepwd, Integer jn_managestatus, String jn_managelogo, String jn_managesex, String jn_managetel, String jn_manageeamil) {
        this.jn_manageid = jn_manageid;
        this.jn_managename = jn_managename;
        this.jn_managepwd = jn_managepwd;
        this.jn_managestatus = jn_managestatus;
        this.jn_managelogo = jn_managelogo;
        this.jn_managesex = jn_managesex;
        this.jn_managetel = jn_managetel;
        this.jn_manageeamil = jn_manageeamil;
    }

    public User() {

    }

    public Integer getJn_manageid() {
        return jn_manageid;
    }

    public void setJn_manageid(Integer jn_manageid) {
        this.jn_manageid = jn_manageid;
    }

    public String getJn_managename() {
        return jn_managename;
    }

    public void setJn_managename(String jn_managename) {
        this.jn_managename = jn_managename;
    }

    public String getJn_managepwd() {
        return jn_managepwd;
    }

    public void setJn_managepwd(String jn_managepwd) {
        this.jn_managepwd = jn_managepwd;
    }

    public Integer getJn_managestatus() {
        return jn_managestatus;
    }

    public void setJn_managestatus(Integer jn_managestatus) {
        this.jn_managestatus = jn_managestatus;
    }

    public String getJn_managelogo() {
        return jn_managelogo;
    }

    public void setJn_managelogo(String jn_managelogo) {
        this.jn_managelogo = jn_managelogo;
    }

    public String getJn_managesex() {
        return jn_managesex;
    }

    public void setJn_managesex(String jn_managesex) {
        this.jn_managesex = jn_managesex;
    }

    public String getJn_managetel() {
        return jn_managetel;
    }

    public void setJn_managetel(String jn_managetel) {
        this.jn_managetel = jn_managetel;
    }

    public String getJn_manageeamil() {
        return jn_manageeamil;
    }

    public void setJn_manageeamil(String jn_manageeamil) {
        this.jn_manageeamil = jn_manageeamil;
    }


}
