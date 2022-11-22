package com.etc.jnbackstage.dto;

/**
 * @BelongsProject: jnbackstage
 * @BelongsPackage: com.etc.jnbackstage.dto
 * @Author: ZHN
 * @CreateTime: 2022-11-07  06:04
 * @Description: TODO
 * @Version: 1.0
 */
public class EcharsDto {
    private Integer echarsCount;//报表统计数
    private String echarsDate;//报表日期

    public Integer getEcharsCount() {
        return echarsCount;
    }

    public void setEcharsCount(Integer echarsCount) {
        this.echarsCount = echarsCount;
    }

    public String getEcharsDate() {
        return echarsDate;
    }

    public void setEcharsDate(String echarsDate) {
        this.echarsDate = echarsDate;
    }

    public EcharsDto(Integer echarsCount, String echarsDate) {
        this.echarsCount = echarsCount;
        this.echarsDate = echarsDate;
    }

    public EcharsDto() {
    }
}
