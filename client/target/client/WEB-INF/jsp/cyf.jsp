<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/14
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>index</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入自定义css文件 style.css -->
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>--%>

</head>
<body>
<input id="name" value="${name}" type="text">
<input id="commit" value="提交" type="button">
<h1 id="h1" style="color: black">1111</h1>
</body>
<script>
    $("#commit").click(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/testAjax.do",
            type:"post",
            data:{"username":$("#name").val()},
            dataType:"json",
            success:function (data) {
                if(data.status == 1) {
                    $("#h1").css("color","red");
                }
            }
        });
    });
</script>
</html>
