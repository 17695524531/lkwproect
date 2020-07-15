package com.szht.dao;

import com.szht.po.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.UUID;

public interface UserDao {
    public User checkuserexite(@Param("username") String username, @Param("password") String password);

    public int regUser(@Param("id") String id, @Param("userid") String userid, @Param("username") String username, @Param("password") String password, @Param("phone") String phone, @Param("realname") String realname);

    public User findUser(String phone);

    User getusernamepasswordByphone(String phone);

    int updateUser(@Param("newpwd") String newpwd, @Param("phone") String phone);

    User forgetfindUser(String phone);

    User checkOldPwd(String phone);

    String getUserphoneBynp(@Param("username") String username, @Param("password") String password);
}
