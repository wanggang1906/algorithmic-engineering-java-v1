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
package me.zhengjie.test02.service.impl;

import me.zhengjie.test02.domain.ATest02;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.test02.repository.ATest02Repository;
import me.zhengjie.test02.service.ATest02Service;
import me.zhengjie.test02.service.dto.ATest02Dto;
import me.zhengjie.test02.service.dto.ATest02QueryCriteria;
import me.zhengjie.test02.service.mapstruct.ATest02Mapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
* @website https://docs.auauz.net
* @description 服务实现
* @author test02
* @date 2020-06-02
**/
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ATest02ServiceImpl implements ATest02Service {

    private final ATest02Repository aTest02Repository;
    private final ATest02Mapper aTest02Mapper;

    @Override
    public Map<String,Object> queryAll(ATest02QueryCriteria criteria, Pageable pageable){
        Page<ATest02> page = aTest02Repository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(aTest02Mapper::toDto));
    }

    @Override
    public List<ATest02Dto> queryAll(ATest02QueryCriteria criteria){
        return aTest02Mapper.toDto(aTest02Repository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    public ATest02Dto findById(Long id) {
        ATest02 aTest02 = aTest02Repository.findById(id).orElseGet(ATest02::new);
        ValidationUtil.isNull(aTest02.getId(),"ATest02","id",id);
        return aTest02Mapper.toDto(aTest02);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ATest02Dto create(ATest02 resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return aTest02Mapper.toDto(aTest02Repository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(ATest02 resources) {
        ATest02 aTest02 = aTest02Repository.findById(resources.getId()).orElseGet(ATest02::new);
        ValidationUtil.isNull( aTest02.getId(),"ATest02","id",resources.getId());
        aTest02.copy(resources);
        aTest02Repository.save(aTest02);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            aTest02Repository.deleteById(id);
        }
    }

    @Override
    public void download(List<ATest02Dto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (ATest02Dto aTest02 : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put(" intField",  aTest02.getIntField());
            map.put(" stringIeld",  aTest02.getStringIeld());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}