<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Wopop</title>
    <link href="../Wopop_files/style_log.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/style.css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/userpanel.css">
    <link rel="stylesheet" type="text/css" href="../Wopop_files/jquery.ui.all.css">

</head>
<jsp:include page="head.jsp"/>
<body class="login" mycollectionplug="bind">
<div class="login_m">
    <div class="login_boder">
        <div class="login_padding" id="login_model">
            <h2>手机号</h2>
            <label>
                <input type="text" id="username" class="txt_input txt_input2" placeholder="请输入手机号">
            </label>
            <h2>密码</h2>
            <label>
                <input type="password" name="textfield2" id="userpwd" class="txt_input" placeholder="请输入密码">
            </label>
            <p class="forgot"><a id="iforget" href="javascript:void(0);">忘记密码?</a></p>
            <div class="rem_sub">
                <div class="rem_sub_l">
                    <input type="checkbox" name="checkbox" id="save_me">
                    <label for="checkbox">记住我</label>
                </div>
                <label>
                    <input type="submit" class="sub_button" name="button" id="button" value="SIGN-IN"
                           style="opacity: 0.7;">
                </label>
            </div>
        </div>
    </div>
</div>
</body>
</html>