<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/4 0004
  Time: 下午 14:10
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/mycourse.css"/>
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
    <title>-津诚教育-专业专起本</title>
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
                                <i class="el-icon-view" style="color: #5FD2B5"></i>&nbsp;课程管理-我的课程
                            </p>
                            <div class="car-body">
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
<script>
    var vue = new Vue({
        el: "#app",
        data: {},
        methods:{

        },
        mounted(){

        }
    });
</script>
<script type="text/html" id="bardemo">
    <a class="layui-btn layui-btn-sm" lay-event="xk">删除</a>
</script>
<script>
    layui.use("table", function () {
        var table = layui.table;
        var that = this;
        var opts = {
            lines: 9, // The number of lines to draw
            length: 0, // The length of each line
            width: 10, // The line thickness
            radius: 15, // The radius of the inner circle
            corners: 1, // Corner roundness (0..1)
            rotate: 0, // The rotation offset
            color: '#000', // #rgb or #rrggbb
            speed: 2, // Rounds per second
            trail: 60, // Afterglow percentage
            shadow: false, // Whether to render a shadow
            hwaccel: false, // Whether to use hardware acceleration
            className: 'spinner', // The CSS class to assign to the spinner
            zIndex: 2e9, // The z-index (defaults to 2000000000)
            top: 'auto', // Top position relative to parent in px
            left: 'auto' // Left position relative to parent in px
        };
        var target = document.getElementById('app');
        var spinner = new Spinner(opts).spin(target);
        table.render({
            elem: "#show-data",
            url: "/FoodSystem/getmycoursedata",
            cellMinWidth: 80,
            cols: [[
                {field: "userzyklbmc", title: "类别", align: "center"},
                {field: "userzykmc", title: "专业",  align: "center"},
                {field: "userzykxs", title: "形式",  align: "center"},
                {field: "userphone", title: "用户电话",  align: "center"},
                {field:"xktime",title:"选课时间",align:"center"},
                {field: "userzygrad", title: "等级",  align: "center"}
            ]]
            , page: true,
            id: "querytable",
            parseData:function (res) {
               if(res.code==0){
                 spinner.spin();
               }
            }
        });
    });
</script>
</body>
</html>
