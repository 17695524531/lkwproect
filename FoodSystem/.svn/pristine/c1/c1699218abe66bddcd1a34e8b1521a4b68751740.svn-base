package com.szht.serviceimpl;

import com.szht.dao.HomePageDao;
import com.szht.po.*;
import com.szht.service.HomePageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("homepageservice")
public class HomePageServieImpl implements HomePageService {
    @Autowired
    private HomePageDao homePageDao;

    @Override
    public List<Zkzylb> getzkzylbdata() {
        return homePageDao.getzkzylbdata();
    }

    @Override
    public int getzkyxzycount() {
        return homePageDao.getzkyxzycount();
    }

    @Override
    public List<Zkzylb> getzkyxzylb() {
        return homePageDao.getzkyxzylb();
    }

    @Override
    public List<Zkuserzyk> getUserxkzyByphone(String userphone) {
        List<Zkuserzyk> list = new ArrayList<>();
        list = homePageDao.getUserxkzyByphone(userphone.trim());
        return list;
    }

    @Override
    public String getUserzykDmByname(String lbmc, String fl) {
        String zykdm = null;
        if ("zk".equals(fl.trim())) {
            zykdm = homePageDao.getUserzykDmByname(lbmc.trim());
        } else if ("bk".equals(fl.trim())) {
            zykdm = homePageDao.getbkUserzykDmname(lbmc.trim());
        }
        return zykdm;
    }

    @Override
    public int saveUserZkZy(String id, String userzyklbdm, String zymc, String zyxs, String userphone, String userzygrad) {
        return homePageDao.saveUserZkZy(id.trim(), userzyklbdm.trim(), zymc.trim(), zyxs.trim(), userphone.trim(), userzygrad.trim());
    }

    @Override
    public List<Zkyxzy> queryzkkc(String lb, String zymc, String xs) {
        String lbdm = null;
        List<Zkyxzy> list = new ArrayList<>();
        list = homePageDao.queryzkkc(lb, zymc, xs);
        return list;
    }

    @Override
    public List<Zkyxzy> getzkyxzydatanoquery(Integer page, Integer limit) {
        Integer pagesize = (page - 1) * limit + 1;
        Integer rowcount = page * limit;
        return homePageDao.getzkyxzydata(pagesize, rowcount);
    }

    @Override
    public List<Zkyxzy> getqueryzkzy(Integer page, Integer limit, Object lbmc, Object zymc, Object xs) {
        String xsmc = String.valueOf(xs);
        String lb = String.valueOf(lbmc);
        String zy = String.valueOf(zymc);
        Integer pagesize = (page - 1) * limit + 1;
        Integer rowcount = page * limit;
        if ("全部".equals(lb)) {
            lb = "00";
        }
        List<Zkzylb> zklblist = homePageDao.getzkzylbdata();
        for (Zkzylb zklb : zklblist) {
            if (zklb.getZylbmc().equals(lb.trim())) {
                lb = zklb.getZylbdm();
            }
        }
        return homePageDao.getqueryzkyxzydata(pagesize, rowcount, lb, zy, xsmc);
    }

    @Override
    public int getZykQueryCount(Object lbmc, Object zymc, Object xs) {
        String xsmc = String.valueOf(xs);
        String lb = String.valueOf(lbmc);
        String zy = String.valueOf(zymc);
        if ("全部".equals(lb)) {
            lb = "00";
        }
        List<Zkzylb> zklblist = homePageDao.getzkzylbdata();
        for (Zkzylb zklb : zklblist) {
            if (zklb.getZylbmc().equals(lb.trim())) {
                lb = zklb.getZylbdm();
            }
        }
        return homePageDao.getZykQueryCount(lb, zy, xsmc);
    }

    @Override
    public List<Bkzylb> getbkyxzylb() {
        return homePageDao.getbkyxzylb();
    }

    @Override
    public List<Bkyxzy> getzqbzydata(Integer page, Integer limit) {
        Integer pagesize = (page - 1) * limit + 1;
        Integer rowcount = page * limit;
        return homePageDao.getzqbzydata(pagesize, rowcount);
    }

    @Override
    public int getzqbzycount() {
        return homePageDao.getzqbzycount();
    }

    @Override
    public List<Bkzylb> getzqbzylbdata() {
        return homePageDao.getbkyxzylb();
    }

    @Override
    public List<Bkyxzy> getquerybkzy(Integer page, Integer limit, Object lbmc, Object zymc, Object xs) {
        String xsmc = String.valueOf(xs);
        String lb = String.valueOf(lbmc);
        String zy = String.valueOf(zymc);
        Integer pagesize = (page - 1) * limit + 1;
        Integer rowcount = page * limit;
        if ("全部".equals(lb)) {
            lb = "00";
        }
        List<Bkzylb> bkyxzyList = homePageDao.getbklbzydata();
        for (Bkzylb bk : bkyxzyList) {
            if (bk.getZylbmc().equals(lb.trim())) {
                lb = bk.getZylbdm();
            }
        }
        return homePageDao.getquerybkzy(pagesize, rowcount, lb, zy, xsmc);
    }

    @Override
    public int getBkZykQueryCount(Object lbmc, Object zymc, Object xs) {
        String xsmc = String.valueOf(xs);
        String lb = String.valueOf(lbmc);
        String zy = String.valueOf(zymc);
        if ("全部".equals(lb)) {
            lb = "00";
        }
        List<Bkzylb> bkyxzyList = homePageDao.getbklbzydata();

        for (Bkzylb bk : bkyxzyList) {
            if (bk.getZylbmc().equals(lb.trim())) {
                lb = bk.getZylbdm();
            }
        }
        return homePageDao.getBkZykQueryCount(lb, zy, xsmc);
    }

    @Override
    public List<Zkuserzyk> getMyCoursedata(Integer page, Integer limit) {
        Integer pagesize = (page - 1) * limit + 1;
        Integer rowcount = page * limit;
        return homePageDao.getMyCoursedata(pagesize, rowcount);
    }

    @Override
    public String getbklbmcBylbdm(String userzyklbdm) {
        return homePageDao.getbklbmcBylbdm(userzyklbdm);
    }

    @Override
    public String getzklbmcBylbdm(String userzyklbdm) {
        return homePageDao.getzklbmcBylbdm(userzyklbdm);
    }

    @Override
    public int getuserzycount() {
        return homePageDao.getuserzycount();
    }

}
