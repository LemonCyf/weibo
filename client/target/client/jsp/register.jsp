<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/21
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>注册</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/register/img/favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register/register.css">
</head>
<<<<<<< HEAD

<body style="background-image: url(${pageContext.request.contextPath}/images/register/img/login-bg2.jpg);">
<jsp:include page="head.jsp"/>
<div class="layui-main user">
    <div class="layui-clear main" id="layui-clear">
        <div class="layui-logo">
            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/images/register/img/logo.png"/></a>
=======
<body class="B_register B_reg_tel ">
<script type="text/javascript">
、    $CONFIG.key = 'BD325CE52FC6BA090AC0C7A2039236587F99C30FA518F601F2AD33019514EE5A4340A964853E1BDF5374AB4AC22F5CFF3288E5DB94E6752B4999972DF4E23DACACAE4E4DCFB6CBAE256F1B19C4BA892D54C7A3E068F93AB47EC50635556FC223F02CB1F520631E2F03E5509B6C1E24DFB7962BCD6DC74159BF0E5AFC03D9A00D';
    $CONFIG.key_plus = '10001';
    $CONFIG.province = '35';
    $CONFIG.city = '2';
    $CONFIG.closeSendsms = '1';
    $CONFIG.page = 'mobile';
</script>
<div class="W_nologin">
    <div class="W_header_line"></div>
    <div class="W_reg_header W_logo_wave">
        <div class="W_nologin_logo_big"></div>
    </div>
    <div class="W_nologin_main main_radius_bg">
        <div class="main_tab_line">
            <a class="W_f22 W_Yahei cur" href="javascript:void(0);">个人注册</a>
            <%--<span class="vline">|</span>--%>
            <%--<a class="W_f22 W_Yahei" href="http://e.weibo.com/register/register">官方注册</a>--%>
>>>>>>> 93d6740ad6ed106efff0ff2228a43686d8d1bfe0
        </div>
        <fieldset class="layui-elem-field layui-field-title">
            <legend class="text-white">注册</legend>
        </fieldset>
        <div class="layui-form layui-form-pane">
            <div class="layui-form">
                <div class="layui-form-item">
                    <input class="layui-input" id="phone" placeholder="请输入11位手机号" type="text" maxlength="11"
                                     lay-verify="required|phone|regexit" autofocus="autofocus" autocomplete="off" value="">
                    <span id="checkPhone"style="display:none;float:right;color: red">×</span>

                </div>
                <div class="layui-form-item">
                    <input class="layui-input"  id="password" placeholder="请输入密码" type="password" maxlength="20"
                           lay-verify="required|pwd" autocomplete="off">
                </div>
                <div class="layui-form-item">
                    <input class="layui-input" id="rePassword" placeholder="请再次输入密码" type="password" maxlength="20"
                           lay-verify="required|rePwd" autocomplete="off">
                    <span id="checkPassword"style="display:none;float:right;color: red">两次密码不一致</span>
                </div>
                <div class="layui-form-item form_code">
                    <input id="code" class="layui-input" placeholder="请输入图片验证码" type="text" maxlength="6"
                           lay-verify="required|code">
                    <div class="code">
                        <img  onclick="changeimg(this)" id="refCode_reg_img" src="${pageContext.request.contextPath}/user/code.do" width="120" height="38">
                    </div>
                    <span id="checkCode"style="display:none;float:right;color: red">验证码错误</span>
                </div>

                <div class="layui-form-item form_code">
                    <input id="msg-code" class="layui-input" placeholder="请输入短信验证码" type="text" maxlength="6"
                           lay-verify="required|number|msgcode">
                    <div class="code">
                        <a id="msg-btn" class="layui-btn layui-btn-normal tel-btn" style="width: 120px;">获取验证码</a>
                    </div>
                </div>
                <div class="layui-form-item" style="float: left;margin-left: -10px;">
                    <input lay-filter="agreen-checkbox" title="我同意" type="checkbox" lay-skin="primary" checked>
                    <a href="#" target="_blank">《注册协议》</a>
                </div>
                <div class="layui-form-item">
                    <button id="reg" type="submit" class="login_btn layui-btn layui-btn-radius layui-btn-normal"
                            lay-submit lay-filter="register">立即注册
                    </button>
                </div>
                <div>
                    <small class="text-white">已经有账户了？</small>
                    <a href="${pageContext.request.contextPath}/jsp/login.jsp">点此登录</a>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    #fixed {
        position: fixed;
        top: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.3);
        z-index: 2000;
        width: 100%;
        height: 100%;
        display: none;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }

    #out {
        margin-left: 95%;
    }

    #fixed .box {
        border-radius: 6%;
        background-color: white;
        opacity: 0.8;
        height: 50px;
        width: 380px;
        color: #000000;
        text-align: center
    }

    #content {
        font-family: 微软雅黑;
        font-size: 16px;
        text-align: center;
    }


</style>
<%--模态框--%>
<div id="fixed">
    <div class="box" style="border: #00F7DE">
        <a id="out" href="#"><img src="${pageContext.request.contextPath}/images/register/img/out.jpg"></a>
        <img width="20" style="margin-bottom: 7px;margin-right: 4px"
             src="${pageContext.request.contextPath}/images/register/img/face.jpg"><span id="content">内容</span>
    </div>
</div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/register/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/register/register.js"></script>
<script>
    $("#reg").click(function () {
        if ($("#phone").val() == "" || $("#password").val() == "") {
            $("#content").html("请把信息填写完整");
            $("#fixed").css('display', 'flex');
        }else{
            $.ajax({
                    url: "${pageContext.request.contextPath}/user/register.do",
                    type: "post",
                    data: {
                        phone: $("#phone").val(),
                        password: $("#password").val()
                    },
                    dataType: "json",
                    success: function (data) {
                        alert("注册成功")
                    }
                }
            )
        }
        });
    //图片验证码点击刷新
    $("#refCode_reg_img").click(function () {
        $("#refCode_reg_img").attr("src", "${pageContext.request.contextPath}/user/code.do?i=" + Math.random());
        console.log($("#refCode_reg_img").src);
    })
    function changeimg(obj) {
        obj.src = "${pageContext.request.contextPath}/user/code.do?i=" + Math.random();
    }


    // 红叉
    //图片验证码输入是否正确??????????
    $("#code").blur(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/user/checkCode.do",
            type:"post",
            data:{
                code:$("#code").val
            },
            dataType:"json",
            success:function (data) {
                if (data.status == 1) {
                    $("#checkCode").css("display", "none");
                } else {
                    $("#checkPhone").css("display", "inline");
                }
            }
        })
    });
        $("#phone").blur(function () {
        var num = $("#phone").val();
        if(num.length!=11){
            $("#checkPhone").css("display","inline");
        }else{
            $("#checkPhone").css("display","none");
        }

    });
    $("#rePassword").blur(function () {
        if($("#rePassword").val() != $("#password").val()){
            $("#checkPassword").css("display","inline");
        }else{
            $("#checkPhone").css("display","none");
        }
    })



    $("#out").click(function () {
            $("#fixed").css('display', 'none');
       });

        $("#reg").blur(function () {

        });


    //判断验证码是否正确
    $("#msg-btn").click(function () {
        if($("#phone").val() != "")
        {
        $.ajax({
            url: "${pageContext.request.contextPath}/user/getPhoneCode.do",
            type: "post",
            data: {
                phone: $("#phone").val()
            },
            dataType: "json",
            success: function (data) {
                console.log(data.msc);
                $("#msg-code").blur(function () {
                    if(data.msc != $("#msg-code").val()){
                        $("#content").html("验证码错误,请重新输入");
                        $("#fixed").css('display','flex');
                    }
                })
            }
        })
        }else {
            $("#content").html("手机不能为空");
            $("#fixed").css('display', 'flex');
        }
    })
</script>
</html>