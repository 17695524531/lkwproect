var vue = new Vue({
    el: "#app",
    data: {
        gqzzyform: {
            lb: "00",
            zy: "",
            xs: ""
        },
        zyfl: [],
        isshow: false
    },
    mounted() {
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
        $.ajax({
            type: "POST",
            url: "/FoodSystem/getbkyxzylb",
            success: function (data) {
                if (data != null || data != "") {
                    var result = JSON.parse(data);
                    that.zyfl = result;
                }
            },
            error: function () {
                that.$message({
                    showClose: true,
                    message: "加载数据失败",
                    type: "error"
                });
            }
        });

        layui.use("table", function () {
            var table = layui.table;
            table.render({
                elem: "#show-data",
                url: "/FoodSystem/getbkzydata",
                cellMinWidth: 80,
                cols: [[
                    {field: "zylbmc", title: "类别", sort: true, align: "center"},
                    {field: "zymc", title: "专业", sort: true, align: "center"},
                    {field: "zyxs", title: "形式", sort: true, align: "center"},
                    {title: "操作", align: "center", toolbar: '#bardemo'}
                ]]
                , page: true,
                id: "querytable",
                parseData:function (res) {
                    if(res.code==0){
                        spinner.spin();
                    }
                }
            });
            var $ = layui.$, active = {
                reload: function () {
                    var lb = $('#lb');
                    var zy = $('#zy');
                    var xs = $("#xs");
                    table.reload('querytable', {
                        page: {
                            curr: 1
                        },
                        where: {
                            lbmc: lb.val(),
                            zymc: zy.val(),
                            xs: xs.val(),
                            isquery: 'y'
                        }
                    }, 'data');
                }
            };
            $("#querybtn").on('click', function () {
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });
            table.on('tool(kc-show)', function (obj) {
                var data = obj.data;
                SimplePop.confirm("您确定要选<span style='font-weight: bold;color: red'>" + data.zymc + "</span>课程吗", {
                    type: "confirm",
                    title: "提示",
                    cancel: function () {

                    },
                    confirm: function (msg) {
                        var that = this;
                        var url = "/FoodSystem/checkUserisxk";
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: {
                                lbmc: data.zylbmc,
                                zymc: data.zymc,
                                zyxs: data.zyxs,
                                flag: "bk"
                            },
                            dataType: 'text',
                            success: function (data) {
                                var respon = JSON.parse(data);
                                if ("sn" == data) {
                                    that.$message.error("时间超时");
                                    return;
                                } else if ("yx" == respon.msg) {
                                    SimplePop.alert("您已经选了专业等级为<span style='color: red;'>" + respon.zydata[0].userzygrad + "</span>课程名称为<span style='color: red;'>" + respon.zydata[0].userzyklbmc + "</span>的课程");
                                    return;
                                } else if ("suc" == respon.msg) {
                                    swal({
                                        icon: "success",
                                        text: "选课成功！",
                                        type: "success"
                                    });
                                    return;
                                } else if ("n" == respon.msg) {
                                    swal({
                                        icon: "error",
                                        text: "选课失败",
                                        showCancelButton: false,
                                        type: "error"
                                    });
                                }
                            },
                            error: function () {
                                swal({
                                    icon: "error",
                                    text: "系统错误",
                                    showCancelButton: false,
                                    type: "error"
                                });
                            }
                        });
                    }
                });
            });
        })
    },
    methods: {
        restform() {
            this.gqzzyform.zy = "";
            this.gqzzyform.xs = '';
            this.gqzzyform.lb = '全部';
        }
    },

});