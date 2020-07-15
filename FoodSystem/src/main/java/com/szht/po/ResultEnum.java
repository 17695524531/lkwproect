package com.szht.po;

public enum ResultEnum {
    UNKNOWN_ERROR("-1", "未知错误"),
    SUCCESS("200", "成功"),
    PARAM_ERROR("201", "参数不合法"),
    DATABASE_ERROR("202", "数据库异常"),
    NOT_FOUND("404","不存在");
    private String code;
    private String msg;

    ResultEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "ResultEnum{" +
                "code='" + code + '\'' +
                ", msg='" + msg + '\'' +
                '}';
    }
}
