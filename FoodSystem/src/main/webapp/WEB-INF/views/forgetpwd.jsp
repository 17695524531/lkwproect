<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/27 0027
  Time: 下午 13:52
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/forgetpwd.css">
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
    <title>津诚教育-忘记密码</title>
    <link rel="icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg"
          type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <link rel="Bookmark" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
</head>
<body>
<div id="app" v-loading.fullscreen.lock="bodyloading" :element-loading-text="loadingtext"
     element-loading-spinner="el-icon-loading" element-loading-background="rgba(48,47,47,0.6)">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12" id="forget-head">
                <el-steps :active="current" finish-status="success" simple style="margin-top: 20px">
                    <el-step title="短信验证"></el-step>
                    <el-step title="重置密码"></el-step>
                    <el-step title="完成"></el-step>
                </el-steps>
            </div>
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12" id="forget-body">
                <div style="min-width: 1000px">
                    <template>
                        <el-carousel height="470px" :initial-index="cancount" arrow="never" ref="carousel"
                                     indicator-position="none" :autoplay="false">
                            <el-carousel-item>
                                <div class="firsttitle">
                                    <span>忘记密码</span>
                                </div>
                                <el-form status-icon :model="firstcarou" :rules="firstrules" ref="firstcarou"
                                         label-width="100px"
                                         id="firstform">
                                    <el-form-item label="手机号码:" prop="firstphone">
                                        <el-input auto-complete="on" autosize v-model="firstcarou.firstphone"
                                                  placeholder="手机号码" name="firstphone"></el-input>
                                    </el-form-item>
                                    <el-form-item label="验证码:" prop="firstyzm">
                                        <el-input auto-complete="on" autosize v-model="firstcarou.firstyzm"
                                                  placeholder="验证码"
                                                  style="width: 82.5%" name="firstyzm"></el-input>
                                        <span v-if="getyzmmsg" style="color: #3EBEC7" id="forfirstyzm"
                                              @mouseover="overgetyzm" @click="clickgetyzm">{{yzmmess}}</span>
                                        <span v-if="ishowrefs" style="color:#C0C4CC">{{refsmsg}}</span>
                                        <span v-if="isshowcount" style="color: #C0C4CC">{{count}}s</span>
                                    </el-form-item>
                                </el-form>
                            </el-carousel-item>
                            <el-carousel-item>
                                <div class="twocarousel">
                                    <div>
                                        <span class="find">找回</span><span class="findpwd">密码</span><span
                                            class="pleaseupdate">请您修改</span>
                                    </div>
                                    <br>
                                    <el-form :model="twocarouform" :rules="tworules" ref="twocarouform"
                                             label-width="100px">
                                        <el-form-item label="新密码:" prop="twonewpwd">
                                            <el-input type="password" auto-complete="on" autosize
                                                      v-model="twocarouform.twonewpwd" placeholder="新密码"
                                                      name="twonewpwd"></el-input>
                                        </el-form-item>
                                        <el-form-item label="确认新密码:" prop="suretwonewpwd">
                                            <el-input type="password" auto-complete="on" autosize
                                                      v-model="twocarouform.suretwonewpwd" placeholder="确认新密码"
                                                      name="suretwonewpwd"></el-input>
                                        </el-form-item>
                                        <el-form-item>
                                            <el-button type="success" style="width: 100%">确认修改</el-button>
                                        </el-form-item>
                                    </el-form>
                                </div>
                            </el-carousel-item>
                            <el-carousel-item>
                                <div class="threecarouse">
                                    <i class="el-icon-circle-check" id="successtap"></i><br>
                                    <span class="updatesucce">修改成功</span>
                                </div>
                            </el-carousel-item>
                        </el-carousel>
                        <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12" id="forget-footer">
                            <template>
                                <i-button type="primary" @click="upStep" class="upstepbtn" v-show="showup">上一步
                                </i-button>
                                <i-button type="primary" @click="nextStep" class="nextstepbtn" v-show="shownext">
                                    {{stepspan}}
                                </i-button>
                            </template>
                        </div>
                    </template>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/forgetpwd.js"></script>
<script>
    window.onload = function () {
        $("#firstform").css("min-width", "900px");
    }
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
