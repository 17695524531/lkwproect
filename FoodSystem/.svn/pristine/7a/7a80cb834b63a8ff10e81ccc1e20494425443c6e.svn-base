var vue = new Vue({
    el: "#app",
    data: {
        loginform: {
            username: '',
            password: ''
        },
        dxloginform: {
            sjhm: '',
            yzm: ''
        },
        loginrules: {
            username: [
                {required: true, message: "请输入用户名", trigger: 'blur'}
            ],
            password: [
                {required: true, message: "请输入密码", trigger: 'blur'}
            ]
        },
        dxloginformrules: {
            sjhm: [
                {required: true, message: "请输入手机号码", trigger: 'blur'},
                {pattern: /^1[3|4|5|7|8][0-9]\d{8}$/, message: "请输入合法手机号/电话号", trigger: "blur"}
            ],
            yzm: [
                {required: true, message: "请输入验证码", trigger: 'blur'}
            ]
        },
        isloading: false,
        dxlogin: false,
        yzmsg: '获取验证码',
        reisshow: '重新发送',
        count: 59,
        isshowhq: true,
        reshowcx: false,
        isshowcount: false,
        btnloading: false,
        dxbtnloading: false,
        bodyloading: false,
        loadingmsg: "正在验证登录...",
        yzmbtnlogintext: '登录',
        htyzmmsg: '',
        yzmname: '',
        yzmpassword: '',
        yzmgethtname:'',
        yzmgethtpwd:'',
        htjmusername:'',
        htjmpassword:'',
        jmssname:"",
        jmsspwd:""
    },
    methods: {
        login(formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.btnloading = true;
                    this.$Loading.start();
                    this.bodyloading = true;
                    var that = this;
                    var url = "/FoodSystem/checkuserexite"
                    $.ajax({
                        type: "POST",
                        url: url,
                        dataType: 'text',
                        data: {username: that.loginform.username, password: that.loginform.password},
                        success(data) {
                            var dataObj = JSON.parse(data);
                            if ($.trim(dataObj.msg) == "N") {
                                that.bodyloading = false;
                                that.$Loading.error();
                                that.$message.error("此用户不存在或用户名密码错误");
                            } else if ($.trim(dataObj.msg) == "Y") {
                                var name = dataObj.user.username;
                                var pwd = dataObj.user.userpassword;
                                that.loadingmsg = "验证成功，跳转中...";
                                $.ajax({
                                    type:"POST",
                                    url:"/FoodSystem/getjmdata",
                                    data:{
                                        jmusername:name,
                                        jmpassword:pwd
                                    },
                                    success:function (data) {
                                        var res=JSON.parse(data);
                                        that.jmssname=res.username;
                                        that.jmsspwd=res.password;
                                        window.location.href = "/FoodSystem/gomainpagebase?username=" + that.jmssname + "&password=" + that.jmsspwd;
                                    }
                                });
                            }
                        },
                        error: function () {
                            this.$message.error("调用数据失败");
                        }
                    });
                    return false;
                } else {
                    this.$notify.error({
                        title: "失败",
                        message: "请先完成登录的信息",
                        duration: 1100
                    })
                    return false;
                }
            });
        },
        yzover() {
            $("#yztb").css({"cursor": "pointer", "color": "#43C4CA"});
            $("#yzspan").css({"cursor": "pointer", "color": "#43C4CA"});
        },
        wxover() {
            $("#wxtb").css({"cursor": "pointer", "color": "#43C4CA"});
            $("#wxspan").css({"cursor": "pointer", "color": "#43C4CA"});
        },
        dxloginfanct() {
            this.dxlogin = true;
        },
        dxloginout() {
            $("#yztb").css({"color": "#515A6E"});
            $("#yzspan").css({"cursor": "pointer", "color": "#515A6E"});
        },
        wxloginout() {
            $("#wxtb").css({"color": "#515A6E"});
            $("#wxspan").css({"cursor": "pointer", "color": "#515A6E"});
        },
        getyzover() {
            $("#getyzm").css("cursor", "pointer");
        },
        getyzmfun() {
            if (this.dxloginform.sjhm == '') {
                this.$message.error("请先输入手机号码");
                return;
            }
            this.isshowhq = false;
            this.reshowcx = true;
            this.isshowcount = true;
            var that = this;
            var getUsernamePassword = "/FoodSystem/getusernamepasswordByphone";
            $.ajax({
                type: "POST",
                url: getUsernamePassword,
                data: {
                    phone: that.dxloginform.sjhm
                },
                success: function (data) {
                    var dataObj = JSON.parse(data);
                    if ($.trim(dataObj.msg) == "N") {
                        that.$message.error("此账号不存在");
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
                        return;
                    } else if ($.trim(dataObj.msg) == "Y") {
                        var url = "/FoodSystem/getUzm";
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
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: {
                                phone: that.dxloginform.sjhm
                            },
                            dataType: "text",
                            success(data) {
                                var dataObj = JSON.parse(data);
                                that.htyzmmsg = dataObj.dxcode;
                            }
                        });
                    }
                }
            });
        },
        yzmbtnlogin(forname) {
            var that = this;
            this.$refs[forname].validate((valid) => {
                if (valid) {
                    if (that.dxloginform.yzm = that.htyzmmsg) {
                        that.dxbtnloading = true;
                        that.yzmbtnlogintext = "登录中...";
                        that.dxlogin = false;
                        that.bodyloading = true;
                        var url="/FoodSystem/getusernamepasswordByphone";
                        $.ajax({
                            type:"POST",
                            url:url,
                            data:{
                                phone:that.dxloginform.sjhm
                            },
                            success:function (data) {
                                var dataObj = JSON.parse(data);
                                that.yzmgethtname=dataObj.user.username;
                                that.yzmgethtpwd=dataObj.user.userpassword;
                            },
                            error:function () {
                                that.$message.error("获取数据失败");
                            }
                        });
                        that.loadingmsg = "正在跳转...";
                        $.ajax({
                            type:"POST",
                            url:"/FoodSystem/getjmdata",
                            data:{
                                jmusername:that.yzmgethtname,
                                jmpassword:that.yzmgethtpwd
                            },
                            success:function (data) {
                                var res=JSON.parse(data);
                                that.htjmusername=res.username;
                                that.htjmpassword=res.password;
                                window.location.href = "/FoodSystem/gomainpagebase?username=" + that.htjmusername + "&password=" + that.htjmpassword;
                            }
                        });
                    } else {
                        that.dxbtnloading = false;
                        that.$message.error("验证码不正确");
                        return;
                    }
                } else {
                    that.dxbtnloading = false;
                    that.$message.error("输入信息不正确");
                    return;
                }
            });
        }
    }
});