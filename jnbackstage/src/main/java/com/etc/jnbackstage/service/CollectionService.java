package com.etc.jnbackstage.service;

import com.etc.jnbackstage.dto.CollectionDto;

import java.util.List;

public interface CollectionService {
    List<CollectionDto> queryUserCollectionByUseridandPagSize(Integer jn_userid, Integer page, Integer size);
    Integer queryCollectionCount(Integer jn_userid);
}
