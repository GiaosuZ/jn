package com.etc.jnbackstage.dao;

import com.etc.jnbackstage.dto.EcharsDto;
import com.etc.jnbackstage.dto.PostDto;
import com.etc.jnbackstage.dto.PostTotalDto;

import java.util.List;

public interface PostDao {
    /**
     * 报表日期和统计
     * @return EcharsDto
     */
    List<EcharsDto> queryecharsDateandecharsCount();

    /**
     * 文章的信息
     * @return PostDto
     */
    List<PostDto> queryPostInfo(PostDto postDto);
    /**
     * 删除文章
     * @param jn_postid
     * @return
     */
    boolean updatePostByPostid(Integer jn_postid);

    /**
     * 添加文章
     * @param jn_postid
     * @return
     */
    boolean updatePostOpenByPostid(Integer jn_postid);

    /**
     * 文章总条数
     * @param postDto
     * @return
     */
    PostTotalDto queryPostAllCount(PostDto postDto);
    //批量删除
    boolean updatePostsByPostid (Integer[] jn_postid);
}
