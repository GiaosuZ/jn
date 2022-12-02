package com.etc.jn.service.impl;

import com.etc.jn.dao.PostDao;
import com.etc.jn.entity.Post;
import com.etc.jn.service.PostService;
import com.etc.jn.vo.Postidvo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {
    @Autowired
    private PostDao postDao;

    public PostDao getPostDao() {
        return postDao;
    }

    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }

    @Override
    public Postidvo quaryPostidByUseridAndPosttime(Integer userid, String posttime) {
        return postDao.quaryPostidByUseridAndPosttime(userid,posttime);
    }

    @Override
    public boolean removePostByPostid(Integer postid) {
        if (postid==null)
        {
            return false;
        }
        return postDao.deletePostByPostid(postid);
    }

    @Override
    public boolean addPost(Post post) {
        return postDao.addPost(post);
    }

     @Override
    public List<Post> queryAllpost(Integer page, Integer size) {
        return postDao.queryAllpost(page,size);
    }

    @Override
    public List<Post> queryPostbytype(String type, Integer page, Integer size) {
        return postDao.queryPostbytype(type, page, size);
    }

    @Override
    public List<Post> queryPostbykeyword(String keyword, Integer page, Integer size) {
        return postDao.queryPostbykeyword(keyword, page, size);
    }

    @Override
    public Post queryPostbyid(Integer postid) {
        return postDao.queryPostbyid(postid);
    }
}
