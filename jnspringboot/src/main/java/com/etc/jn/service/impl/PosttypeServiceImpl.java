package com.etc.jn.service.impl;

import com.etc.jn.dao.PosttypeDao;
import com.etc.jn.entity.Post_Posttype;
import com.etc.jn.entity.Posttype;
import com.etc.jn.service.PosttypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PosttypeServiceImpl implements PosttypeService {
    @Autowired
    private PosttypeDao posttypeDao;

    public PosttypeDao getPosttypeDao() {
        return posttypeDao;
    }

    public void setPosttypeDao(PosttypeDao posttypeDao) {
        this.posttypeDao = posttypeDao;
    }

    @Override
    public Posttype quarryPostidByPosttypename(String posttypename) {
        return posttypeDao.quarryPostidByPosttypename(posttypename);
    }
}
