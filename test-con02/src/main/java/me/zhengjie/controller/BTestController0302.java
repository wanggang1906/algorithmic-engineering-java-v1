package me.zhengjie.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor // 所需要参数的构造函数
@Api(tags = "自定义：链路测试")
@RequestMapping("/api/con/self0302")
public class BTestController0302 {


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
