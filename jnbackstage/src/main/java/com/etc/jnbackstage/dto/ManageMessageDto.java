package com.etc.jnbackstage.dto;

import com.etc.jnbackstage.entity.User;

import java.util.List;

/**
 * @BelongsProject: jnbackstage
 * @BelongsPackage: com.etc.jnbackstage.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-08  10:42
 * @Description: TODO
 * @Version: 1.0
 */
public class ManageMessageDto {
    private List<User> list;

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }
}
