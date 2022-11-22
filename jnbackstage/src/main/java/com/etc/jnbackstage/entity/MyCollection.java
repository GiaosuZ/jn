package com.etc.jnbackstage.entity;

public class MyCollection {
    private  Integer jn_collectionid; //帖子收藏id
    private User jn_userid; //外键用户id
    private  Post postid; //外键帖子id
    private  String jn_poststatus; //帖子状态

    public Integer getJn_collectionid() {
        return jn_collectionid;
    }

    public void setJn_collectionid(Integer jn_collectionid) {
        this.jn_collectionid = jn_collectionid;
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

    public String getJn_poststatus() {
        return jn_poststatus;
    }

    public void setJn_poststatus(String jn_poststatus) {
        this.jn_poststatus = jn_poststatus;
    }
}
