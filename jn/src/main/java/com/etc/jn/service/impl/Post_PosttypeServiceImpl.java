package com.etc.jn.service.impl;

import com.etc.jn.dao.Post_PosttypeDao;
import com.etc.jn.service.Post_PosttypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Post_PosttypeServiceImpl implements Post_PosttypeService {
    @Autowired
    private Post_PosttypeDao post_posttypeDao;

    public Post_PosttypeDao getPost_posttypeDao() {
        return post_posttypeDao;
    }

    public void setPost_posttypeDao(Post_PosttypeDao post_posttypeDao) {
        this.post_posttypeDao = post_posttypeDao;
    }

    @Override
    public boolean addPostTypeByPostId(Integer postid, Integer posttypeid) {
        return post_posttypeDao.addPostTypeByPostId(postid,posttypeid);
    }

    @Override
    public boolean updatePostTypeByPostId(Integer jn_postid, Integer jn_posttypeid) {
        if (jn_postid != null && jn_posttypeid != null) {
        return post_posttypeDao.updatePostTypeByPostId(jn_postid,jn_posttypeid);
        }
        return false;
    }
}
