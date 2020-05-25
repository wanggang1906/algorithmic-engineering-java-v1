package me.xyz.dto;

import lombok.Data;
import me.zhengjie.annotation.Query;

@Data
public class QueryCriteria {

    @Query
    private String id;

    @Query
    private String name;


}
