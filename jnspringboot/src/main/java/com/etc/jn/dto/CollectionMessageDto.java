package com.etc.jn.dto;

import java.util.List;

/**
 * @BelongsProject: jn
 * @BelongsPackage: com.etc.jn.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-04  15:01
 * @Description: TODO
 * @Version: 1.0
 */
public class CollectionMessageDto {

    private List<CollectionDto> list;
    private Integer page;
    private Integer size;
    private Integer maxPage;

    public List<CollectionDto> getList() {
        return list;
    }

    public void setList(List<CollectionDto> list) {
        this.list = list;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(Integer maxPage) {
        this.maxPage = maxPage;
    }
}
