var vue = new Vue({
    el: "#app",
    data: {
        activeIndex: '1',
        changeimage: "iconfont layui-extendliebiaoxiangzuo",
        imageIndex: 1,
        isCollapse: false,
        labelflag: false,
        dialogTableVisible: false,
        isshowhq: true,
        yzmsg: '获取验证码',
        reisshow: '重新发送',
        count: 59,
        isshowhq: true,
        reshowcx: false,
        isshowcount: false,
        updateyzmmsg: '',
        pwdupdateform: {
            olpassword: '',
            newpassword: '',
            surenewpassword: '',
            dxyzm: '',
            phone: ''
        },
        pwdupdateformrules: {
            olpassword: [
                {required: true, message: '原密码不能为空', trigger: 'blur'}
            ],
            newpassword: [
                {required: true, message: '新密码不能为空', trigger: 'blur'}
            ],
            surenewpassword: [
                {required: true, message: '再次输入密码不能为空', trigger: 'blur'}
            ],
            dxyzm: [
                {required: true, message: '验证码不能为空', trigger: 'blur'}
            ],
            phone: [
                {required: true, message: '手机号码不能为空', trigger: 'blur'},
                {pattern: /^1[3|4|5|7|8][0-9]\d{8}$/, message: "请输入合法手机号/电话号", trigger: "blur"}
            ]
        }
    },
    methods: {
        checktwopwd() {
            if (this.pwdupdateform.newpassword != this.pwdupdateform.surenewpassword) {
                this.$message.error("密码输入不一致");
                return;
            }
        },
        changeImagefun() {
            this.isCollapse = !this.isCollapse;
            if (this.imageIndex == 1) {
                this.changeimage = 'iconfont layui-extendliebiaoxiangzuo';
                this.imageIndex = 2;
            } else if (this.imageIndex == 2) {
                this.changeimage = 'iconfont layui-extendliebiaoxiangyou';
                this.imageIndex = 1;
            }
        },
        exiteover() {
            $("#exitea").css("color", "black");
        },
        startupdatepwd() {
            this.dialogTableVisible = true;
        },
        exitesystem() {
            swal({
                title: '确定?',
                text: '您确定要退出系统!',
                showCancelButton: true,
                confirmButtonText: '确定',
                cancelButtonText: '取消',
            }).then(function (isConfirm) {
                if (isConfirm.value) {
                    window.location.href = "/FoodSystem/goLoginPage";
                }
            });
        },
        getyzover() {
            $("#getyzm").css("cursor", "pointer");
        },
        getyzmfun() {
            if (this.pwdupdateform.phone == '') {
                this.$message.error("请先输入手机号码");
                return;
            }
            this.isshowhq = false;
            this.reshowcx = true;
            this.isshowcount = true;
            var that = this;
            var yzmUrl = "/FoodSystem/getUzm";
            $.ajax({
                type: "POST",
                url: yzmUrl,
                data: {
                    phone: that.pwdupdateform.phone
                },
                dataType: 'text',
                success: function (data) {
                    var dataObj = JSON.parse(data);
                    that.updateyzmmsg = dataObj.dxcode;
                }
            });
            var inter = setInterval(function () {
                if (that.count > 0) {
                    that.count = --that.count;
                } else {
                    that.count = 0;
                    clearInterval(inter);
                    that.isshowhq = true;
                    that.reshowcx = false;
                    that.isshowcount = false;
                }
            }, 1000);
        },
        updateuser(formname) {
            var that = this;
            var updateUrl = "/FoodSystem/updateUser";
            var checkOldPwd = "/FoodSystem/checkOldPwd";
            this.$refs[formname].validate((valid) => {
                if (valid) {
                    $.ajax({
                        url: checkOldPwd,
                        type: "POST",
                        data: {
                            phone: that.pwdupdateform.phone,
                            oldpwd: that.pwdupdateform.olpassword
                        },
                        dataType: "text",
                        success: function (data) {
                            var dataObj = JSON.parse(data);
                            if ("Y" == dataObj.msg) {
                                if (that.pwdupdateform.dxyzm == that.updateyzmmsg) {
                                    $.ajax({
                                        type: "POST",
                                        url: updateUrl,
                                        data: {
                                            newpwd: that.pwdupdateform.newpassword,
                                            phone: that.pwdupdateform.phone
                                        },
                                        dataType: 'text',
                                        success: function (data) {
                                            var dataObj = JSON.parse(data);
                                            if (dataObj.msg == "Y") {
                                                swal({
                                                    icon: "success",
                                                    text: "修改成功",
                                                    type: "success"
                                                });
                                            } else if (dataObj.msg == "N") {
                                                swal({
                                                    icon: "error",
                                                    text: "修改失败",
                                                    type: "error"
                                                });
                                            }
                                        },
                                        error: function () {
                                            this.$message.error("系统异常");
                                        }
                                    });
                                } else {
                                    that.$message.error("验证码不正确！");
                                    return;
                                }
                            } else if ("N" == dataObj.msg) {
                                that.$message.error("原密码输入不正确");
                                return;
                            }
                        },
                        error: function () {
                            that.$message.error("读取数据失败");
                        }
                    });
                } else {
                    that.$message.error("请先完成信息的填写");
                    return;
                }
            })
        }
    }
});