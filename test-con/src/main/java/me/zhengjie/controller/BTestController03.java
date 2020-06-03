package me.zhengjie.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor // 所需要参数的构造函数
@Api(tags = "自定义：链路测试")
@RequestMapping("/api/con/self")
/**
 * wgcrud请求测试
 * */
public class BTestController03 {


    @ApiOperation("查询部门")
    @GetMapping
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> query() throws Exception {

        // DeptQueryCriteria criteria
        //String  name = criteria.getName();
        String result = "来自后台";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @ApiOperation("图片上传")
    @PostMapping("/upload")
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> uploadFile(@RequestParam MultipartFile pictureFile){
        // 图片文件上传

        // 把有效的图片重命名，存储，返回存储路径和文件名
        if(!pictureFile.isEmpty()){
            // savePictureFile
        }
        return new ResponseEntity<>("ok",HttpStatus.OK);
    }

}
