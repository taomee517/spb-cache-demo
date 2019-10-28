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

    /**
     * @CachePut 注解的作用主要针对方法配置，能够根据方法的请求参数对其结果进行缓存，
     * 和 @Cacheable 不同的是，它每次都会触发真实方法的调用
     */
    @Override
    @CachePut(key = "#user.uid", condition = "#result!=null")
    @Transactional(rollbackFor = Exception.class)
    public UserPO update(UserPO user) {
        int status = mapper.updateByPrimaryKeySelective(user);
        if(status>0){
            return mapper.selectByPrimaryKey(user.getUid());
        }
        return null;
    }


    /**
     * 更新成功后，删除之前的缓存
     */
//    @CacheEvict(key = "#user.uid", condition = "#result==true")
//    @Transactional(rollbackFor = Exception.class)
//    public Boolean update(UserPO user) {
//        int status = mapper.updateByPrimaryKeySelective(user);
//        if(status>0){
//            return true;
//        }
//        return false;
//    }


    /**
     * @Cacheable 注解会先查询是否已经有缓存，有会使用缓存，没有则会执行方法并缓存
     */
    @Override
    @Cacheable(key = "#id",condition = "#id>0")
    public UserPO query(Integer id) {
        UserPO user = mapper.selectByPrimaryKey(id);
        return user;
    }


    /**
     * 组合缓存操作
     */
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
