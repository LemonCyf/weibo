<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/19 0019
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>微博-随时随地发现新鲜事</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/build.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/activity.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zzsc.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dlzc.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nanoscroller.css">

    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/popwin.js"></script>

</head>

<body style="overflow-x:hidden">
<jsp:include page="head.jsp"/>
<div class="container" id="index">
    <div class="wrap-left pull-left col-md-6">
        <div class="mod-info-flow">
            <c:forEach items="${news}" var="news">
            <div class="mod-b mod-art" data-aid="213665">
                <div class="mod-thumb ">
                    <a class="transition" title="${news.title}" href="${news.newsAddress}" target="_blank">
                        <img class="lazy" src="${news.image}" alt="${news.title}">
                    </a>
                </div>
                <div class="column-link-box">

                </div>
                <div class="mob-ctt">
                    <h2><a href="${news.newsAddress}" class="transition msubstr-row2" target="_blank">${news.title}</a>
                    </h2>
                    <div class="mob-author">
                        <div class="author-face">
                            <img src="${pageContext.request.contextPath}/sy-img/59_1502432173.jpg">
                        </div>
                        <a href="#" target="_blank">
                            <span class="author-name ">${news.time}</span>
                        </a>
                    </div>
                    <div class="mob-sub">${news.introduction}</div>
                </div>
            </div>
            </c:forEach>
        </div>
        <nav class="page-nav" style="height: 90px;">
            <ul class="pagination">
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true"><i
                        class="icon icon-lt"></i></span></a></li>
                <li class="active"><a>1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#"><i class="icon icon-gt"></i></a></li>
            </ul>
        </nav>

    </div>
    <div class="wrap-right pull-right">
        <div class="right-ad-box"></div>


        <!--24小时部分结束1-->

        <!--传言-->
        <!--传言部分开始-->
        <div id="rumor_center">
            <div class="box-moder moder-rumors-list ">
                <h3>小站站长</h3>
                <span class="span-mark"></span>
                <div class="big2-pic pull-right">
                    <a href="#" class="back-img" target="_blank">
                        <img class="lazy" src="${pageContext.request.contextPath}/sy-img/105108838520.jpg" alt="">
                    </a>
                </div>
                <div class="clear"></div>
                <ul class="rumorlist">
                    <li>
                        <p>籍贯：山西 晋城</p>
                        <p>爱好：喜欢编程，就是技术太菜。</p>
                        <p>爱分享 音乐、视频和软件。</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="placeholder"></div>
        <!--传言部分结束-->

        <div class="placeholder"></div>
    </div>
</div>

<footer class="footer">
    <div class="container copy-right" style="text-align: center;">
        <span> Copyright 2018 <a href="#"> 微博 </a> 邮箱:123456789@163.com <img src="${pageContext.request.contextPath}/images/pic.gif"
                                                                                 style="width: 45px;"></span>
    </div>
</footer>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mouse.js"></script>

</body>

</html>
