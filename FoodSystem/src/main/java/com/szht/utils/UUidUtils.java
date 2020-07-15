package com.szht.utils;

import org.springframework.stereotype.Component;

import java.util.UUID;
@Component
public class UUidUtils {
    public String  getUUid(){
        String uuid = UUID.randomUUID().toString().replace("-","");
        return uuid;
    }
}
