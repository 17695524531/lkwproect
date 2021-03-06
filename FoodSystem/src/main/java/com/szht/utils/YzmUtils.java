package com.szht.utils;

import com.zhenzi.sms.ZhenziSmsClient;
import org.apache.ibatis.mapping.ResultMap;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class YzmUtils {
    public Map getYzm(String phone, String apiUrl, String appid, String appSecret) throws Exception {
        ZhenziSmsClient client = new ZhenziSmsClient(apiUrl.trim(), appid.trim(), appSecret.trim());
        long dx = (Math.round((Math.random() + 1) * 1000));
        HashMap<String, String> map = new HashMap<>();
        map.put("message", "津诚教育:您的验证码是:" + dx);
        map.put("number", phone.trim());
        String send = client.send(map);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("dxcode", dx);
        resultMap.put("sendresult", send);
        return resultMap;
    }
}
