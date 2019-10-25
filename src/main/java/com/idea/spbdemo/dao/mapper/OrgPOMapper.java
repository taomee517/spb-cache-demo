package com.idea.spbdemo.dao.mapper;

import com.idea.spbdemo.dao.po.OrgPO;
import com.idea.spbdemo.dao.po.OrgPOExample;
import java.util.List;

public interface OrgPOMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrgPO record);

    int insertSelective(OrgPO record);

    List<OrgPO> selectByExample(OrgPOExample example);

    OrgPO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrgPO record);

    int updateByPrimaryKey(OrgPO record);
}