package com.szht.po;

public class Bkzylb {
    private String id;
    private String zylbdm;
    private String zylbmc;

    public Bkzylb() {
        super();
    }

    public Bkzylb(String id, String zylbdm, String zylbmc) {
        this.id = id;
        this.zylbdm = zylbdm;
        this.zylbmc = zylbmc;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getZylbdm() {
        return zylbdm;
    }

    public void setZylbdm(String zylbdm) {
        this.zylbdm = zylbdm;
    }

    public String getZylbmc() {
        return zylbmc;
    }

    public void setZylbmc(String zylbmc) {
        this.zylbmc = zylbmc;
    }

    @Override
    public String toString() {
        return "Bkzylb{" +
                "id='" + id + '\'' +
                ", zylbdm='" + zylbdm + '\'' +
                ", zylbmc='" + zylbmc + '\'' +
                '}';
    }
}
