<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/27 0027
  Time: 下午 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/elementUi.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/modules/layui-icon-extend/iconfont.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/fonts/iconfont.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iview.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue-router.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/iview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/element-ui/elementUi.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echarts.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echarts.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/html5.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue-router.js"></script>
    <script src="https://as.alipayobjects.com/g/component/fastclick/1.0.6/fastclick.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/promise.min.js"></script>
    <title>津诚教育-登录</title>
    <link rel="icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg"
          type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <link rel="Bookmark" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
</head>
<body style="background-image: url('img/TB14xWackxz61VjSZFrXXXeLFXa-2400-1120%20(1).jpg')">
<div id="app" v-loading="bodyloading" :element-loading-text="loadingmsg" element-loading-spinner="el-icon-loading">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-xs12 layui-col-md12 layui-col-lg12  layui-col-sm12" id="left">
                <div class="layui-card">
                    <div class="layui-card-header">
                        <span>账号密码登录</span>
                    </div>
                    <div class="layui-card-body">
                        <el-form status-icon :model="loginform" ref="loginform" :rules="loginrules"
                                 label-width="100px"
                                 class="page-login-form">
                            <el-form-item label="用户名:" prop="username">
                                <el-input auto-complete="on" autosize v-model="loginform.username"
                                          placeholder="请输入用户名" name="username"></el-input>
                            </el-form-item>
                            <el-form-item label="密码:" prop="password">
                                <el-input type="password" auto-complete="on" autosize v-model="loginform.password"
                                          placeholder="请输入密码" name="password"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" class="loginbtn" :loading="isloading"
                                           @click="login('loginform')" @keyup.enter="login('loginform')">登录
                                </el-button>
                            </el-form-item>
                            <el-form-item>
                                <div class="login-tishi" style="min-width: 300px;margin-left: -20%">
                                    <a href="/FoodSystem/goforget" class="forgetpass">忘记密码</a>
                                    <a href="/FoodSystem/goreg" class="goreg">去注册</a>
                                </div>
                            </el-form-item>
                            <br/>
                        </el-form>
                    </div>
                    <div class="login-footer">
                        <el-row :gutter="9">
                            <template>
                                <el-card shadow="never" style="width: 98.7%;margin-left: 0.55%;margin-top: -60px;">
                                    <div class="text item">
                                        <div style="line-height: 100%;position: absolute;">
                                            其他登录方式
                                        </div>
                                        <div align="center">
                                            <i class="iconfont icon-yanzhengma"
                                               @mouseover="yzover" id="yztb"
                                               @click="dxloginfanct"
                                               @mouseout="dxloginout">
                                            </i><br>
                                            <span style="font-size: 13px" id="yzspan">验证码登录</span>
                                        </div>
                                    </div>
                                </el-card>
                            </template>
                        </el-row>
                    </div>
                </div>
                <el-dialog title="短信验证码登录" :visible.sync="dxlogin" width="660px" :modal-append-to-body="false"
                           id="dxlogindialog">
                    <el-form status-icon :model="dxloginform" :rules="dxloginformrules" ref="dxloginform"
                             label-width="100px">
                        <el-form-item label="手机号码:" prop="sjhm">
                            <el-input auto-complete="on" autosize v-model="dxloginform.sjhm"
                                      placeholder="请输入手机号码"></el-input>
                        </el-form-item>
                        <el-form-item label="验证码:" prop="yzm" inline="true">
                            <el-input auto-complete="on" v-model="dxloginform.yzm" placeholder="请输入验证码"
                                      style="width: 74%;" autosize name="yzm"></el-input>
                            <span v-if="isshowhq" style="color:#3EBEC7;" id="getyzm" @mouseover="getyzover"
                                  @click="getyzmfun">{{yzmsg}}</span>
                            <span v-if="reshowcx" style="color:#C0C4CC">{{reisshow}}</span>
                            <span v-if="isshowcount" style="color: #C0C4CC">{{count}}s</span>
                        </el-form-item>
                        <el-form-item>
                            <el-button type="primary" id="dxloginbtn" :loading="dxbtnloading"
                                       @click="yzmbtnlogin('dxloginform')">{{yzmbtnlogintext}}
                            </el-button>
                        </el-form-item>
                    </el-form>
                </el-dialog>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
<script>
    if ('addEventListener' in document) {
        document.addEventListener('DOMContentLoaded', function () {
            FastClick.attach(document.body);
        }, false);
    }
    if (!window.Promise) {
        document.writeln('<script src="https://as.alipayobjects.com/g/component/es6-promise/3.2.2/es6-promise.min.js" ' + '>' + '<' + '/' + 'script>');
    }
    window.onload = function () {
        $(".el-loading-spinner i").css({"color": "black", "font-size": "35px"});
        $(".login-footer .el-card").css("border", " 1px solid white");
    }
</script>
</body>
</html>
