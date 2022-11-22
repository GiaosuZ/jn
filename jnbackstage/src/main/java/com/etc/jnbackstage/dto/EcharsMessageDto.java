package com.etc.jnbackstage.dto;

import java.util.List;

/**
 * @BelongsProject: jnbackstage
 * @BelongsPackage: com.etc.jnbackstage.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-07  07:04
 * @Description: TODO
 * @Version: 1.0
 */
public class EcharsMessageDto {
    private List<EcharsDto> list;

    public List<EcharsDto> getList() {
        return list;
    }

    public void setList(List<EcharsDto> list) {
        this.list = list;
    }
}
