package com.idea.spbdemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@MapperScan(basePackages ={"com.idea.spbdemo.dao.mapper"})
@EnableEurekaClient
@EnableCaching
public class SpbDemoApplication {
    /**
     * Cache
     * 1.@EnableCacheable 开启注解版的缓存
     * 2.常用的注解
     * @Cacheable
     * @CacheEvict
     * @CachePut
     * @param args
     */

    public static void main(String[] args) {
        SpringApplication.run(SpbDemoApplication.class, args);
    }
}


