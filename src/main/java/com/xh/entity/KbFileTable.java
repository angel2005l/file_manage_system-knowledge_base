package com.xh.entity;

import java.util.Date;

public class KbFileTable {
    private Integer id;

    private String ftCode;

    private String ftName;

    private Integer fileLevel;

    private String createUserCode;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFtCode() {
        return ftCode;
    }

    public void setFtCode(String ftCode) {
        this.ftCode = ftCode == null ? null : ftCode.trim();
    }

    public String getFtName() {
        return ftName;
    }

    public void setFtName(String ftName) {
        this.ftName = ftName == null ? null : ftName.trim();
    }

    public Integer getFileLevel() {
        return fileLevel;
    }

    public void setFileLevel(Integer fileLevel) {
        this.fileLevel = fileLevel;
    }

    public String getCreateUserCode() {
        return createUserCode;
    }

    public void setCreateUserCode(String createUserCode) {
        this.createUserCode = createUserCode == null ? null : createUserCode.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}