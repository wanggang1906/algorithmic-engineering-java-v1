package me.xyz.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.utils.PageUtil;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * web链路数据测试类
 * */

@Api(tags = "自定义：链路测试")
@RestController
@RequestMapping("/api/self")
@RequiredArgsConstructor
public class AFirstController {

    /**
     * restController和controller
     * */


    /**
     * 注解说明
     * @PreAuthorize - springSecurity中控制方法访问权限的注解，即拥有什么权限的角色能访问此方法
     * */

    @Log("链路测试")
    @ApiOperation("链路测试")
    @GetMapping("/test")
    @PreAuthorize("@el.check('user:list')")
    public ResponseEntity<Object> query(){

        String result = "来自后台";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }






}
