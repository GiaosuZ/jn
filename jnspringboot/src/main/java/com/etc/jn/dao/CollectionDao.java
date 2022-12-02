package com.etc.jn.dao;

import com.etc.jn.dto.CollectionDto;

import java.util.List;

public interface CollectionDao {
    List<CollectionDto> queryUserCollectionByUseridandPagSize(Integer jn_userid, Integer page, Integer size);
    Integer queryCollectionCount(Integer jn_userid);
}
