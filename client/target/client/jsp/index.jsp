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

    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/popwin.js"></script>

</head>

<body style="overflow-x:hidden;background-color: #e2e2e2" >
<jsp:include page="head.jsp"/>
<div class="container" id="index">
    <div class="wrap-left pull-left col-md-6">
        <c:if test="${not empty news}">
            <div class="big-pic-box">
                <div class="big-pic">
                    <a href="${news[0].newsAddress}" target="_blank" class="transition" title="${news[0].title}">
                        <div class="back-img"><img src="${news[0].image}" alt="${news[0].introduction}"></div>
                        <div class="big-pic-content">
                            <h1 class="t-h1">${news[0].title}</h1>
                        </div>
                    </a>
                </div>
                <div class="big2-pic big2-pic-index big2-pic-index-top">
                    <a href="${news[1].newsAddress}" class="back-img transition" target="_blank"
                       title="${news[1].title}">
                        <img class="lazy" src="${news[1].image}" alt="${news[1].introduction}">
                    </a>
                    <a href="${news[1].newsAddress}" target="_blank" title="${news[1].title}">
                        <div class="big2-pic-content">
                            <h2 class="t-h1">${news[1].title}</h2>
                        </div>
                    </a>
                </div>
                <div class="big2-pic big2-pic-index big2-pic-index-bottom">
                    <a href="${news[2].newsAddress}" class="back-img transition" target="_blank"
                       title="${news[2].title}">
                        <img class="lazy" src="${news[2].image}" alt="${news[2].introduction}">
                    </a>
                    <a href="${news[2].newsAddress}" target="_blank" title="${news[2].title}">
                        <div class="big2-pic-content">
                            <h2 class="t-h1">${news[2].title}</h2>
                        </div>
                    </a>
                </div>
            </div>
        </c:if>
        <div class="mod-info-flow">
            <c:forEach items="${publish}" var="publish">
                <c:if test="${empty publish.picture}">
                    <div class="mob-pu" style="background-color: white">
                        <p>
                            <a href="${pageContext.request.contextPath}/publish/publishDetails.do?publish_content_id=${publish.publish_content_id}"
                               class="transition msubstr-row2" target="_blank">${publish.text}</a></p>
                        <div class="publishUser">
                            <a href="${pageContext.request.contextPath}/user/goToPersonalHome.do?userId=${publish.userId}">
                                <div class="userImg">
                                    <img src="${publish.user.head}">
                                </div>
                                <p class="userName">${publish.user.nickname}</p>
                            </a>
                        </div>
                        <div class="mob-author">
                            <div class="author-face">
                                <img src="${pageContext.request.contextPath}/sy-img/59_1502432173.jpg">
                            </div>
                            <p class="author-name ">${publish.time}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty publish.picture}">
                    <div class="mod-b mod-art" data-aid="213665" style="background-color: white">
                        <div class="umb ">
                            <a class="transition"
                               href="${pageContext.request.contextPath}/publish/publishDetails.do?publish_content_id=${publish.publish_content_id}"
                               target="_blank">
                                <img class="lazy" src="${publish.picture}">
                            </a>
                        </div>
                        <div class="mob-ctt">
                            <p>
                                <a href="${pageContext.request.contextPath}/publish/publishDetails.do?publish_content_id=${publish.publish_content_id}"
                                   class="transition msubstr-row2" target="_blank">${publish.text}</a></p>
                            <div class="publishUser">
                                <a href="${pageContext.request.contextPath}/user/goToPersonalHome.do?userId=${publish.userId}">
                                    <div class="userImg">
                                        <img src="${publish.user.head}">
                                    </div>
                                    <p class="userName">${publish.user.nickname}</p>
                                </a>
                            </div>
                            <div class="mob-author">
                                <div class="author-face">
                                    <img src="${pageContext.request.contextPath}/sy-img/59_1502432173.jpg">
                                </div>
                                <p class="author-name ">${publish.time}</p>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <%--<nav class="page-nav" style="height: 90px;">--%>
        <%--<ul class="pagination">--%>
        <%--<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true"><i--%>
        <%--class="icon icon-lt"></i></span></a></li>--%>
        <%--<li class="active"><a>1</a></li>--%>
        <%--<li><a href="#">2</a></li>--%>
        <%--<li><a href="#">3</a></li>--%>
        <%--<li><a href="#">4</a></li>--%>
        <%--<li><a href="#"><i class="icon icon-gt"></i></a></li>--%>
        <%--</ul>--%>
        <%--</nav>--%>

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
                        <p>籍贯：浙江</p>
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
        <span> Copyright 2018 <a href="#"> 微博 </a> 邮箱:123456789@163.com <img
                src="${pageContext.request.contextPath}/images/pic.gif"
                style="width: 45px;"></span>
    </div>
</footer>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mouse.js"></script>

</body>

</html>
