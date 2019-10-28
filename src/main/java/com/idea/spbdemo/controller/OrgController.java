package com.idea.spbdemo.controller;


import com.idea.spbdemo.dao.po.OrgPO;
import com.idea.spbdemo.service.IOrgService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/org")
@Api(value = "商户控制层", description = "商户缓存测试")
public class OrgController {

    @Autowired
    IOrgService orgService;

    @GetMapping(value = "/{id}")
    @ApiOperation(value="主键查询接口")
    public ResponseEntity<OrgPO> get(@PathVariable(value = "id") Integer id){
        OrgPO org = orgService.getById(id);
        ResponseEntity<OrgPO> result = new ResponseEntity<OrgPO>(org, HttpStatus.OK);
        return result;
    }
}
