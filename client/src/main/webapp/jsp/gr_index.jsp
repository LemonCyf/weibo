<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="${sessionScope.user.head}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>${sessionScope.user.nickname}的个人主页</title>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel='stylesheet' id='style-css' href='../css/style.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='lmlblog-css' href='../css/lmlblog.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='all-css' href='../css/all.css' type='text/css' media='all'/>
    <script type='text/javascript' src='../js/jquery.min.js'></script>
    <script type='text/javascript' src='../js/ueditor.all.min.js'></script>
</head>
<body style="background-color: white">
<!-- 菜单 -->
<jsp:include page="head.jsp"/>
<div class="lmlblog-member-main" data="1">
    <div class="lmlblog-member-bg">
        <div class="lmlblog-member-content">
            <div class="lmlblog-member-header">
                <div class="lmlblog-member-avatar other">
                    <img src="${sessionScope.user.head}" class="avatar"/>
                </div>
                <div class="lmlblog-member-username">
                    <h1>${sessionScope.user.nickname}</h1>
                    <c:if test="${sessionScope.user.sex=='女'}">
                        <span class="lmlblog-mark lmlblog-girl"><i class="fa fa-mars"></i></span>
                    </c:if>
                    <c:if test="${sessionScope.user.sex=='男'}">
                        <span class="lmlblog-mark lmlblog-boy"><i class="fa fa-mars"></i></span>
                    </c:if>
                    <div class="lmlblog-member-desc">${sessionScope.user.brieflntroduction}</div>
                    <div class="lmlblog-member-follow-info">
                        <a href="#" target="_blank" rel="nofollow"><span
                                class="follow no opacity"><i class="lmlblog-icon"></i>+ 关注</span></a>
                        <span class="opacity"><i class="lmlblog-icon">&#xe612;</i> 私聊</span>
                    </div>
                </div>
                <div class="lmlblog-member-menu clear">
                    <li class="on">主页</li>
                    <li><a href="../jsp/gr_album.jsp" target="_blank">相册</a></li>
                    <li><a href="../jsp/gr_data.jsp" target="_blank">个人资料</a></li>
                </div>
                <div class="lmlblog-member-content-list clear">
                    <div class="lmlblog-member-left">
                        <div class="lmlblog-member-left-follow clear">
                            <li>
                                <strong>168</strong>
                                <span>关注</span>
                            </li>
                            <li>
                                <strong>666</strong>
                                <span>粉丝</span>
                            </li>
                        </div>
                        <div class="lmlblog-member-left-profile">
                            <h3>资料简介</h3>
                            <li><i class="fa fa-transgender"></i> 性别：<span>${sessionScope.user.sex}</span></li>
                            <li><i class="fa fa-map-marker"></i> 城市：<span>${sessionScope.user.location}</span></li>
                            <li><i class="fa fa-smile-o"></i> 兴趣：<span>${sessionScope.user.orientation}</span></li>
                            <%--<div class="lmlblog-member-left-profile-more">查看更多 <i class="fa fa-angle-right"></i></div>--%>
                        </div>
                    </div>
                    <div class="lmlblog-member-right">
                        <div class="lmlblog-post-list">
                            <div class="lmlblog-posts-list words"
                                 data="4197">
                                <c:forEach items="${publishes}" var="publish">
                                    <c:if test="${not empty publish.picture}">
                                        <div class="lmlblog">
                                            <!-- 动态内容部分，包括列表 -->
                                            <div class="lmlblog-post-user-info">
                                                <div class="lmlblog-post-user-info-avatar" user-data="1">
                                                    <span class="lmlblog-vip-icon"></span><img
                                                        src="${sessionScope.user.head}"
                                                        class="avatar"/>
                                                    <div class="lmlblog-user-info-card">
                                                        <div class="info_card_loading"><img
                                                                src="../picture/chat-loading.gif">
                                                            <p>资料加载中...</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="lmlblog-post-user-info-name">
                                                    <font style="color:#333;font-weight:600">${sessionScope.user.nickname}</font>
                                                </div>
                                                <div class="lmlblog-post-user-info-time"
                                                     title="${publish.time}">${publish.time}
                                                </div>
                                            </div><!-- 作者信息 -->
                                            <div class="lmlblog-post-setting">
                                                <i class="fa fa-angle-down"></i>
                                                <div class="lmlblog-post-setting-box">
                                                    <ul>
                                                        <a href="#4174.html" title="查看全文">
                                                            <li>查看全文</li>
                                                        </a>
                                                        <a href="#1" title="访问主页">
                                                            <li>访问主页</li>
                                                        </a>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="lmlblog-post-content ">

                                                <a class="post_list_link" href="#4174.html" style="color: black;">
                                                    <p>${publish.text}</p>
                                                </a>
                                            </div>
                                            <div class="lmlblog-post-images-list clear">
                                                <img src="${publish.picture}"/>
                                            </div>
                                            <div class="lmlblog-post-bar">

                                                <li class="lmlblog-no-like"
                                                    onclick='lmlblog_like_posts(4174,this,"post");'>
                                                    <i class="lmlblog-icon"><img src="../images/agree.png"></i>
                                                    <span>5</span>
                                                </li>


                                                <li onclick='list_comments_show(this);'>
                                                    <i class="lmlblog-icon"><img src="../images/comment.png"></i>
                                                    <span>2</span>
                                                </li>

                                                <li>
                                                    <i class="lmlblog-icon"><img src="../images/toSend.png"></i>
                                                    <span>9.4k</span>
                                                </li>

                                                <li class="tag clear">

                                            </div>
                                            <hr>
                                        </div>
                                    </c:if>
                                    <c:if test="${empty publish.picture}">
                                        <div class="lmlblog">
                                            <!-- 动态内容部分，包括列表 -->
                                            <div class="lmlblog-post-user-info">
                                                <div class="lmlblog-post-user-info-avatar" user-data="1">
                                                    <span class="lmlblog-vip-icon"></span><img
                                                        src="${sessionScope.user.head}"
                                                        class="avatar"/>
                                                    <div class="lmlblog-user-info-card">
                                                        <div class="info_card_loading"><img
                                                                src="../picture/chat-loading.gif">
                                                            <p>资料加载中...</p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="lmlblog-post-user-info-name">
                                                    <font style="color:#333;font-weight:600">${sessionScope.user.nickname}</font>
                                                </div>
                                                <div class="lmlblog-post-user-info-time"
                                                     title="${publish.time}">${publish.time}
                                                </div>
                                            </div><!-- 作者信息 -->

                                            <div class="lmlblog-post-setting">
                                                <i class="fa fa-angle-down"></i>
                                                <div class="lmlblog-post-setting-box">
                                                    <ul>
                                                        <a href="#4174.html" title="查看全文">
                                                            <li>查看全文</li>
                                                        </a>
                                                        <a href="#1" title="访问主页">
                                                            <li>访问主页</li>
                                                        </a>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="lmlblog-post-content ">

                                                <a class="post_list_link" href="#4174.html" style="color: black;">
                                                    <p>${publish.text}</p>
                                                </a>
                                            </div>
                                            <div class="lmlblog-post-bar">

                                                <li class="lmlblog-no-like"
                                                    onclick='lmlblog_like_posts(4174,this,"post");'>
                                                    <i class="lmlblog-icon"><img src="../images/agree.png"></i>
                                                    <span>5</span>
                                                </li>


                                                <li onclick='list_comments_show(this);'>
                                                    <i class="lmlblog-icon"><img src="../images/comment.png"></i>
                                                    <span>2</span>
                                                </li>

                                                <li>
                                                    <i class="lmlblog-icon"><img src="../images/toSend.png"></i>
                                                    <span>9.4k</span>
                                                </li>

                                                <li class="tag clear">

                                            </div>
                                            <hr>
                                        </div>
                                    </c:if>
                                </c:forEach>
                                <div class="lmlblog-post-footer-bar">
                                    <span title="2017-12-09 16:00:32">12月09日 16:00</span>
                                    <!-- posts_list -->
                                    <div class="lmlblog-pager"><a class="lmlblog-pager-left" href="#2">上一页</a>
                                        <div class="lmlblog-pager-center layui-form">
                                            <select>
                                                <option value="#=1">第 1 页</option>
                                                <option value="#=2">第 2 页</option>
                                                <option selected="selected" value="#3">第 3 页</option>
                                            </select>第 1 页
                                        </div>
                                        <a class="lmlblog-pager-right" href="#3">下一页</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 返回顶部 -->
<a href="javascript:returnTop();" class="cd-top"></a>
</body>
<script type="text/javascript">
    var sdelay = 0;

    function returnTop() {
        window.scrollBy(0, -100);//Only for y vertical-axis
        if (document.body.scrollTop > 0) {
            sdelay = setTimeout('returnTop()', 50);
        }
    }
</script>
<script type='text/javascript' src='../js/base.js'></script>
<script type='text/javascript' src='../js/all.js'></script>
<script type='text/javascript' src='../js/plupload.full.min.js'></script>
<script type='text/javascript' src='../js/layui.js'></script>
<script>
    jQuery(document).ready(function ($) {
        $.fn.smartFloat = function () {
            var position = function (element) {
                var top = element.position().top, pos = element.css("position");
                $(window).scroll(function () {
                    var scrolls = $(this).scrollTop();
                    if (scrolls > top) {
                        if (window.XMLHttpRequest) {
                            element.css({
                                position: "fixed",
                                top: 0
                            });
                        } else {
                            element.css({
                                top: scrolls
                            });
                        }
                    } else {
                        element.css({
                            position: "absolute",
                            top: top
                        });
                    }
                });
            };
            return $(this).each(function () {
                position($(this));
            });
        };
        $(".lmlblog-member-left-bg-xg").smartFloat();
    });
</script>
</html>