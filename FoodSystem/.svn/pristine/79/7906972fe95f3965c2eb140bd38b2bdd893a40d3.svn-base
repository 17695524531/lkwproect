<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/30 0030
  Time: 上午 9:29
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
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/elementUi.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/modules/layui-icon-extend/iconfont.css"/>--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/fonts/iconfont.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iview.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iconfont.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/zygqz.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/simplepop.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/aside/css/left-side-menu.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/aside/font/iconfont.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue-router.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/iview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/element-ui/elementUi.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/spin.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/html5.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <script src="https://as.alipayobjects.com/g/component/fastclick/1.0.6/fastclick.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/promise.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/aside/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/aside/js/left-side-menu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/simplepop.js"></script>
    <title>-津诚教育-专业高起专</title>
    <link rel="icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg"
          type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <link rel="Bookmark" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
</head>
<body>
<div id="app">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm112 layui-col-xs12">
                <template>
                    <Row style="padding-top: 20px;padding-left:3%;padding-right: 3%">
                        <i-col span="22" style="width: 100%">
                            <Card :bordered="true" dis-hover style="width: 100%;">
                                <p slot="title" style="font-weight: bold">
                                    <i class="el-icon-reading" style="color: #5FD2B5"></i>&nbsp;高起专-课程查询
                                </p>
                                <div class="car-body">
                                    <el-form :model="gqzzyform" :inline="true" ref="gqzzyform">
                                        <el-form-item label="类别" style="margin-left: 5%">
                                            <el-select v-model="gqzzyform.lb" placeholer="类别" clearable id="lb">
                                                <el-option label="全部" value="00"></el-option>
                                                <el-option v-for="fl in zyfl" :label="fl.zylbmc" :value="fl.zylbdm"
                                                           :key="fl.id"></el-option>
                                            </el-select>
                                        </el-form-item>
                                        <el-form-item label="专业" style="margin-left: 7%">
                                            <el-input v-model="gqzzyform.zy" placeholder="专业"
                                                      name="zy" id="zy"></el-input>
                                        </el-form-item>
                                        <el-form-item label="形式" style="margin-left: 7%">
                                            <el-input v-model="gqzzyform.xs" placeholder="形式"
                                                      name="xs" id="xs"></el-input>
                                        </el-form-item>
                                    </el-form>
                                    <br>
                                    <div class="btndiv" align="center">
                                        <button class="layui-btn" data-type="reload" id="querybtn"
                                                style="width: 16%;border-radius: 4px 4px 4px 4px;height: 40px;margin-top: -4px">
                                            查询
                                        </button>
                                        <el-button type="info" style="width: 16%" @click="restform()">重置</el-button>
                                    </div>
                                    <br>
                                    <br>
                                </div>
                            </Card>
                        </i-col>
                    </Row>
                </template>
                <template>
                    <Row style="padding-top: 20px;padding-left:3%;padding-right: 3%">
                        <i-col span="22" style="width: 100%">
                            <Card :bordered="true" dis-hover style="width: 100%;">
                                <p slot="title" style="font-weight: bold">
                                    <i class="el-icon-view" style="color: #5FD2B5"></i>&nbsp;高起专-课程显示
                                </p>
                                <div class="show-body" id="datatable" v-loading="isshow">
                                    <table class="layui-hide" id="show-data" lay-filter="kc-show"></table>
                                </div>
                            </Card>
                        </i-col>
                    </Row>
                </template>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/zygqzpage.js"></script>
<script type="text/html" id="bardemo">
    <a class="layui-btn layui-btn-sm" lay-event="xk">选课</a>
</script>
<script>
    window.onload = function () {
        $("html").css("background", "white");
    }
</script>
</body>
</html>
