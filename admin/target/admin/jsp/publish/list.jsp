<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入自定义css文件 style.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
    <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <script type="text/javascript">
        function addProduct(){
            window.location.href = "${pageContext.request.contextPath}/admin/findExpressAndUser.do";
        }
    </script>
</HEAD>
<body>
<br>
<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3">
                <strong>微博列表</strong>
            </TD>
        </tr>
        <tr>
            <td class="ta_01" align="right">
                <button type="button" id="add" name="add" value="添加" class="button_add" onclick="addProduct()">添加微博</button>
            </td>
        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr
                            style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

                        <td align="center" width="10%">
                            序号
                        </td>
                        <td align="center" width="10%">
                            微博内容
                        </td>
                        <td align="center" width="10%">
                            微博表情
                        </td>
                        <td align="center" width="10%">
                            微博图片
                        </td>
                        <td align="center" width="10%">
                            发博人
                        </td>
                        <td align="center" width="10%">
                            发博时间
                        </td>
                        <td width="7%" align="center">
                            删除
                        </td>
                    </tr>
                    <c:forEach items="${publish}" var="p" varStatus="vs">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                    ${vs.count }
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                    ${p.text}
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                <c:if test="${not empty p.expressions.expression}">
                                    <img src="${p.expressions.expression}" alt="" style="width: 30px;height: 30px">
                                </c:if>
                                <c:if test="${empty p.expressions.expression}">
                                    null
                                </c:if>
                            </td>
                            <c:if test="${not empty p.picture}">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                <img width="40" height="45" src="${p.picture}">
                            </td>
                            </c:if>
                            <c:if test="${empty p.picture}">
                                <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                    width="10%">
                                    null
                                </td>
                            </c:if>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                ${p.expressions.user.nickname}
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="10%">
                                ${p.time}
                            </td>
                            <td align="center" style="HEIGHT: 22px">
                                <a href="${pageContext.request.contextPath}/admin/deletePublish.do?publish_content_id=${p.publish_content_id}" onclick="return confirm('确认是否删除该微博？')">
                                    <img src="${pageContext.request.contextPath}/images/i_del.gif" width="16"
                                         height="16" border="0" style="CURSOR: hand">
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
        </TBODY>
    </table>
</form>
<nav aria-label="Page navigation">
    <ul class="pagination" style="margin-left: 40%">
        <c:if test="${page.isFirstPage == true}">
            <li class="disabled">
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=0"
                   aria-label="Previous">
                    <span aria-hidden="true">首页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isFirstPage != true}">
            <li>
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=0"
                   aria-label="Previous">
                    <span aria-hidden="true">首页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isFirstPage == true}">
            <li class="disabled">
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.prePage}"
                   aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isFirstPage != true}">
            <li>
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.prePage}"
                   aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
            </li>
        </c:if>
        <c:forEach begin="${page.navigateFirstPage}" end="${page.navigateLastPage}" var="item" step="1">
            <c:if test="${item == page.pageNum}">
                <li class="active">
                    <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${item}">${item}</a>
                </li>
            </c:if>
            <c:if test="${item != page.pageNum}">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${item}">${item}</a>
                </li>
            </c:if>
        </c:forEach>
        <c:if test="${page.isLastPage == true}">
            <li class="disabled">
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.nextPage}"
                   aria-label="Next">
                    <span aria-hidden="true">下一页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isLastPage != true}">
            <li>
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.nextPage}"
                   aria-label="Next">
                    <span aria-hidden="true">下一页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isLastPage == true}">
            <li class="disabled">
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.pages}"
                   aria-label="Next">
                    <span aria-hidden="true">尾页</span>
                </a>
            </li>
        </c:if>
        <c:if test="${page.isLastPage != true}">
            <li>
                <a href="${pageContext.request.contextPath}/admin/adminFindAllProduct.do?pageNum=${page.pages}"
                   aria-label="Next">
                    <span aria-hidden="true">尾页</span>
                </a>
            </li>
        </c:if>
    </ul>
</nav>
</body>
</HTML>

