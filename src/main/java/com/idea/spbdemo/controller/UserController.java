package com.idea.spbdemo.controller;

import com.idea.spbdemo.dao.po.UserPO;
import com.idea.spbdemo.service.IUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/user")
@Api(value = "用户控制层", description = "缓存测试")
public class UserController {
    @Autowired
    private IUserService service;

    @PostMapping(value = "/insert")
    @ApiOperation(value="新增接口")
    public ResponseEntity<Boolean> insert(@RequestBody  UserPO user){
        boolean b = service.insert(user);
        ResponseEntity<Boolean> result = new ResponseEntity<Boolean>(b,HttpStatus.OK);
        return  result;
    }
    @GetMapping(value = "/{id}")
    @ApiOperation(value="主键查询接口")
    public ResponseEntity<UserPO> get(@PathVariable(value = "id") Integer id){
        UserPO user = service.query(id);
        ResponseEntity<UserPO> result = new ResponseEntity<UserPO>(user,HttpStatus.OK);
        return result;
    }

    @GetMapping(value = "/name/{name}")
    @ApiOperation(value="姓名接口")
    public ResponseEntity<UserPO> get(@PathVariable(value = "name") String name){
        UserPO user = service.queryByName(name);
        ResponseEntity<UserPO> result = new ResponseEntity<UserPO>(user,HttpStatus.OK);
        return result;
    }

    @DeleteMapping("/delete/{id}")
    @ApiOperation(value="删除接口")
    public ResponseEntity<Boolean> delete(@PathVariable Integer id){
        boolean b = service.delete(id);
        ResponseEntity<Boolean> result = new ResponseEntity<>(b,HttpStatus.OK);
        return result;
    }

    @PostMapping(value = "/update")
    @ApiOperation(value="修改接口")
    public ResponseEntity<Boolean> update(@RequestBody UserPO user){
        boolean b = service.update(user);
        ResponseEntity<Boolean> result = new ResponseEntity<Boolean>(b,HttpStatus.OK);
        return  result;
    }


}
