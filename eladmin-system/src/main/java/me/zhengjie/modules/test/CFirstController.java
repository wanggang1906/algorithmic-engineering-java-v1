package me.zhengjie.modules.test;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.annotation.Log;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequiredArgsConstructor // 所需要参数的构造函数
@Api(tags = "自定义：链路测试")
@RequestMapping("/api/sys/test/self")
public class CFirstController {

    /**
     * restController和controller
     * */

    /**
     * 注解说明
     *
     * @PreAuthorize - springSecurity中控制方法访问权限的注解，即拥有什么权限的角色能访问此方法
     */



    //@AnonymousAccess // 不要token验证 --- 似乎没影响
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