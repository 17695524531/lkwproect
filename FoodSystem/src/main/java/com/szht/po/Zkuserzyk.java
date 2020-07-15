package com.szht.po;

public class Zkuserzyk {
    private String id;
    private String userzyklbdm;
    private String userzyklbmc;
    private String userzykxs;
    private String userphone;
    private String userzygrad;
    private String xktime;
    public Zkuserzyk() {
        super();
    }

    public Zkuserzyk(String userzyklbdm, String userzyklbmc, String userzykxs, String userphone, String userzygrad) {
        this.userzyklbdm = userzyklbdm;
        this.userzyklbmc = userzyklbmc;
        this.userzykxs = userzykxs;
        this.userphone = userphone;
        this.userzygrad = userzygrad;
    }

    public Zkuserzyk(String id, String userzyklbdm, String userzyklbmc, String userzykxs, String userphone, String userzygrad, String xktime) {
        this.id = id;
        this.userzyklbdm = userzyklbdm;
        this.userzyklbmc = userzyklbmc;
        this.userzykxs = userzykxs;
        this.userphone = userphone;
        this.userzygrad = userzygrad;
        this.xktime = xktime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserzyklbdm() {
        return userzyklbdm;
    }

    public void setUserzyklbdm(String userzyklbdm) {
        this.userzyklbdm = userzyklbdm;
    }

    public String getUserzyklbmc() {
        return userzyklbmc;
    }

    public void setUserzyklbmc(String userzyklbmc) {
        this.userzyklbmc = userzyklbmc;
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
        return "Zkuserzyk{" +
                "id='" + id + '\'' +
                ", userzyklbdm='" + userzyklbdm + '\'' +
                ", userzyklbmc='" + userzyklbmc + '\'' +
                ", userzykxs='" + userzykxs + '\'' +
                ", userphone='" + userphone + '\'' +
                ", userzygrad='" + userzygrad + '\'' +
                ", xktime='" + xktime + '\'' +
                '}';
    }
}
