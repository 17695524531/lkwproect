var vue = new Vue({
    el: "#app",
    data: {
        current: 0,
        cancount: 0,
        carouselcount: 0,
        yzmmess: '获取验证码',
        refsmsg: '重新发送',
        dxmsg: "",
        loadingtext: '验证中...',
        getyzmmsg: true,
        ishowrefs: false,
        isshowcount: false,
        count: 59,
        stepspan: '下一步',
        showup: true,
        shownext: true,
        fullscreenLoading: false,
        bodyloading: false,
        setting: {
            autoplay: false,
            autoplaySpeed: 2000,
            dots: 'none',
            trigger: 'click',
            arrow: 'never'
        },
        firstcarou: {
            firstphone: '',
            firstyzm: ''
        },
        twocarouform: {
            twonewpwd: '',
            suretwonewpwd: ''
        },
        firstrules: {
            firstphone: [
                {required: true, message: '请输入手机号码', trigger: 'blur'},
                {pattern: /^1[3|4|5|7|8][0-9]\d{8}$/, message: "请输入合法手机号/电话号", trigger: "blur"}
            ],
            firstyzm: [
                {required: true, message: '请输入验证码', trigger: 'blur'}
            ]
        },
        tworules: {
            twonewpwd: [
                {required: true, message: '请输入密码', trigger: 'blur'}
            ],
            suretwonewpwd: [
                {required: true, message: '请再次输入密码', trigger: 'blur'}
            ]
        }
    },
    methods: {
        nextStep() {
            if (this.current == 0) {
                var that = this;
                if (this.firstcarou.firstphone == '' || this.firstcarou.firstyzm == '') {
                    this.$message.error("请先完成手机验证");
                    return;
                } else {
                    that.bodyloading = true;
                    if (that.dxmsg == that.firstcarou.firstyzm) {
                        that.loadingtext = "验证成功...";
                        setTimeout(function () {
                            that.bodyloading = false;
                        }, 1000);
                        that.current += 1;
                        that.$refs.carousel.setActiveItem(that.current);
                    } else {
                        setTimeout(function () {
                            that.bodyloading = false;
                        }, 1000);
                        that.$message.error("验证码不正确");
                        return;
                    }
                }
            } else if (this.current == 1) {
                var that = this;
                if (this.twocarouform.twonewpwd == '' || this.twocarouform.suretwonewpwd == '') {
                    this.$message.error("请输入您的新密码和确认密码");
                    return;
                } else {
                    that.bodyloading = true;
                    if (that.twocarouform.twonewpwd == that.twocarouform.suretwonewpwd) {
                        that.loadingtext = "正在跳转...";
                        setTimeout(function () {
                            that.bodyloading = false;
                        }, 1000);
                        that.current += 1;
                        that.$refs.carousel.setActiveItem(that.current);
                    } else {
                        that.loadingtext = "正在验证...";
                        that.$message.error("密码不一致");
                        setTimeout(function () {
                            that.bodyloading = false;
                        }, 1000);
                        return;
                    }
                }
            }
            if (this.current == 2) {
                var that = this;
                setTimeout(function () {
                    that.$loading({
                        lock: true,
                        text: "正在跳转到登录界面，请稍候...",
                        spinner: 'el-icon-loading',
                        background: 'rgba(0, 0, 0, 0.7)'
                    });
                }, 1500);
                setTimeout(function () {
                    window.location.href = "/FoodSystem/goLoginPage";
                }, 3000)
            }
        },
        upStep() {
            if (this.current == 2) {
                this.current -= 1;
                this.$refs.carousel.setActiveItem(this.current);
            } else if (this.current == 1) {
                this.current -= 1;
                this.$refs.carousel.setActiveItem(this.current);
            } else if (this.current == 0) {
                this.current = 0;
            }
        },
        overgetyzm() {
            $("#forfirstyzm").css("cursor", "pointer");
        },
        clickgetyzm() {
            var checkUserIsexite = "/FoodSystem/forgetfindUser";
            var that = this;
            if (this.firstcarou.firstphone == '') {
                this.$message.error("请先输入手机号码");
                return;
            }
            $.ajax({
                type: "POST",
                url: checkUserIsexite,
                data: {
                    phone: that.firstcarou.firstphone
                },
                dataType: "text",
                success(data) {
                    var dataObj = JSON.parse(data);
                    if (dataObj.msg == "N") {
                        that.$message.error("此手机号不存在！");
                        return;
                    } else if (dataObj.msg == "Y") {
                        that.getyzmmsg = false;
                        that.ishowrefs = true;
                        that.isshowcount = true;
                        var url = "/FoodSystem/getUzm";
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: {
                                phone: that.firstcarou.firstphone
                            },
                            dataType: 'text',
                            success(data) {
                                var dataObj = JSON.parse(data);
                                that.dxmsg = dataObj.dxcode;
                            },
                            error: function () {
                                that.$message.error("获取短信失败");
                            }
                        });
                        var inter = setInterval(function () {
                            if (that.count > 0) {
                                that.count = --that.count;
                            } else {
                                that.count = 0;
                                clearInterval(inter);
                                that.getyzmmsg = true;
                                that.ishowrefs = false;
                                that.isshowcount = false;
                            }
                        }, 1000);
                    }
                },
                error: function () {
                    that.$message.error("获取数据异常");
                    return;
                }
            });
        }
    }
});