package com.etc.jn.service;

public interface Post_PosttypeService {
    /**
     * 为帖子增加类型
     * @param postid
     * @param posttypeid
     * @return
     */
    boolean addPostTypeByPostId(Integer postid,Integer posttypeid);

    /**
     * 通过帖子id修改帖子类型
     * @param jn_postid
     * @param jn_posttypeid
     * @return
     */
    boolean updatePostTypeByPostId(Integer jn_postid, Integer jn_posttypeid);
}
