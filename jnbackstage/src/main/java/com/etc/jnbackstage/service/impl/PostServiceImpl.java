package com.etc.jnbackstage.service.impl;

import com.etc.jnbackstage.dao.PostDao;
import com.etc.jnbackstage.dto.EcharsDto;
import com.etc.jnbackstage.dto.PostDto;
import com.etc.jnbackstage.dto.PostTotalDto;
import com.etc.jnbackstage.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {
    @Autowired
    private PostDao dao;

    public PostDao getDao() {
        return dao;
    }

    public void setDao(PostDao dao) {
        this.dao = dao;
    }

    /**
     * 报表日期和统计
     *@return EcharsDto
     */
    @Override
    public List<EcharsDto> queryecharsDateandecharsCount() {
        return dao.queryecharsDateandecharsCount();
    }
    /**
     * 文章的信息
     * @return PostDto
     */
    @Override
    public List<PostDto> queryPostInfo(PostDto postDto) {
        return dao.queryPostInfo(postDto);
    }
    /**
     * 添加文章
     * @param jn_postid
     * @return
     */
    @Override
    public boolean updatePostOpenByPostid(Integer jn_postid) {
        return dao.updatePostOpenByPostid(jn_postid);
    }

    /**
     * 删除文章
     * @param jn_postid
     * @return
     */
    @Override
    public boolean updatePostByPostid(Integer jn_postid) {
        return dao.updatePostByPostid(jn_postid);
    }
    /**
     * 文章总条数
     * @param postDto
     * @return
     */
    @Override
    public PostTotalDto queryPostAllCount(PostDto postDto) {
        return dao.queryPostAllCount(postDto);
    }
}
