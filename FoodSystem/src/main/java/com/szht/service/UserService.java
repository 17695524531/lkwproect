package com.szht.service;

import com.szht.po.User;
import org.springframework.stereotype.Service;

public interface UserService {
    public User checkuserexite(String username, String password);

    int regUser(String id,String userid,String username, String password, String phone, String realname);

    User findUser(String phone);

    User getusernamepasswordByphone(String phone);

    boolean updateUser(String newpwd, String phone);

    boolean forgetfindUser(String phone);

    boolean checkOldPwd(String phone, String oldpwd);

    String getUserphoneBynp(String username,String password);
}
