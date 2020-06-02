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
package me.zhengjie.test02.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.test02.domain.ATest02;
import me.zhengjie.test02.service.ATest02Service;
import me.zhengjie.test02.service.dto.ATest02QueryCriteria;
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
* @author test02
* @date 2020-06-02
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "gen-test02管理")
@RequestMapping("/api/aTest02")
public class ATest02Controller {

    private final ATest02Service aTest02Service;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('aTest02:list')")
    public void download(HttpServletResponse response, ATest02QueryCriteria criteria) throws IOException {
        aTest02Service.download(aTest02Service.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询gen-test02")
    @ApiOperation("查询gen-test02")
    @PreAuthorize("@el.check('aTest02:list')")
    public ResponseEntity<Object> query(ATest02QueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(aTest02Service.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增gen-test02")
    @ApiOperation("新增gen-test02")
    @PreAuthorize("@el.check('aTest02:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody ATest02 resources){
        return new ResponseEntity<>(aTest02Service.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改gen-test02")
    @ApiOperation("修改gen-test02")
    @PreAuthorize("@el.check('aTest02:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody ATest02 resources){
        aTest02Service.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除gen-test02")
    @ApiOperation("删除gen-test02")
    @PreAuthorize("@el.check('aTest02:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        aTest02Service.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}