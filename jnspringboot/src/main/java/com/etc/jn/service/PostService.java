package com.etc.jn.service;

import com.etc.jn.entity.Post;
import com.etc.jn.vo.Postidvo;

import java.util.List;

public interface PostService {
    /**
     * 添加帖子
     * @param post
     * @return
     */
    boolean addPost(Post post);
    /**
     * 查询postid
     * @param userid
     * @param posttime
     * @return  postid
     */
    Postidvo quaryPostidByUseridAndPosttime(Integer userid, String posttime);
    /**
     * 查询全部帖子
     * @param page
     * @param size
     * @return
     */
    List<Post> queryAllpost(Integer page, Integer size);

    /**
     * 根据类别查询
     * @param type
     * @param page
     * @param size
     * @return
     */
    List<Post> queryPostbytype(String type ,Integer page,Integer size);

    /**
     * 关键词查找
     * @param keyword
     * @param page
     * @param size
     * @return
     */
    List<Post> queryPostbykeyword(String keyword ,Integer page,Integer size);

    /**
     * 根据帖子id查找
     * @param postid
     * @return
     */
    Post queryPostbyid(Integer postid);

    /**
     * 删除帖子通过帖子id
     * @param postid
     * @return
     */
    boolean removePostByPostid(Integer postid);
}
