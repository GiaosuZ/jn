package com.etc.jn.service;

public interface Post_PosttypeService {
    /**
     * 为帖子增加类型
     * @param postid
     * @param posttypeid
     * @return
     */
    boolean addPostTypeByPostId(Integer postid,Integer posttypeid);
}
