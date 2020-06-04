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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequiredArgsConstructor // 所需要参数的构造函数
@Api(tags = "自定义：链路测试")
@RequestMapping("/api/con/self")
/**
 * wgcrud请求测试
 * */
public class BTestController03 {


    @ApiOperation("测试请求数据")
    @GetMapping
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> query() throws Exception {
        // crud获取数据
        HashMap<String,String> tableMap1 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };
        HashMap<String,String> tableMap3 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };
        HashMap<String,String> tableMap4 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };

/*
        // guava的方式
        Map<String, Integer> left = ImmutableMap.of("a", 1, "b", 2, "c", 3);
        //或者
        Map<String, String> test = ImmutableMap.<String, String>builder()
                .put("k1", "v1")
                .put("k2", "v2")
        ...
        .build();*/

        //HashMap<String,String> tableMap2 = new HashMap<>();
        List<HashMap<String,String>> result = new ArrayList<HashMap<String, String>>();
        result.add(tableMap1);
        result.add(tableMap3);
        result.add(tableMap4);

        return new ResponseEntity<>(result, HttpStatus.OK);
    }



    @ApiOperation("测试请求数据-带参数")
    @GetMapping("/param")
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> queryOfParam(@RequestParam("id")String id) {
        // crud获取数据
        HashMap<String,String> tableMap1 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };
        HashMap<String,String> tableMap3 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };
        HashMap<String,String> tableMap4 = new HashMap<String,String>(){
            { put("id","2"); }
            { put("name","name"); }
        };

        System.out.println(id);

        //HashMap<String,String> tableMap2 = new HashMap<>();
        List<HashMap<String,String>> result = new ArrayList<HashMap<String, String>>();
        result.add(tableMap1);
        result.add(tableMap3);
        result.add(tableMap4);

        return new ResponseEntity<>(result, HttpStatus.OK);
    }



    @ApiOperation("图片上传")
    @PostMapping("/upload")
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity<Object> uploadFile(@RequestParam("file") MultipartFile pictureFile){
        // 图片文件上传

        // 把有效的图片重命名，存储，返回存储路径和文件名
        if(!pictureFile.isEmpty()){
            System.out.println("土拍你");
            // 存储图片
        }
        return new ResponseEntity<>("ok",HttpStatus.OK);
    }

}
