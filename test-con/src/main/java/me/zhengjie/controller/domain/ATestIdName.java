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
package me.zhengjie.controller.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.persistence.*;
import javax.validation.constraints.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.annotations.*;
import java.io.Serializable;

/**
* @website https://docs.auauz.net
* @description /
* @author genCrud
* @date 2020-06-01
**/
@Entity
@Data
@Table(name="a_test_id_name")
public class ATestIdName implements Serializable {

    @Id
    @Column(name = "id")
    //@CreationTimestamp
    @ApiModelProperty(value = "ID")
    private Long id;

    @Column(name = "name")
    //@CreationTimestamp
    @ApiModelProperty(value = "名字")
    private String name;

    @Column(name = "addr")
    @ApiModelProperty(value = "地址")
    private String addr;

    @Column(name = "phone")
    @ApiModelProperty(value = "手机号")
    private String phone;

    public void copy(ATestIdName source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}