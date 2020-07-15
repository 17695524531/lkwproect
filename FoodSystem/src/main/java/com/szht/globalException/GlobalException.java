package com.szht.globalException;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.szht.po.CustomException;
import com.szht.po.ReturnViewException;
import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.javassist.NotFoundException;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@Configuration
public class GlobalException implements HandlerExceptionResolver {
    private static final Logger logger = LogManager.getLogger(GlobalException.class);

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
                                         Exception ex) {
        ModelAndView mav = new ModelAndView();
        //如果是ajax请求，就返回一个json格式的出错提示信息
        if (request.getHeader("X-Requested-With") != null) {
            try {
                response.getWriter().println("服务器出错了");
            } catch (Exception e) {
                logger.error("服务器失败时发送错误提示信息失败", e);
                logger.info(e.getMessage());
            }
            //返回一个空的ModelAndView表示已经手动生成响应
            //return null表示使用默认的处理方式，等于没处理
            return new ModelAndView();
        }else{
            return new ModelAndView("500");
        }
    }
}
