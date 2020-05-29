package me.xyz.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.xyz.dto.QueryCriteria;
import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.annotation.Log;
import me.zhengjie.modules.system.service.dto.DeptDto;
import me.zhengjie.utils.PageUtil;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import me.zhengjie.modules.system.service.dto.DeptQueryCriteria;

import java.util.List;

/**
 * web链路数据测试类
 * */

@RestController
@RequiredArgsConstructor // 所需要参数的构造函数
@Api(tags = "自定义：链路测试")
@RequestMapping("/api/self")
public class AFirstController {

    /**
     * restController和controller
     * */

    /**
     * 注解说明
     * @PreAuthorize - springSecurity中控制方法访问权限的注解，即拥有什么权限的角色能访问此方法
     * */

/*    @Log("链路测试")
    @ApiOperation("链路测试")
    @GetMapping // 默认的方法
    @PreAuthorize("@el.check('user:list')")
    public ResponseEntity<Object> query(String id){

        System.out.println(id);
        // 先使用不带参数的请求
        String result = "来自后台";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }*/

    @AnonymousAccess // 不要token验证
    @Log("查询部门")
    @ApiOperation("查询部门")
    @GetMapping
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> query() throws Exception {

        // DeptQueryCriteria criteria
        //String  name = criteria.getName();
        String result = "来自后台";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }






}
