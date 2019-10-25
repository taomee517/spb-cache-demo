package com.idea.spbdemo.dao.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrgPOExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrgPOExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andOrgNameIsNull() {
            addCriterion("org_name is null");
            return (Criteria) this;
        }

        public Criteria andOrgNameIsNotNull() {
            addCriterion("org_name is not null");
            return (Criteria) this;
        }

        public Criteria andOrgNameEqualTo(String value) {
            addCriterion("org_name =", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameNotEqualTo(String value) {
            addCriterion("org_name <>", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameGreaterThan(String value) {
            addCriterion("org_name >", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameGreaterThanOrEqualTo(String value) {
            addCriterion("org_name >=", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameLessThan(String value) {
            addCriterion("org_name <", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameLessThanOrEqualTo(String value) {
            addCriterion("org_name <=", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameLike(String value) {
            addCriterion("org_name like", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameNotLike(String value) {
            addCriterion("org_name not like", value, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameIn(List<String> values) {
            addCriterion("org_name in", values, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameNotIn(List<String> values) {
            addCriterion("org_name not in", values, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameBetween(String value1, String value2) {
            addCriterion("org_name between", value1, value2, "orgName");
            return (Criteria) this;
        }

        public Criteria andOrgNameNotBetween(String value1, String value2) {
            addCriterion("org_name not between", value1, value2, "orgName");
            return (Criteria) this;
        }

        public Criteria andLevelcodeIsNull() {
            addCriterion("levelcode is null");
            return (Criteria) this;
        }

        public Criteria andLevelcodeIsNotNull() {
            addCriterion("levelcode is not null");
            return (Criteria) this;
        }

        public Criteria andLevelcodeEqualTo(String value) {
            addCriterion("levelcode =", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeNotEqualTo(String value) {
            addCriterion("levelcode <>", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeGreaterThan(String value) {
            addCriterion("levelcode >", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeGreaterThanOrEqualTo(String value) {
            addCriterion("levelcode >=", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeLessThan(String value) {
            addCriterion("levelcode <", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeLessThanOrEqualTo(String value) {
            addCriterion("levelcode <=", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeLike(String value) {
            addCriterion("levelcode like", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeNotLike(String value) {
            addCriterion("levelcode not like", value, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeIn(List<String> values) {
            addCriterion("levelcode in", values, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeNotIn(List<String> values) {
            addCriterion("levelcode not in", values, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeBetween(String value1, String value2) {
            addCriterion("levelcode between", value1, value2, "levelcode");
            return (Criteria) this;
        }

        public Criteria andLevelcodeNotBetween(String value1, String value2) {
            addCriterion("levelcode not between", value1, value2, "levelcode");
            return (Criteria) this;
        }

        public Criteria andManageUserIsNull() {
            addCriterion("manage_user is null");
            return (Criteria) this;
        }

        public Criteria andManageUserIsNotNull() {
            addCriterion("manage_user is not null");
            return (Criteria) this;
        }

        public Criteria andManageUserEqualTo(String value) {
            addCriterion("manage_user =", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserNotEqualTo(String value) {
            addCriterion("manage_user <>", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserGreaterThan(String value) {
            addCriterion("manage_user >", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserGreaterThanOrEqualTo(String value) {
            addCriterion("manage_user >=", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserLessThan(String value) {
            addCriterion("manage_user <", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserLessThanOrEqualTo(String value) {
            addCriterion("manage_user <=", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserLike(String value) {
            addCriterion("manage_user like", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserNotLike(String value) {
            addCriterion("manage_user not like", value, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserIn(List<String> values) {
            addCriterion("manage_user in", values, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserNotIn(List<String> values) {
            addCriterion("manage_user not in", values, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserBetween(String value1, String value2) {
            addCriterion("manage_user between", value1, value2, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUserNotBetween(String value1, String value2) {
            addCriterion("manage_user not between", value1, value2, "manageUser");
            return (Criteria) this;
        }

        public Criteria andManageUidIsNull() {
            addCriterion("manage_uid is null");
            return (Criteria) this;
        }

        public Criteria andManageUidIsNotNull() {
            addCriterion("manage_uid is not null");
            return (Criteria) this;
        }

        public Criteria andManageUidEqualTo(Integer value) {
            addCriterion("manage_uid =", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidNotEqualTo(Integer value) {
            addCriterion("manage_uid <>", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidGreaterThan(Integer value) {
            addCriterion("manage_uid >", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidGreaterThanOrEqualTo(Integer value) {
            addCriterion("manage_uid >=", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidLessThan(Integer value) {
            addCriterion("manage_uid <", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidLessThanOrEqualTo(Integer value) {
            addCriterion("manage_uid <=", value, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidIn(List<Integer> values) {
            addCriterion("manage_uid in", values, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidNotIn(List<Integer> values) {
            addCriterion("manage_uid not in", values, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidBetween(Integer value1, Integer value2) {
            addCriterion("manage_uid between", value1, value2, "manageUid");
            return (Criteria) this;
        }

        public Criteria andManageUidNotBetween(Integer value1, Integer value2) {
            addCriterion("manage_uid not between", value1, value2, "manageUid");
            return (Criteria) this;
        }

        public Criteria andContactUserIsNull() {
            addCriterion("contact_user is null");
            return (Criteria) this;
        }

        public Criteria andContactUserIsNotNull() {
            addCriterion("contact_user is not null");
            return (Criteria) this;
        }

        public Criteria andContactUserEqualTo(String value) {
            addCriterion("contact_user =", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserNotEqualTo(String value) {
            addCriterion("contact_user <>", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserGreaterThan(String value) {
            addCriterion("contact_user >", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserGreaterThanOrEqualTo(String value) {
            addCriterion("contact_user >=", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserLessThan(String value) {
            addCriterion("contact_user <", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserLessThanOrEqualTo(String value) {
            addCriterion("contact_user <=", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserLike(String value) {
            addCriterion("contact_user like", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserNotLike(String value) {
            addCriterion("contact_user not like", value, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserIn(List<String> values) {
            addCriterion("contact_user in", values, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserNotIn(List<String> values) {
            addCriterion("contact_user not in", values, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserBetween(String value1, String value2) {
            addCriterion("contact_user between", value1, value2, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactUserNotBetween(String value1, String value2) {
            addCriterion("contact_user not between", value1, value2, "contactUser");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNull() {
            addCriterion("contact_phone is null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNotNull() {
            addCriterion("contact_phone is not null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneEqualTo(String value) {
            addCriterion("contact_phone =", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotEqualTo(String value) {
            addCriterion("contact_phone <>", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThan(String value) {
            addCriterion("contact_phone >", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("contact_phone >=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThan(String value) {
            addCriterion("contact_phone <", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThanOrEqualTo(String value) {
            addCriterion("contact_phone <=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLike(String value) {
            addCriterion("contact_phone like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotLike(String value) {
            addCriterion("contact_phone not like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIn(List<String> values) {
            addCriterion("contact_phone in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotIn(List<String> values) {
            addCriterion("contact_phone not in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneBetween(String value1, String value2) {
            addCriterion("contact_phone between", value1, value2, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotBetween(String value1, String value2) {
            addCriterion("contact_phone not between", value1, value2, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactAddressIsNull() {
            addCriterion("contact_address is null");
            return (Criteria) this;
        }

        public Criteria andContactAddressIsNotNull() {
            addCriterion("contact_address is not null");
            return (Criteria) this;
        }

        public Criteria andContactAddressEqualTo(String value) {
            addCriterion("contact_address =", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressNotEqualTo(String value) {
            addCriterion("contact_address <>", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressGreaterThan(String value) {
            addCriterion("contact_address >", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressGreaterThanOrEqualTo(String value) {
            addCriterion("contact_address >=", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressLessThan(String value) {
            addCriterion("contact_address <", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressLessThanOrEqualTo(String value) {
            addCriterion("contact_address <=", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressLike(String value) {
            addCriterion("contact_address like", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressNotLike(String value) {
            addCriterion("contact_address not like", value, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressIn(List<String> values) {
            addCriterion("contact_address in", values, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressNotIn(List<String> values) {
            addCriterion("contact_address not in", values, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressBetween(String value1, String value2) {
            addCriterion("contact_address between", value1, value2, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andContactAddressNotBetween(String value1, String value2) {
            addCriterion("contact_address not between", value1, value2, "contactAddress");
            return (Criteria) this;
        }

        public Criteria andActiveStatusIsNull() {
            addCriterion("active_status is null");
            return (Criteria) this;
        }

        public Criteria andActiveStatusIsNotNull() {
            addCriterion("active_status is not null");
            return (Criteria) this;
        }

        public Criteria andActiveStatusEqualTo(Byte value) {
            addCriterion("active_status =", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusNotEqualTo(Byte value) {
            addCriterion("active_status <>", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusGreaterThan(Byte value) {
            addCriterion("active_status >", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("active_status >=", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusLessThan(Byte value) {
            addCriterion("active_status <", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusLessThanOrEqualTo(Byte value) {
            addCriterion("active_status <=", value, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusIn(List<Byte> values) {
            addCriterion("active_status in", values, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusNotIn(List<Byte> values) {
            addCriterion("active_status not in", values, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusBetween(Byte value1, Byte value2) {
            addCriterion("active_status between", value1, value2, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andActiveStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("active_status not between", value1, value2, "activeStatus");
            return (Criteria) this;
        }

        public Criteria andCarNumIsNull() {
            addCriterion("car_num is null");
            return (Criteria) this;
        }

        public Criteria andCarNumIsNotNull() {
            addCriterion("car_num is not null");
            return (Criteria) this;
        }

        public Criteria andCarNumEqualTo(Integer value) {
            addCriterion("car_num =", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumNotEqualTo(Integer value) {
            addCriterion("car_num <>", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumGreaterThan(Integer value) {
            addCriterion("car_num >", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("car_num >=", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumLessThan(Integer value) {
            addCriterion("car_num <", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumLessThanOrEqualTo(Integer value) {
            addCriterion("car_num <=", value, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumIn(List<Integer> values) {
            addCriterion("car_num in", values, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumNotIn(List<Integer> values) {
            addCriterion("car_num not in", values, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumBetween(Integer value1, Integer value2) {
            addCriterion("car_num between", value1, value2, "carNum");
            return (Criteria) this;
        }

        public Criteria andCarNumNotBetween(Integer value1, Integer value2) {
            addCriterion("car_num not between", value1, value2, "carNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumIsNull() {
            addCriterion("terminal_num is null");
            return (Criteria) this;
        }

        public Criteria andTerminalNumIsNotNull() {
            addCriterion("terminal_num is not null");
            return (Criteria) this;
        }

        public Criteria andTerminalNumEqualTo(Integer value) {
            addCriterion("terminal_num =", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumNotEqualTo(Integer value) {
            addCriterion("terminal_num <>", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumGreaterThan(Integer value) {
            addCriterion("terminal_num >", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("terminal_num >=", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumLessThan(Integer value) {
            addCriterion("terminal_num <", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumLessThanOrEqualTo(Integer value) {
            addCriterion("terminal_num <=", value, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumIn(List<Integer> values) {
            addCriterion("terminal_num in", values, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumNotIn(List<Integer> values) {
            addCriterion("terminal_num not in", values, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumBetween(Integer value1, Integer value2) {
            addCriterion("terminal_num between", value1, value2, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andTerminalNumNotBetween(Integer value1, Integer value2) {
            addCriterion("terminal_num not between", value1, value2, "terminalNum");
            return (Criteria) this;
        }

        public Criteria andCrtTimeIsNull() {
            addCriterion("crt_time is null");
            return (Criteria) this;
        }

        public Criteria andCrtTimeIsNotNull() {
            addCriterion("crt_time is not null");
            return (Criteria) this;
        }

        public Criteria andCrtTimeEqualTo(Date value) {
            addCriterion("crt_time =", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeNotEqualTo(Date value) {
            addCriterion("crt_time <>", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeGreaterThan(Date value) {
            addCriterion("crt_time >", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("crt_time >=", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeLessThan(Date value) {
            addCriterion("crt_time <", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeLessThanOrEqualTo(Date value) {
            addCriterion("crt_time <=", value, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeIn(List<Date> values) {
            addCriterion("crt_time in", values, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeNotIn(List<Date> values) {
            addCriterion("crt_time not in", values, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeBetween(Date value1, Date value2) {
            addCriterion("crt_time between", value1, value2, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtTimeNotBetween(Date value1, Date value2) {
            addCriterion("crt_time not between", value1, value2, "crtTime");
            return (Criteria) this;
        }

        public Criteria andCrtUidIsNull() {
            addCriterion("crt_uid is null");
            return (Criteria) this;
        }

        public Criteria andCrtUidIsNotNull() {
            addCriterion("crt_uid is not null");
            return (Criteria) this;
        }

        public Criteria andCrtUidEqualTo(Integer value) {
            addCriterion("crt_uid =", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidNotEqualTo(Integer value) {
            addCriterion("crt_uid <>", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidGreaterThan(Integer value) {
            addCriterion("crt_uid >", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidGreaterThanOrEqualTo(Integer value) {
            addCriterion("crt_uid >=", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidLessThan(Integer value) {
            addCriterion("crt_uid <", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidLessThanOrEqualTo(Integer value) {
            addCriterion("crt_uid <=", value, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidIn(List<Integer> values) {
            addCriterion("crt_uid in", values, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidNotIn(List<Integer> values) {
            addCriterion("crt_uid not in", values, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidBetween(Integer value1, Integer value2) {
            addCriterion("crt_uid between", value1, value2, "crtUid");
            return (Criteria) this;
        }

        public Criteria andCrtUidNotBetween(Integer value1, Integer value2) {
            addCriterion("crt_uid not between", value1, value2, "crtUid");
            return (Criteria) this;
        }

        public Criteria andUpdTimeIsNull() {
            addCriterion("upd_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdTimeIsNotNull() {
            addCriterion("upd_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdTimeEqualTo(Date value) {
            addCriterion("upd_time =", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeNotEqualTo(Date value) {
            addCriterion("upd_time <>", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeGreaterThan(Date value) {
            addCriterion("upd_time >", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("upd_time >=", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeLessThan(Date value) {
            addCriterion("upd_time <", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeLessThanOrEqualTo(Date value) {
            addCriterion("upd_time <=", value, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeIn(List<Date> values) {
            addCriterion("upd_time in", values, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeNotIn(List<Date> values) {
            addCriterion("upd_time not in", values, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeBetween(Date value1, Date value2) {
            addCriterion("upd_time between", value1, value2, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdTimeNotBetween(Date value1, Date value2) {
            addCriterion("upd_time not between", value1, value2, "updTime");
            return (Criteria) this;
        }

        public Criteria andUpdUidIsNull() {
            addCriterion("upd_uid is null");
            return (Criteria) this;
        }

        public Criteria andUpdUidIsNotNull() {
            addCriterion("upd_uid is not null");
            return (Criteria) this;
        }

        public Criteria andUpdUidEqualTo(Integer value) {
            addCriterion("upd_uid =", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidNotEqualTo(Integer value) {
            addCriterion("upd_uid <>", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidGreaterThan(Integer value) {
            addCriterion("upd_uid >", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidGreaterThanOrEqualTo(Integer value) {
            addCriterion("upd_uid >=", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidLessThan(Integer value) {
            addCriterion("upd_uid <", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidLessThanOrEqualTo(Integer value) {
            addCriterion("upd_uid <=", value, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidIn(List<Integer> values) {
            addCriterion("upd_uid in", values, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidNotIn(List<Integer> values) {
            addCriterion("upd_uid not in", values, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidBetween(Integer value1, Integer value2) {
            addCriterion("upd_uid between", value1, value2, "updUid");
            return (Criteria) this;
        }

        public Criteria andUpdUidNotBetween(Integer value1, Integer value2) {
            addCriterion("upd_uid not between", value1, value2, "updUid");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeIsNull() {
            addCriterion("old_level_code is null");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeIsNotNull() {
            addCriterion("old_level_code is not null");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeEqualTo(String value) {
            addCriterion("old_level_code =", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeNotEqualTo(String value) {
            addCriterion("old_level_code <>", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeGreaterThan(String value) {
            addCriterion("old_level_code >", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeGreaterThanOrEqualTo(String value) {
            addCriterion("old_level_code >=", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeLessThan(String value) {
            addCriterion("old_level_code <", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeLessThanOrEqualTo(String value) {
            addCriterion("old_level_code <=", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeLike(String value) {
            addCriterion("old_level_code like", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeNotLike(String value) {
            addCriterion("old_level_code not like", value, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeIn(List<String> values) {
            addCriterion("old_level_code in", values, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeNotIn(List<String> values) {
            addCriterion("old_level_code not in", values, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeBetween(String value1, String value2) {
            addCriterion("old_level_code between", value1, value2, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andOldLevelCodeNotBetween(String value1, String value2) {
            addCriterion("old_level_code not between", value1, value2, "oldLevelCode");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIsNull() {
            addCriterion("device_type is null");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIsNotNull() {
            addCriterion("device_type is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeEqualTo(String value) {
            addCriterion("device_type =", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotEqualTo(String value) {
            addCriterion("device_type <>", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeGreaterThan(String value) {
            addCriterion("device_type >", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeGreaterThanOrEqualTo(String value) {
            addCriterion("device_type >=", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeLessThan(String value) {
            addCriterion("device_type <", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeLessThanOrEqualTo(String value) {
            addCriterion("device_type <=", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeLike(String value) {
            addCriterion("device_type like", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotLike(String value) {
            addCriterion("device_type not like", value, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeIn(List<String> values) {
            addCriterion("device_type in", values, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotIn(List<String> values) {
            addCriterion("device_type not in", values, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeBetween(String value1, String value2) {
            addCriterion("device_type between", value1, value2, "deviceType");
            return (Criteria) this;
        }

        public Criteria andDeviceTypeNotBetween(String value1, String value2) {
            addCriterion("device_type not between", value1, value2, "deviceType");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}