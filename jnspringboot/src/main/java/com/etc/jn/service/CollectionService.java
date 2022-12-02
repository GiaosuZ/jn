package com.etc.jn.service;

import com.etc.jn.dto.CollectionDto;

import java.util.List;

public interface CollectionService {
    List<CollectionDto> queryUserCollectionByUseridandPagSize(Integer jn_userid, Integer page, Integer size);
    Integer queryCollectionCount(Integer jn_userid);
}
