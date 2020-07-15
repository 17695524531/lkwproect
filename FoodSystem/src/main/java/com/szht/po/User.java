package com.szht.po;

public class User {
    private String id;
    private String userid;
    private String username;
    private String userpassword;
    private String userrealname;
    private String userphone;
    private String regtime;

    public User() {
        super();
    }

    public User(String username, String userpassword) {
        this.username = username;
        this.userpassword = userpassword;
    }

    public User(String id, String userid, String username, String userpassword, String userrealname, String userphone, String regtime) {
        this.id = id;
        this.userid = userid;
        this.username = username;
        this.userpassword = userpassword;
        this.userrealname = userrealname;
        this.userphone = userphone;
        this.regtime = regtime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUserrealname() {
        return userrealname;
    }

    public void setUserrealname(String userrealname) {
        this.userrealname = userrealname;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getRegtime() {
        return regtime;
    }

    public void setRegtime(String regtime) {
        this.regtime = regtime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", userid='" + userid + '\'' +
                ", username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", userrealname='" + userrealname + '\'' +
                ", userphone='" + userphone + '\'' +
                ", regtime='" + regtime + '\'' +
                '}';
    }
}
