package com.idea.spbdemo.service.impl;

import com.idea.spbdemo.dao.mapper.UserPOMapper;
import com.idea.spbdemo.dao.po.UserPOExample;
import com.idea.spbdemo.service.IUserService;
import com.idea.spbdemo.dao.po.UserPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
@CacheConfig(cacheNames = "user")
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserPOMapper mapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean insert(UserPO user) {

        if(mapper.insert(user)>0){
            return true;
        }
       return false;
    }

    @Override
    @CacheEvict(key = "#id")
    @Transactional(rollbackFor = Exception.class)
    public boolean delete(Integer id) {
        int status = mapper.deleteByPrimaryKey(id);
        if(status>0){
            return true;
        }
        return false;
    }

    @Override
    @CachePut(key = "#user.uid", condition = "#result!=null")
    @Transactional(rollbackFor = Exception.class)
    public UserPO update(UserPO user) {
        int status = mapper.updateByPrimaryKeySelective(user);
        if(status>0){
            return user;
        }
        return null;
    }

    @Override
    @Cacheable(key = "#id",condition = "#id>0") //将查询结果缓存
    public UserPO query(Integer id) {
        UserPO user = mapper.selectByPrimaryKey(id);
        return user;
    }

    @Override
    @Caching(
            cacheable = {@Cacheable(key = "#name")},
            put = {@CachePut(key = "#result.uid",condition = "#result!=null"),
                    @CachePut(key = "#result.realname", condition = "#result!=null")})
    public UserPO queryByName(String name){
        UserPOExample example = new UserPOExample();
        example.or().andUnameEqualTo(name);
        List<UserPO> users = mapper.selectByExample(example);
        UserPO user = null;
        if(!CollectionUtils.isEmpty(users)){
            user = users.get(0);
        }
        return user;
    }
}
