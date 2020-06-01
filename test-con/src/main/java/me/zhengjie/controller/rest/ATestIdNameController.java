/*
*  Copyright 2019-2020 Zheng Jie
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/
package me.zhengjie.controller.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.controller.domain.ATestIdName;
import me.zhengjie.controller.service.ATestIdNameService;
import me.zhengjie.controller.service.dto.ATestIdNameQueryCriteria;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://docs.auauz.net
* @author genCrud
* @date 2020-06-01
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "gencrud管理")
@RequestMapping("/api/aTestIdName")
public class ATestIdNameController {

    private final ATestIdNameService aTestIdNameService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('aTestIdName:list')")
    public void download(HttpServletResponse response, ATestIdNameQueryCriteria criteria) throws IOException {
        aTestIdNameService.download(aTestIdNameService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询gencrud")
    @ApiOperation("查询gencrud")
    @PreAuthorize("@el.check('aTestIdName:list')")
    public ResponseEntity<Object> query(ATestIdNameQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(aTestIdNameService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增gencrud")
    @ApiOperation("新增gencrud")
    @PreAuthorize("@el.check('aTestIdName:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody ATestIdName resources){
        return new ResponseEntity<>(aTestIdNameService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改gencrud")
    @ApiOperation("修改gencrud")
    @PreAuthorize("@el.check('aTestIdName:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody ATestIdName resources){
        aTestIdNameService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除gencrud")
    @ApiOperation("删除gencrud")
    @PreAuthorize("@el.check('aTestIdName:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        aTestIdNameService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}