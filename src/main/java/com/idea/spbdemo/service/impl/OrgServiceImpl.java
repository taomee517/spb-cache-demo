package com.idea.spbdemo.service.impl;

import com.idea.spbdemo.dao.mapper.OrgPOMapper;
import com.idea.spbdemo.dao.po.OrgPO;
import com.idea.spbdemo.service.IOrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
@CacheConfig(cacheNames = "org")
public class OrgServiceImpl implements IOrgService {

    @Autowired
    OrgPOMapper orgMapper;

    @Override
    @Cacheable(key = "#id", condition = "#id>0")
    public OrgPO getById(int id) {
        return orgMapper.selectByPrimaryKey(id);
    }
}
