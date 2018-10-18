<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="http://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
    <style type="text/css">
        *{padding: 0;margin:0;}
        ul,li{list-style: none}
        .left{float: left;}
        .select_contain{font-size: 12px;color: #333;}
        .select_item{margin-right: 50px;position: relative;}
        .select_result{width: 75px;height:18px;text-align: center;text-indent: -8px;cursor:pointer;}
        .select_result .triangle{border:3px solid transparent;border-top:7px solid black;position: absolute;top: 5px; right:-67px;}
        .select_item ul{display:none;position:absolute;top:18px;right:0;width:150px;background: white;border:1px solid rgb(169, 169, 169); border-top-color:#f3f3f3;left:0px}
        .select_item ul li{text-align: center;cursor: pointer;}
        .select_item ul li:hover{background: dodgerblue; color: #fff;}
    </style>
    <script>
        function select(){
            $(document).click(function(){
                $(".select_module_con ul").slideUp();
            })
            var module=$(".select_result");
            module.click(function(e){
                e.stopPropagation();
                var ul=$(this).next();
                ul.stop().slideToggle();
                ul.children().click(function(e){
                    e.stopPropagation();
                    document.getElementById("expressId").value=$(this).text();
                    ul.stop().slideUp();
                })
            })
        }
        $(function(){
            select();
        })
    </script>
</HEAD>

<body>
<!--  -->
<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/admin/addPublish.do"
      method="post" enctype="multipart/form-data">
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee"
           style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26">
                <strong><STRONG>添加微博</STRONG>
                </strong>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                发博人：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <select id="user" name="userId" style="width:150px;">
                    <option value="">请选择</option>
                    <c:forEach items="${user}" var="u">
                        <option value="${u.userId}">${u.nickname}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                微博表情：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <div class="select_contain">
                    <div class="select_item clearfix left">
                        <div class="select_module_con left">
                            <div class="select_result">
                                <input style="margin-left: 7px;margin-top: -1px;height: 17px;width: 150px;" id ="expressId" name="expressId" value="请选择">
                                <div class="triangle"></div>
                            </div>
                            <ul>
                                <c:forEach items="${express}" var="e">
                                <li value="${e.expressionId}">
                                        ${e.expressionId}
                                    <img src="${e.expression}" style="height: 20px;width: 20px">
                                </li>
                            </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                微博图片：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <input type="file" name="picture"/>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                微博内容：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <textarea name="text" id="desc" rows="5" cols="30"></textarea>
            </td>
        </tr>
        <tr>
            <td class="ta_01" style="WIDTH: 100%" align="center"
                bgColor="#f5fafe" colSpan="4">
                <button type="submit" id="submit" value="确定" class="button_ok">
                    &#30830;&#23450;
                </button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
                <span id="Label1"></span>
            </td>
        </tr>
    </table>
</form>
</body>
</HTML>