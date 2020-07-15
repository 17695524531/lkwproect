<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/27 0027
  Time: 下午 13:54
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iview.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/registe.css">
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
    <title>津诚教育-注册</title>
    <link rel="icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg"
          type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <link rel="Bookmark" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
</head>
<body style="background-image: url('img/f2c981305624b318ae729a422ade9e6a_gaitubao_1602x1200.jpg')">
<div id="app">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="reg-page">
                    <div class="reg-page-header">
                        <span>欢迎注册津诚教育</span>
                        <a href="/FoodSystem/goLoginPage" class="logintishi"
                           style="color:#1890FF;font-size: 13px;margin-left: 32%;text-decoration: none">去登录>></a>
                    </div>
                    <div class="reg-page-body">
                        <template>
                            <el-form status-icon :model="regform" ref="regform" :rules="regreules" label-width="100px"
                                     class="reg-form-page">
                                <el-form-item prop="username">
                                    <el-input auto-complete="on" autosize placeholder="用户名" v-model="regform.username"
                                              name="username" prefix-icon="el-icon-s-custom"></el-input>
                                </el-form-item>
                                <el-form-item prop="password">
                                    <el-input type="password" auto-complete="on" autosize placeholder="密码"
                                              v-model="regform.password" name="password"
                                              prefix-icon="el-icon-lock"></el-input>
                                </el-form-item>
                                <el-form-item prop="surepassword">
                                    <el-input type="password" autosize placeholder="请再次输入你的密码"
                                              v-model="regform.surepassword" name="surepassword"
                                              prefix-icon="el-icon-lock"></el-input>
                                </el-form-item>
                                <el-form-item prop="realname">
                                    <el-input auto-complete="on" autosize placeholder="真实姓名" v-model="regform.realname"
                                              name="realname" prefix-icon="el-icon-document" @focus="promt"></el-input>
                                </el-form-item>
                                <el-form-item prop="phone">
                                    <el-input auto-complete="on" autosize placeholder="手机号码" v-model="regform.phone"
                                              name="phone" prefix-icon="el-icon-phone-outline"></el-input>
                                </el-form-item>
                                <el-form-item>
                                    <i-button type="success" id="regbtn" @click="reg('regform')">注册</i-button>
                                </el-form-item>
                                <br>
                            </el-form>
                        </template>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/register.js"></script>
<script>
    if ('addEventListener' in document) {
        document.addEventListener('DOMContentLoaded', function () {
            FastClick.attach(document.body);
        }, false);
    }
    if (!window.Promise) {
        document.writeln('<script src="https://as.alipayobjects.com/g/component/es6-promise/3.2.2/es6-promise.min.js" ' + '>' + '<' + '/' + 'script>');
    }
</script>
</body>
</html>