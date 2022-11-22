package com.etc.jn.entity;

public class Post_Posttype {
    private Integer jn_post_posttypeid; //id
    private Post jn_postid;  //帖子id
    private Posttype jn_posttypeid; // 帖子类型id

    public Integer getJn_post_posttypeid() {
        return jn_post_posttypeid;
    }

    public void setJn_post_posttypeid(Integer jn_post_posttypeid) {
        this.jn_post_posttypeid = jn_post_posttypeid;
    }

    public Post getJn_postid() {
        return jn_postid;
    }

    public void setJn_postid(Post jn_postid) {
        this.jn_postid = jn_postid;
    }

    public Posttype getJn_posttypeid() {
        return jn_posttypeid;
    }

    public void setJn_posttypeid(Posttype jn_posttypeid) {
        this.jn_posttypeid = jn_posttypeid;
    }
}
