package com.etc.jnbackstage.service;

import com.etc.jnbackstage.dto.EcharsDto;
import com.etc.jnbackstage.dto.PostDto;
import com.etc.jnbackstage.dto.PostTotalDto;

import java.util.List;

public interface PostService {
    List<EcharsDto> queryecharsDateandecharsCount();
    List<PostDto> queryPostInfo(PostDto postDto);
    boolean updatePostByPostid(Integer jn_postid);
    boolean updatePostOpenByPostid(Integer jn_postid);
    PostTotalDto queryPostAllCount(PostDto postDto);
}
