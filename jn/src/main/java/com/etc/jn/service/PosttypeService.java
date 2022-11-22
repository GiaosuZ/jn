package com.etc.jn.service;

import com.etc.jn.entity.Posttype;

public interface PosttypeService {
    /**
     * 通过标签名查询标签id
     * @param posttypename
     * @return
     */
    Posttype quarryPostidByPosttypename(String posttypename);
}
