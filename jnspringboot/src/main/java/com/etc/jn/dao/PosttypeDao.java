package com.etc.jn.dao;

import com.etc.jn.entity.Posttype;

import java.util.List;

public interface PosttypeDao {
    /**
     * 通过标签名查询标签id
     * @param posttypename
     * @return
     */
    Posttype quarryPostidByPosttypename(String posttypename);
}
