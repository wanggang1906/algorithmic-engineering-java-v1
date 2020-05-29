package me.zhengjie.modules.test.util;

import me.zhengjie.modules.test.CFirstController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import xyz.controller.BTestController05;


/*@Configuration
// 为带有@ConfigurationProperties注解的Bean提供有效的支持。
// 这个注解可以提供一种方便的方式来将带有@ConfigurationProperties注解的类注入为Spring容器的Bean。
@EnableConfigurationProperties(BTestController05.class) // 开启属性注入,通过@autowired注入
@ConditionalOnClass(BTestController05.class) // 判断这个类是否在classpath中存在，如果存在，才会实例化一个Bean
// The Hello bean will be created if the hello.enable property exists and has a value other than false
// or the property doesn't exist at all.
@ConditionalOnProperty(prefix="hello", value="enabled", matchIfMissing = true)*/
public class ScanModuleConfiguration {

/*    @Bean
    public BFirstController bFirstController(){
        return new BFirstController();
    }*/



    // 配置BTestController05
    // 参考
    // https://blog.csdn.net/zxc123e/article/details/80222967
    // https://blog.csdn.net/q610376681/article/details/88578155
    // https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=monline_3_dg&wd=springboot%E4%B8%ADbean%E6%B3%A8%E5%85%A5%E5%8E%9F%E7%90%86&oq=springboot%25E8%2587%25AA%25E5%258A%25A8%25E6%25B3%25A8%25E5%2585%25A5%25E5%258E%259F%25E7%2590%2586&rsv_pq=c3c3ab9c00038fdd&rsv_t=56dbQ2HE86XY7H4alcM2RqEJRnidD8vDuoiL6WFOt%2FquAKhLvhwea7Nmr0m%2FX%2Bqs%2B2Z5&rqlang=cn&rsv_enter=1&rsv_dl=tb&rsv_sug3=20&bs=springboot%E8%87%AA%E5%8A%A8%E6%B3%A8%E5%85%A5%E5%8E%9F%E7%90%86

/*    @Autowired
    private BTestController05 bTestController05;

    @Bean
    @ConditionalOnMissingBean(BTestController05.class) // 容器中如果没有Hello这个类,那么自动配置这个Hello
    public BTestController05 bTestController05(){
        return new BTestController05();
    }*/

}
