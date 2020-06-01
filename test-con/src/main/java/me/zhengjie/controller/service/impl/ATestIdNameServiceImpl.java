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
package me.zhengjie.controller.service.impl;

import me.zhengjie.controller.domain.ATestIdName;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.controller.repository.ATestIdNameRepository;
import me.zhengjie.controller.service.ATestIdNameService;
import me.zhengjie.controller.service.dto.ATestIdNameDto;
import me.zhengjie.controller.service.dto.ATestIdNameQueryCriteria;
import me.zhengjie.controller.service.mapstruct.ATestIdNameMapper;
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
* @author genCrud
* @date 2020-06-01
**/
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ATestIdNameServiceImpl implements ATestIdNameService {

    private final ATestIdNameRepository aTestIdNameRepository;
    private final ATestIdNameMapper aTestIdNameMapper;

    @Override
    public Map<String,Object> queryAll(ATestIdNameQueryCriteria criteria, Pageable pageable){
        Page<ATestIdName> page = aTestIdNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(aTestIdNameMapper::toDto));
    }

    @Override
    public List<ATestIdNameDto> queryAll(ATestIdNameQueryCriteria criteria){
        return aTestIdNameMapper.toDto(aTestIdNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    public ATestIdNameDto findById(Long id) {
        ATestIdName aTestIdName = aTestIdNameRepository.findById(id).orElseGet(ATestIdName::new);
        ValidationUtil.isNull(aTestIdName.getId(),"ATestIdName","id",id);
        return aTestIdNameMapper.toDto(aTestIdName);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ATestIdNameDto create(ATestIdName resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return aTestIdNameMapper.toDto(aTestIdNameRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(ATestIdName resources) {
        ATestIdName aTestIdName = aTestIdNameRepository.findById(resources.getId()).orElseGet(ATestIdName::new);
        ValidationUtil.isNull( aTestIdName.getId(),"ATestIdName","id",resources.getId());
        aTestIdName.copy(resources);
        aTestIdNameRepository.save(aTestIdName);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            aTestIdNameRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<ATestIdNameDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (ATestIdNameDto aTestIdName : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("名字", aTestIdName.getName());
            map.put("地址", aTestIdName.getAddr());
            map.put("手机号", aTestIdName.getPhone());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}