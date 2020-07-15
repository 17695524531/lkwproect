var vue = new Vue({
    el: "#app",
    data: {
        regform: {
            username: '',
            password: '',
            surepassword: '',
            phone: '',
            realname: ''
        },
        regreules: {
            username: [
                {required: true, message: "请输入用户名", trigger: 'blur'}
            ],
            password: [
                {required: true, message: "请输入密码", trigger: 'blur'}
            ],
            surepassword: [
                {required: true, message: "请再次输入密码", trigger: 'blur'}
            ],
            phone: [
                {required: true, message: "请输入手机号", trigger: 'blur'},
                {pattern: /^1[3|4|5|7|8][0-9]\d{8}$/, message: "请输入合法手机号/电话号", trigger: "blur"}
            ],
            realname: [
                {required: true, message: "你的姓名不能为空", trigger: 'blur'},
                {pattern: /^[\u2E80-\u9FFF]+$/, message: "您输入的姓名不合法", trigger: 'blur'}
            ]
        }
    },
    methods: {
        promt() {
            this.$message("为了更好的为您服务,请您务必填写您的真实姓名");
        },
        reg(forname) {
            var that = this;
            if (that.regform.password.trim() != that.regform.surepassword.trim()) {
                that.$message.error("密码不一致");
                return;
            } else {
                this.$refs[forname].validate((valid) => {
                    if (valid) {
                        that.$Loading.start();
                        var url = "/FoodSystem/findUser";
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: {
                                username: that.regform.username,
                                password: that.regform.password,
                                phone: that.regform.phone,
                                realname: that.regform.realname
                            },
                            dataType: "text",
                            success(data) {
                                var dataObj = JSON.parse(data);
                                if (dataObj.msg == "Y") {
                                    that.$message({
                                        showClose: true,
                                        message: '此用户已存在',
                                        type: 'warning'
                                    });
                                    that.$Loading.finish();
                                } else {
                                    var regurl = '/FoodSystem/regUser';
                                    $.ajax({
                                        type: "POST",
                                        url: regurl,
                                        data: {
                                            username: that.regform.username,
                                            password: that.regform.password,
                                            phone: that.regform.phone,
                                            realname: that.regform.realname
                                        },
                                        dataType: "text",
                                        success: function (data) {
                                            var regJson = JSON.parse(data);
                                            if (regJson.regmsg == "Y") {
                                                that.$Loading.finish();
                                                that.$message({
                                                    showClose: true,
                                                    message: '注册成功',
                                                    type: 'success'
                                                });
                                            } else {
                                                that.$Loading.error();
                                                that.$message.error("注册失败");
                                            }
                                        }
                                    })
                                }
                            },
                            error: function () {
                                that.$message.error("获取数据失败或系统异常");
                                that.$Loading.error();
                            }
                        });
                    } else {
                        this.$message.error("请先完成注册的信息");
                        return false;
                    }
                });
            }
        }
    }
});