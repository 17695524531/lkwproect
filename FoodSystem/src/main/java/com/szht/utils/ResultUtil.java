package com.szht.utils;

import com.szht.po.Result;
import com.szht.po.ResultEnum;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;

public class ResultUtil {
    public static Result success(Object object) {
        Result result = new Result(ResultEnum.SUCCESS.getCode(), ResultEnum.SUCCESS.getMsg());
        result.setData(object);
        return result;
    }

    public static Result success() {
        return ResultUtil.success(null);
    }

    public static Result paramError(Object object) {
        Result result = new Result(ResultEnum.PARAM_ERROR.getCode(), ResultEnum.PARAM_ERROR.getMsg());
        result.setData(object);
        return result;
    }

    public static Result paramError() {
        return ResultUtil.paramError(null);
    }

    public static Result DATABASE_ERROR(Object object) {
        Result result = new Result(ResultEnum.DATABASE_ERROR.getCode(), ResultEnum.DATABASE_ERROR.getMsg());
        result.setData(object);
        return result;
    }

    public static Result DATABASE_ERROR() {
        return ResultUtil.DATABASE_ERROR(null);
    }

    public static Result NOT_FOUND(Object object) {
        Result result = new Result(ResultEnum.NOT_FOUND.getCode(), ResultEnum.NOT_FOUND.getMsg());
        result.setData(object);
        return result;
    }

    public static Result NOT_FOUND() {
        return ResultUtil.NOT_FOUND(null);
    }
}
