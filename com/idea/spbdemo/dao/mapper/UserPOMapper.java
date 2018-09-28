package com.idea.spbdemo.dao.mapper;

import com.idea.spbdemo.dao.po.UserPO;
import com.idea.spbdemo.dao.po.UserPOExample;
import java.util.List;

public interface UserPOMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(UserPO record);

    int insertSelective(UserPO record);

    List<UserPO> selectByExample(UserPOExample example);

    UserPO selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(UserPO record);

    int updateByPrimaryKey(UserPO record);
}