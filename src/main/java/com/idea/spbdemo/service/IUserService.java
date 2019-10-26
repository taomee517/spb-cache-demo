package com.idea.spbdemo.service;

import com.idea.spbdemo.dao.po.UserPO;

public interface IUserService {

    boolean insert(UserPO user);

    boolean delete(Integer id);

    UserPO update(UserPO user);

    UserPO query(Integer id);

    UserPO queryByName(String name);

}
