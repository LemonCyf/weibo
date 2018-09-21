<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>微博登录</title>
    <link href="../Wopop_files/style_log.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/style.css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/userpanel.css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/jquery.ui.all.css">
    <%--导入jquery.cookie.js用于实现记住用户名和密码--%>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="jquery.cookie.js" type="text/javascript"></script>
</head>
<jsp:include page="head.jsp"/>
<body class="login" mycollectionplug="bind">
<form action="/user/login.do" method="post">
    <div class="login_m">
        <div class="login_boder">
            <div class="login_padding" id="login_model">
                <h2>手机号</h2>
                <label>
                    <input type="text" id="phone" name="phone" class="txt_input txt_input2" placeholder="请输入手机号">
                </label>
                <h2>密码</h2>
                <label>
                    <input type="password" name="password" id="userpwd" class="txt_input" placeholder="请输入密码">
                </label>
                <p class="forgot"><a id="iforget" href="javascript:void(0);">忘记密码?</a></p>
                <div class="rem_sub">
                    <div class="rem_sub_l">
                        <input type="checkbox" name="rememberMe" id="save_me" value="">
                        <label for="checkbox">记住我</label>
                    </div>
                    <label>
                        <input type="submit" class="sub_button" name="button" id="button" onclick="cmdEncrypt()"
                               value="登录"
                               style="opacity: 0.7;">
                    </label>
                </div>
            </div>

            <p style="padding:15px 40px 15px 45px;color: red;font-size: 15px;font-family: 微软雅黑">
                ${warn}
            </p>
        </div>
    </div>
</form>
</body>
<script>
    function cmdEncrypt() {
        var username = $("#userName").val();
        var pwd = $("#password").val();
        var b = new Base64();

        var params = {};
        params.userName64 = b.encode(username);
        params.password64 = b.encode(pwd);
        params.validcode = $("#txtCode").val();
        ;
        params.openID = $("#openID").val();
        params.status = $("#status").val();
        //alert(params.validcode);
        $.ajax({
            type: "POST",
            async: false,
            url: "/Account/UserLogin",
            datatype: "json",
            data: params,
            error: function (msg) {
                alert('error')
            },
            success: function (msg) {
                //alert(msg);
                if (msg == 'success') {
                    location.href = "/Account/FirstPage?status=" + params.status;
                }
                else {
                    $(".tit").html(msg);
                }
            }
        });
    }
</script>
<%
    String phone="";
    String password="";
    Cookie[] cookies=request.getCookies();
    for(int i=0;i<cookies.length;i++){
        if("phone".equals(cookies[i].getName())){
            phone=cookies[i].getValue();
        }else if("password".equals(cookies[i].getName())){
            password=cookies[i].getValue();
        }
    }
%>
</html>