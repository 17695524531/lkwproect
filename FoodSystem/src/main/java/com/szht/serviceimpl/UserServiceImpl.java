package com.szht.serviceimpl;

import com.szht.dao.UserDao;
import com.szht.po.User;
import com.szht.service.UserService;
import com.szht.utils.UUidUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Service("userservice")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User checkuserexite(String username, String password) {
        User user = userDao.checkuserexite(username.trim(), password.trim());
        return user;
    }

    @Override
    public int regUser(String id, String userid, String username, String password, String phone, String realname) {
        int reg = userDao.regUser(id.trim(), userid.trim(), username.trim(), password.trim(), phone.trim(), realname.trim());
        return reg;
    }

    @Override
    public User findUser(String phone) {
        return userDao.findUser(phone.trim());
    }

    @Override
    public User getusernamepasswordByphone(String phone) {
        return userDao.getusernamepasswordByphone(phone.trim());
    }

    @Override
    public boolean updateUser(String newpwd, String phone) {
        boolean flag = false;
        int i = userDao.updateUser(newpwd.trim(), phone.trim());
        if (i > 0) {
            flag = true;
        } else {
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean forgetfindUser(String phone) {
        boolean flag = false;
        User user = userDao.forgetfindUser(phone.trim());
        if (user == null) {
            flag = false;
        }else {
            flag=true;
        }
        return flag;
    }

    @Override
    public boolean checkOldPwd(String phone, String oldpwd) {
        boolean flag=false;
        User user=userDao.checkOldPwd(phone.trim());
        if(oldpwd.equals(user.getUserpassword())){
            flag=true;
        }else{
            flag=false;
        }
        return flag;
    }

    @Override
    public String getUserphoneBynp(String username, String password) {
        return userDao.getUserphoneBynp(username,password);
    }
}
