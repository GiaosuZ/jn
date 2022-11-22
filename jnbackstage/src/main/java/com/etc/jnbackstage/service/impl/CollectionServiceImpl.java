package com.etc.jnbackstage.service.impl;

import com.etc.jnbackstage.dao.CollectionDao;
import com.etc.jnbackstage.dto.CollectionDto;
import com.etc.jnbackstage.service.CollectionService;
import com.etc.jnbackstage.dao.CollectionDao;
import com.etc.jnbackstage.dto.CollectionDto;
import com.etc.jnbackstage.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectionServiceImpl implements CollectionService {
    @Autowired
    private CollectionDao dao;

    public CollectionDao getDao() {
        return dao;
    }

    public void setDao(CollectionDao dao) {
        this.dao = dao;
    }

    @Override
    public List<CollectionDto> queryUserCollectionByUseridandPagSize(Integer jn_userid, Integer page, Integer size) {
        if(jn_userid == null||page == null||size == null){
            return null;
        }
        return dao.queryUserCollectionByUseridandPagSize(jn_userid,page,size);
    }

    @Override
    public Integer queryCollectionCount(Integer jn_userid) {
        if(jn_userid == null){
            return null;
        }
        return dao.queryCollectionCount(jn_userid);
    }
}
