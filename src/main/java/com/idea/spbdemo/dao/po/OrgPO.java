package com.idea.spbdemo.dao.po;

import java.io.Serializable;
import java.util.Date;

public class OrgPO implements Serializable {
    private Integer id;

    private String orgName;

    private String levelcode;

    private String manageUser;

    private Integer manageUid;

    private String contactUser;

    private String contactPhone;

    private String contactAddress;

    private Byte activeStatus;

    private Integer carNum;

    private Integer terminalNum;

    private Date crtTime;

    private Integer crtUid;

    private Date updTime;

    private Integer updUid;

    private String oldLevelCode;

    private String deviceType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName == null ? null : orgName.trim();
    }

    public String getLevelcode() {
        return levelcode;
    }

    public void setLevelcode(String levelcode) {
        this.levelcode = levelcode == null ? null : levelcode.trim();
    }

    public String getManageUser() {
        return manageUser;
    }

    public void setManageUser(String manageUser) {
        this.manageUser = manageUser == null ? null : manageUser.trim();
    }

    public Integer getManageUid() {
        return manageUid;
    }

    public void setManageUid(Integer manageUid) {
        this.manageUid = manageUid;
    }

    public String getContactUser() {
        return contactUser;
    }

    public void setContactUser(String contactUser) {
        this.contactUser = contactUser == null ? null : contactUser.trim();
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }

    public String getContactAddress() {
        return contactAddress;
    }

    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress == null ? null : contactAddress.trim();
    }

    public Byte getActiveStatus() {
        return activeStatus;
    }

    public void setActiveStatus(Byte activeStatus) {
        this.activeStatus = activeStatus;
    }

    public Integer getCarNum() {
        return carNum;
    }

    public void setCarNum(Integer carNum) {
        this.carNum = carNum;
    }

    public Integer getTerminalNum() {
        return terminalNum;
    }

    public void setTerminalNum(Integer terminalNum) {
        this.terminalNum = terminalNum;
    }

    public Date getCrtTime() {
        return crtTime;
    }

    public void setCrtTime(Date crtTime) {
        this.crtTime = crtTime;
    }

    public Integer getCrtUid() {
        return crtUid;
    }

    public void setCrtUid(Integer crtUid) {
        this.crtUid = crtUid;
    }

    public Date getUpdTime() {
        return updTime;
    }

    public void setUpdTime(Date updTime) {
        this.updTime = updTime;
    }

    public Integer getUpdUid() {
        return updUid;
    }

    public void setUpdUid(Integer updUid) {
        this.updUid = updUid;
    }

    public String getOldLevelCode() {
        return oldLevelCode;
    }

    public void setOldLevelCode(String oldLevelCode) {
        this.oldLevelCode = oldLevelCode == null ? null : oldLevelCode.trim();
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType == null ? null : deviceType.trim();
    }
}