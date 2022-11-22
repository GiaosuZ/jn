package com.etc.jnbackstage.dao;

import com.etc.jnbackstage.dto.CollectionDto;

import java.util.List;

public interface CollectionDao {
    List<CollectionDto> queryUserCollectionByUseridandPagSize(Integer jn_userid, Integer page, Integer size);
    Integer queryCollectionCount(Integer jn_userid);
}
