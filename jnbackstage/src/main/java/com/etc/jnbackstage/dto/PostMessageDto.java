package com.etc.jnbackstage.dto;

import java.util.List;

/**
 * @BelongsProject: jnbackstage
 * @BelongsPackage: com.etc.jnbackstage.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-07  13:56
 * @Description: TODO
 * @Version: 1.0
 */
public class PostMessageDto {
    private List<PostDto> list;

    public List<PostDto> getList() {
        return list;
    }

    public void setList(List<PostDto> list) {
        this.list = list;
    }
}
