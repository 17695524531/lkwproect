package com.szht.po;

public class Bkyxzy {
    private String  id;
    private String  zylb;
    private String  zymc;
    private String  zyxs;

    public Bkyxzy() {
        super();
    }

    public Bkyxzy(String zylb) {
        this.zylb = zylb;
    }

    public Bkyxzy(String id, String zylb, String zymc, String zyxs) {
        this.id = id;
        this.zylb = zylb;
        this.zymc = zymc;
        this.zyxs = zyxs;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getZylb() {
        return zylb;
    }

    public void setZylb(String zylb) {
        this.zylb = zylb;
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
        return "Bkyxzy{" +
                "id='" + id + '\'' +
                ", zylb='" + zylb + '\'' +
                ", zymc='" + zymc + '\'' +
                ", zyxs='" + zyxs + '\'' +
                '}';
    }
}
