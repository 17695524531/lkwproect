package com.szht.po;

public class Zkalldata {
    private String zylbmc;
    private String zymc;
    private String zyxs;

    public Zkalldata() {
        super();
    }

    public Zkalldata(String zylbmc, String zymc, String zyxs) {
        this.zylbmc = zylbmc;
        this.zymc = zymc;
        this.zyxs = zyxs;
    }

    public String getZylbmc() {
        return zylbmc;
    }

    public void setZylbmc(String zylbmc) {
        this.zylbmc = zylbmc;
    }

    public String getZymc() {
        return zymc;
    }

    public void setZymc(String zymc) {
        this.zymc = zymc;
    }

    public String getZyxs() {
        return zyxs;
    }

    public void setZyxs(String zyxs) {
        this.zyxs = zyxs;
    }

    @Override
    public String toString() {
        return "Zkalldata{" +
                "zylbmc='" + zylbmc + '\'' +
                ", zymc='" + zymc + '\'' +
                ", zyxs='" + zyxs + '\'' +
                '}';
    }
}
