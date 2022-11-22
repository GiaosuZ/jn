package com.etc.jnbackstage.dto;

import com.etc.jnbackstage.entity.User;
import com.etc.jnbackstage.entity.Users;

import java.util.List;

/**
 * @BelongsProject: jnbackstage
 * @BelongsPackage: com.etc.jnbackstage.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-07  17:05
 * @Description: TODO
 * @Version: 1.0
 */
public class UserMessageDto
{
    private List<Users> list;

    public List<Users> getList() {
        return list;
    }

    public void setList(List<Users> list) {
        this.list = list;
    }
}
