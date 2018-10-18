<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>微博-随时随地发现新鲜事</title>
    <link href="//img.t.sinajs.cn/t6/style/css/module/base/frame.css?version=9744cb1b8d390b27" type="text/css"
          rel="stylesheet" charset="utf-8">
</head>
<body>
<!--顶部导航-->
<div class="WB_global_nav WB_global_nav_v2  " node-type="top_all">
    <div class="gn_header ">
        <div class="gn_logo" node-type="logo" data-logotype="logo"
             data-logourl="//weibo.com?topnav=1&amp;mod=logo">
            <a href="${pageContext.request.contextPath}/admin/jsp/index.jsp" class="box" title="" node-type="logolink"
               suda-uatrack="key=topnav_tab&amp;value=weibologo" target="_top">
                <span class="logo"></span>
            </a>
        </div>
        <div class=" gn_search_v2">
            <span class=" placeholder">搜索的默认信息</span><input type="text" node-type="searchInput"
                                                            autocomplete="off" value=""
                                                            class="W_input" name="15368239814792">
            <a href="javascript:void(0);" title="搜索" node-type="searchSubmit"
               class="W_ficon ficon_search S_ficon" suda-uatrack="key=topnav_tab&amp;value=search"
               target="_top">f</a>
        </div>
        <div style="float: right">
            <div class="gn_nav">
                <ul class="gn_nav_list">
                    <li><a href="${pageContext.request.contextPath}/index.do" class="home S_txt1"
                           suda-uatrack="key=topnav_tab&amp;value=homepage" target="_top"><em
                            class="W_ficon ficon_home S_ficon">E</em><em class="S_txt1">首页</em></a></li>
                    <c:if test="${empty user}">
                        <li><a href="${pageContext.request.contextPath}/user/goToRegister.do"
                               class="S_txt1" target="_top">注册</a></li>
                        <li class="W_vline S_line1"></li>
                        <li><a node-type="loginBtn" href="${pageContext.request.contextPath}/jsp/login.jsp"
                               class="S_txt1"
                               target="_top">登录</a>
                        </li>
                    </c:if>
                    <c:if test="${not empty user}">
                        <li><a href="${pageContext.request.contextPath}/user/goToPersonalHome.do?userId=${user.userId}" class="S_txt1" target="_top">
                                <img src="${user.head}" style="width: 20px;height: 20px;border-radius: 20px">
                                ${user.nickname}</a></li>
                        <li><a node-type="loginBtn" href="${pageContext.request.contextPath}/user/logout.do" class="S_txt1"
                               target="_top">注销</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>