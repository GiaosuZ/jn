package com.etc.jn.dao;

import com.etc.jn.entity.Post;
import com.etc.jn.vo.Postidvo;
import java.util.List;
public interface PostDao {
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
     * @return  post
     */
    Postidvo quaryPostidByUseridAndPosttime(Integer userid, String posttime);


    /**
     * 查询全部帖子
     * @param num
     * @param size
     * @return
     */
    List<Post> queryAllpost(Integer num,Integer size);

    /**
     * 根据类别查询
     * @param type
     * @param num
     * @param size
     * @return
     */
    List<Post> queryPostbytype(String type ,Integer num,Integer size);

    /**
     * 关键词查找
     * @param keyword
     * @param num
     * @param size
     * @return
     */
    List<Post> queryPostbykeyword(String keyword ,Integer num,Integer size);

    /**
     * 根据帖子id查找
     * @param postid
     * @return
     */
    Post queryPostbyid(Integer postid);

    /**
     * 根据帖子id删除
     * @param postid
     * @return
     */
    boolean deletePostByPostid(Integer postid);
}
