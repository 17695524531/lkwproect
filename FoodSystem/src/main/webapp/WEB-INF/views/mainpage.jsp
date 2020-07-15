<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/27 0027
  Time: 下午 13:53
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/elementUi.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/modules/layui-icon-extend/iconfont.css"/>--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/element-ui/fonts/iconfont.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iview.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/mainpage.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/aside/css/left-side-menu.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/aside/font/iconfont.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/vue-router.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/iview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/element-ui/elementUi.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/html5.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <script src="https://as.alipayobjects.com/g/component/fastclick/1.0.6/fastclick.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/promise.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/aside/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/aside/js/left-side-menu.js"></script>
    <title>-津诚教育-后台管理</title>
    <link rel="icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg"
          type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <link rel="Bookmark" href="<%=request.getContextPath() %>/img/cc72488312509d2cec0a5ce57a4423b0.jpg">
    <style>
        .el-header, .el-footer {
            background-color: #B3C0D1;
            color: #333;
            text-align: center;
            line-height: 60px;
        }

        .el-aside {
            background-color: #D3DCE6;
            color: #333;
            text-align: center;
            line-height: 200px;
        }

        .el-main {
            background-color: white;
            color: #333;
            text-align: center;
            line-height: 160px;
        }

        body > .el-container {
            margin-bottom: 40px;
        }

        .el-container:nth-child(5) .el-aside,
        .el-container:nth-child(6) .el-aside {
            line-height: 260px;
        }

        .el-container:nth-child(7) .el-aside {
            line-height: 320px;
        }
    </style>
</head>
<body>
<div id="app">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm112 layui-col-xs12" id="mainbody">
                <el-container>
                    <el-aside width="200px" id="aside">
                        <div class="left-side-menu">
                            <div class="lsm-expand-btn">
                                <div class="lsm-mini-btn">
                                    <span style="color: white;position: absolute;top: -9%;left: 3%;letter-spacing: 10px;font-size: 19px">津诚教育</span>
                                </div>
                            </div>
                            <div class="lsm-container">
                                <div class="lsm-scroll">
                                    <div class="lsm-sidebar">
                                        <ul>
                                            <li class="lsm-sidebar-item">
                                                <a style="margin-left: -56%"><i class="iconfont layui-extendshouye"
                                                                                style="font-size: 20px"></i><span>首页</span></a>
                                            </li>
                                            <li class="lsm-sidebar-item">
                                                <a style="margin-left: -44%"><i class="iconfont layui-extendxueyuan"
                                                                                style="font-size: 20px"></i><span>学院概况</span></a>
                                            </li>
                                            <li class="lsm-sidebar-item">
                                                <a style="margin-left:-26%"><i
                                                        class="iconfont layui-extendbaokao" style="font-size: 20px"></i><span>报考管理</span><i
                                                        class="my-icon lsm-sidebar-more"></i></a>
                                                <ul>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -30%"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>形式</span><i
                                                                class="my-icon lsm-sidebar-more"></i></a>
                                                        <ul>
                                                            <li>
                                                                <a href="/FoodSystem/gocrgkpage?f=crgk"
                                                                   style="margin-left: -27%;text-decoration: none"
                                                                   target="mainpage"><span>成人高考</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="/FoodSystem/gocrgkpage?f=wljy"
                                                                   style="margin-left: -27%;text-decoration: none"
                                                                   target="mainpage"><span>网络教育</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="/FoodSystem/gocrgkpage?f=gjkfdx"
                                                                   style="margin-left: -14%;text-decoration: none"
                                                                   target="mainpage"><span>国家开放大学</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="/FoodSystem/gocrgkpage?f=zk"
                                                                   style="margin-left: -40%;text-decoration: none"
                                                                   target="mainpage"><span>自考</span></a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -30%"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>层次</span><i
                                                                class="my-icon lsm-sidebar-more"></i></a>
                                                        <ul>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -35%;text-decoration: none"><span>高起专</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -35%;text-decoration: none"><span>专升本</span></a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -30%"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>专业</span><i
                                                                class="my-icon lsm-sidebar-more"></i></a>
                                                        <ul>
                                                            <li>
                                                                <a href="/FoodSystem/gozygqz"
                                                                   style="margin-left: -36%;text-decoration: none"
                                                                   style="margin-left: -36%;text-decoration: none"
                                                                   target="mainpage"><span>高起专</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="/FoodSystem/gozyzqb"
                                                                   style="margin-left: -36%;text-decoration: none"
                                                                   target="mainpage"><span>专升本</span></a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -18%"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>资料提交</span><i
                                                                class="my-icon lsm-sidebar-more"></i></a>
                                                        <ul>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -40%;text-decoration: none"><span>专科</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -40%;text-decoration: none"><span>本科</span></a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -18%"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>报考缴费</span><i
                                                                class="my-icon lsm-sidebar-more"></i></a>
                                                        <ul>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -30%;text-decoration: none"><span>微信支付</span></a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;"
                                                                   style="margin-left: -24%;text-decoration: none"><span>支付宝支付</span></a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="lsm-sidebar-item">
                                                <a style="margin-left:-26%"><i
                                                        class="iconfont layui-extendkechengguanli"
                                                        style="font-size: 20px"></i><span>课程管理</span><i
                                                        class="my-icon lsm-sidebar-more"></i></a>
                                                <ul>
                                                    <li class="lsm-sidebar-item">
                                                        <a style="margin-left: -30%;text-decoration: none"
                                                           href="/FoodSystem/gomycourse" target="mainpage"><i
                                                                class="my-icon lsm-sidebar-icon "></i><span>我的课程</span></a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="lsm-sidebar-item">
                                                <a style="margin-left: -40%;text-decoration: none"><i
                                                        class="iconfont layui-extendfuli"
                                                        style="font-size: 20px"></i><span>报考福利</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </el-aside>
                    <el-container>
                        <el-header>
                            <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal">
                                <el-menu-item index="1">
                                    <img src="img/cc72488312509d2cec0a5ce57a4423b0.jpg" id="headimg">
                                </el-menu-item>
                                <el-submenu index="2" style="margin-left:900px">
                                    <template slot="title" style="width: auto">退出账号</template>
                                    <el-menu-item index="2-1" @click="startupdatepwd">修改密码</el-menu-item>
                                    <el-menu-item index="2-2"><a style="text-decoration: none;color: #909399"
                                                                 @mouseover="exiteover" id="exitea"
                                                                 @click="exitesystem">退出</a></el-menu-item>
                                </el-submenu>
                            </el-menu>
                        </el-header>
                        <el-main style="background: white">
                            <iframe id="mainpage" style="height: 100%;width: 100%;display: block;padding: 0px"
                                    frameborder="no" name="mainpage"></iframe>
                        </el-main>
                    </el-container>
                    <el-dialog title="密码修改" :visible.sync="dialogTableVisible">
                        <el-form status-icon :model="pwdupdateform" :rules="pwdupdateformrules" ref="pwdupdateform"
                                 label-width="140px">
                            <el-form-item label="原密码:" prop="olpassword">
                                <el-input type="password" v-model="pwdupdateform.olpassword" placeholder="旧密码"
                                          autocomplete="on" name="olpassword" style="width: 85%"></el-input>
                            </el-form-item>
                            <el-form-item label="新密码:" prop="newpassword">
                                <el-input type="password" v-model="pwdupdateform.newpassword" placeholder="新密码"
                                          autocomplete="on" name="newpassword" style="width: 85%"></el-input>
                            </el-form-item>
                            <el-form-item label="再次输入新密码:" prop="surenewpassword">
                                <el-input type="password" v-model="pwdupdateform.surenewpassword" placeholder="再次输入新密码"
                                          autocomplete="on" name="surenewpassword" style="width: 85%"
                                          @blur="checktwopwd"></el-input>
                            </el-form-item>
                            <el-form-item label="手机号码:" prop="phone">
                                <el-input type="text" v-model="pwdupdateform.phone" placeholder="手机号码"
                                          autocomplete="on" name="surenewpassword" style="width: 85%"></el-input>
                            </el-form-item>
                            <el-form-item label="短信验证码:" prop="dxyzm">
                                <el-input v-model="pwdupdateform.dxyzm" placeholder="短信验证码" autocomplete="on"
                                          name="dxyzm" style="width: 60%"></el-input>
                                <span v-if="isshowhq" style="color:#3EBEC7;" id="getyzm" @mouseover="getyzover"
                                      @click="getyzmfun">{{yzmsg}}</span>
                                <span v-if="reshowcx" style="color:#C0C4CC">{{reisshow}}</span>
                                <span v-if="isshowcount" style="color: #C0C4CC">{{count}}s</span>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="success" style="width: 85%" @click="updateuser('pwdupdateform')">修改
                                </el-button>
                            </el-form-item>
                        </el-form>
                    </el-dialog>
                </el-container>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/mainpage.js"></script>
<script>
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
<script>
    window.onload = function () {
        $(".el-menu").css("height", "100%");
        $(".el-submenu .el-menu-item").css({"width": "100%", "min-width": "100%"});
        $(".el-aside").css({"min-width": "221px", "background": "#20222A"});
        $("element.style").css({"background-color": "rgb(45,140,240)"});
        $("#aside>.el-menu-item").css("margin-left", "-44%");
        $("#aside ul li:eq(3)>.el-submenu__title").css("margin-left", "-42%");
        $("#aside .el-menu-item-group ul li .el-submenu__title").css("margin-left", "-41%");
        $("#aside .el-menu-item").not(":first").mouseover(function () {
            $(this).css("background", "rgb(51,153,255)");
        });
        $("#aside .el-submenu .el-submenu__title").mouseover(function () {
            $(this).css("background", "rgb(51,153,255)");
        });
        $("#aside .el-submenu ul  .el-menu-item-group  ul li .el-submenu__title").mouseover(function () {
            $(this).css("background", "rgb(51,153,255)");
        });

        $(".el-dialog .el-dialog__body").css("padding-right", "10%");
        $(".left-side-menu").css("height", "100%");
        $(".lsm-sidebar a span").css("margin-left", "13px");
    }
</script>
<script> if ('addEventListener' in document) {
    document.addEventListener('DOMContentLoaded', function () {
        FastClick.attach(document.body);
    }, false);
}
if (!window.Promise) {
    document.writeln('<script src="https://as.alipayobjects.com/g/component/es6-promise/3.2.2/es6-promise.min.js" ' + '>' + '<' + '/' + 'script>');
} </script>
</body>
</html>
