package com.etc.jn.dao;

public interface Post_PosttypeDao {
    /**
     * 为帖子增加类型
     * @param postid
     * @param posttypeid
     * @return
     */
    boolean addPostTypeByPostId(Integer postid,Integer posttypeid);
}
