package com.szht.utils;


import com.sun.xml.internal.messaging.saaj.util.Base64;
import org.springframework.stereotype.Component;
import sun.misc.BASE64Encoder;
@Component
public class BaseEcnodeUtil {
    public static  String setEncrypted(String value){
       if (value==null){
           return null;
       }
       return new BASE64Encoder().encodeBuffer(value.getBytes());
    }
}
