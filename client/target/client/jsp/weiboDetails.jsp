<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/26 0026
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>${details.text}</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="../css/amazeui.min.css">
    <link rel="stylesheet" href="../css/app.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/comment.css">
</head>
<body id="blog-article-sidebar">
<jsp:include page="head.jsp"/>
<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-g blog-author blog-article-margin">
        <a href="${pageContext.request.contextPath}/user/goToPersonalHome.do?userId=${details.expressions.user.userId}">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${details.expressions.user.head}" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <span class="blog-color">${details.expressions.user.nickname}</span>
                <p style="color: #10D07A">${details.time}</p>
            </div>
        </a>
    </div>
    <div class="am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title" style="float:left;">${details.text}</h1>
                <c:if test="${not empty details.expressions.expression}">
                    <img src="${pageContext.request.contextPath}${details.expressions.expression}" alt=""
                         style="height: 35px;height: 35px;">
                </c:if>
                <c:if test="${empty details.expressions.expression}">
                    <span></span>
                </c:if>
                <p class="am-article-meta">
                    <span>${details.time}</span>
                </p>
            </div>
            <div class="am-article-bd">
                <img src="${details.picture}" alt="" class="blog-entry-img blog-article-margin">
            </div>
        </article>

    </div>
</div>
<div class="lmlblog-post-bar">
    <li class="lmlblog-no-like lmlblog-no" id="like">
        <a href="/publish/addLikeCount.do?publish_content_id=${details.publish_content_id}&&likecount=${likeCount}" style="color: black">
        <i class="lmlblog-icon">
            <img src="../images/like.png">
        </i>
        <span>${likeCount}</span>
        </a>
    </li>

    <li class="lmlblog-no-comment lmlblog-no" onclick='list_comments_show();'>
        <i class="lmlblog-icon"><img src="../images/comment.png"></i>
        <span>${commentCount}</span>
    </li>
    <li id="lmlblog-forward" class="lmlblog-no-forward lmlblog-no">
        <i class="lmlblog-icon"><img src="../images/toSend.png"></i>
        <span>${forwardCount}</span>
    </li>
    <li class="tag clear">
</div>
<script>
    window.onload = function () {
        var forward = document.getElementById("lmlblog-forward");
        var modal = document.getElementById("modal");
        var close = document.getElementById("close");
        forward.onclick = function () {
            var user = "a" + "${user}";
            if (user == "a") {
                alert("登录之后才可以转发哦！");
                location.href = '/jsp/login.jsp';
            } else {
                modal.style.display = "block";
                close.onclick = function (ev) {
                    modal.style.display = "none";
                }

                function addForward() {
                    document.getElementById("submit").submit();
                }
            }
        }
    }
</script>
<form action="${pageContext.request.contextPath}/publish/forwardPublish.do" method="post">
    <div id="modal"
         style="width: 600px;height: 180px; position: absolute;background-color: whitesmoke;left: 0px;display: none;border: 1px solid #c4c4c4;border-radius: 20px;left:600px;top: 30%;">
        <p style="font-size: 20px;padding:5px">微博转发</p>
        <input type="hidden" name="publish_content_id" value="${details.publish_content_id }">
        <input type="hidden" name="forId" value="${sessionScope.user.userId}">
        <div class="modal-body" style="margin-left:50px;margin-top:5px;margin-bottom:5px">
            <textarea type="text" placeholder="请输入转发理由" id="text" name="text"></textarea>
        </div>
        <button id="close"
                style="float: right;width:100px;height:30px;font-size:20px;margin-left:20px;margin-right: 10px;">关闭
        </button>
        <button id="submit" style="float: right;width:100px;height:30px;font-size:20px" onclick="addForward()">转发
        </button>
    </div>
</form>
<hr>
<!--
    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
-->
<div class="commentAll" style="display: none" id="commentList">
    <!--评论区域 begin-->
    <c:if test="${not empty user}">
        <form action="${pageContext.request.contextPath}/comment/addNewComment.do" method="post">
            <input type="hidden" name="publish_content_id" value="${details.publish_content_id }">
            <input type="hidden" name="userId" value="${sessionScope.user.userId}">
            <div class="reviewArea clearfix">
                <div class="flex-text-wrap">
            <textarea class="content comment-input" placeholder="评论不能超过150字哦~~~~~~~~~"
                      onkeyup="keyUP(this)" name="commentText" id="commentText"></textarea></div>
                <input type="submit" class="plBtn" value="评论" id="comment">
            </div>
        </form>
    </c:if>
    <c:if test="${empty user}">
        <div>
            <span style="color: #843534;font-size: 20px">登录之后才可以发表你自己的看法哦！</span>
            <a href="/jsp/login.jsp">去登录</a>
        </div>
    </c:if>
    <!--评论区域 end-->
    <!--回复区域 begin-->
    <div class="comment-show">
        <c:forEach items="${allComments}" var="all">
            <div class="comment-show-con clearfix">
                <div class="comment-show-con-img pull-left"><img src="${all.publish.user.head}" alt=""
                                                                 style="width:48px;height:48px;border-radius: 50%">
                </div>
                <div class="comment-show-con-list pull-left clearfix">
                    <div class="pl-text clearfix">
                        <a href="#" class="comment-size-name" style="font-size: 15px">${all.publish.user.nickname}: </a>
                        <span class="my-pl-con" style="font-size: 15px">&nbsp;${all.text}
                        <c:if test="${not empty all.publish.user.expressions.expression}">
                            <img src="${all.publish.user.expressions.expression}" alt=""
                                 style="width:30px;height:30px;">
                        </c:if>
                        </span>
                        <c:if test="${not empty all.picture}">
                        <span class="my-pl-con" style="float: left;padding-top: 10px;">&nbsp;
                                <img src="${all.picture}" alt="" style="width:25%;height:20%">
                        </c:if>
                        </span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">${all.time}</span>
                        <div class="date-dz-right pull-right comment-pl-block">
                            <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                        </div>
                    </div>
                    <div class="hf-list-con"></div>
                </div>
            </div>
        </c:forEach>
    </div>
    <!--回复区域 end-->
</div>


<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t) {
        var len = $(t).val().length;
        if (len > 139) {
            $(t).val($(t).val().substring(0, 140));
        }
    }
</script>
<script>
    //动态列表点击显示评论列表
    function list_comments_show() {
        var commentList = document.getElementById("commentList");
        commentList.style.display = 'block';
    }

</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click', '.pl-hf', function () {
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@' + fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
        if ($(this).is('.hf-con-block')) {
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        } else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click', '.hf-pl', function () {
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year = myDate.getFullYear();
        //获取当前月
        var month = myDate.getMonth() + 1;
        //获取当前日
        var date = myDate.getDate();
        var h = myDate.getHours();       //获取当前小时数(0-23)
        var m = myDate.getMinutes();     //获取当前分钟数(0-59)
        if (m < 10) m = '0' + m;
        var s = myDate.getSeconds();
        if (s < 10) s = '0' + s;
        var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
        //获取输入内容
        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        console.log(oHfVal)
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@' + oHfName;
        if (oHfVal.replace(/^ +| +$/g, '') == '' || oHfVal == oAllVal) {

        } else {
            $.getJSON("json/pl.json", function (data) {
                var oAt = '';
                var oHf = '';
                $.each(data, function (n, v) {
                    delete v.hfContent;
                    delete v.atName;
                    var arr;
                    var ohfNameArr;
                    if (oHfVal.indexOf("@") == -1) {
                        data['atName'] = '';
                        data['hfContent'] = oHfVal;
                    } else {
                        arr = oHfVal.split(':');
                        ohfNameArr = arr[0].split('@');
                        data['hfContent'] = arr[1];
                        data['atName'] = ohfNameArr[1];
                    }

                    if (data.atName == '') {
                        oAt = data.hfContent;
                    } else {
                        oAt = '回复<a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                    }
                    oHf = data.hfName;
                });

                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">' + oAt + '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display', 'block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
            });
        }
    });
</script>
<!--删除评论块-->
<%--<script type="text/javascript">--%>
<%--$('.commentAll').on('click', '.removeBlock', function () {--%>
<%--$('.commentAll').on('click', '.removeBlock', function () {--%>
<%--var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');--%>
<%--if (oT.siblings('.all-pl-con').length >= 1) {--%>
<%--oT.remove();--%>
<%--} else {--%>
<%--$(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display', 'none')--%>
<%--oT.remove();--%>
<%--}--%>
<%--$(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();--%>

<%--})--%>
<%--}--%>
<%----%>
<%--</script>--%>
<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click', '.date-dz-z', function () {
        var zNum = $(this).find('.z-num').html();
        if ($(this).is('.date-dz-z-click')) {
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        } else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="../js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="../js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>
