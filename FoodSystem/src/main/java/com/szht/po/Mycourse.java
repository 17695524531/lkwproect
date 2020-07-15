package com.szht.po;

public class Mycourse {
    private String userzyklbmc;
    private String userzykmc;
    private String userzykxs;
    private String userphone;
    private String userzygrad;
    private String xktime;
    public Mycourse() {
        super();
    }

    public Mycourse(String userzyklbmc, String userzykmc, String userzykxs, String userphone, String userzygrad, String xktime) {
        this.userzyklbmc = userzyklbmc;
        this.userzykmc = userzykmc;
        this.userzykxs = userzykxs;
        this.userphone = userphone;
        this.userzygrad = userzygrad;
        this.xktime = xktime;
    }

    public String getUserzyklbmc() {
        return userzyklbmc;
    }

    public void setUserzyklbmc(String userzyklbmc) {
        this.userzyklbmc = userzyklbmc;
    }

    public String getUserzykmc() {
        return userzykmc;
    }

    public void setUserzykmc(String userzykmc) {
        this.userzykmc = userzykmc;
    }

    public String getUserzykxs() {
        return userzykxs;
    }

    public void setUserzykxs(String userzykxs) {
        this.userzykxs = userzykxs;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUserzygrad() {
        return userzygrad;
    }

    public void setUserzygrad(String userzygrad) {
        this.userzygrad = userzygrad;
    }

    public String getXktime() {
        return xktime;
    }

    public void setXktime(String xktime) {
        this.xktime = xktime;
    }

    @Override
    public String toString() {
        return "Mycourse{" +
                "userzyklbmc='" + userzyklbmc + '\'' +
                ", userzykmc='" + userzykmc + '\'' +
                ", userzykxs='" + userzykxs + '\'' +
                ", userphone='" + userphone + '\'' +
                ", userzygrad='" + userzygrad + '\'' +
                ", xktime='" + xktime + '\'' +
                '}';
    }
}
