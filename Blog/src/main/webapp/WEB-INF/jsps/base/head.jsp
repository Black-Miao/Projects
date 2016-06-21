<%--
  Created by IntelliJ IDEA.
  User: Black
  Date: 2016/6/13
  Time: 14:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
    <script src="${ctx}/resources/js/jquery-1.12.1.min.js"></script>
    <link href="${ctx}/resources/css/head.css" rel="stylesheet" type="text/css"/>
    <title>head</title>
    <script type="text/javascript">
        $(document).ready(function(){
            var loginUsername="<%=session.getAttribute("loginUsername")%>";
            if (loginUsername=='null'){
                $("#edit").hide();
            }
            else if (loginUsername!='null'){
                $("#userLogin").hide();
            }
        });
    </script>
</head>
<body>
<div id="header">
    <div id="logo"><img src="${ctx}/resources/image/logo.png" title="logo"  height="100" width="250" /></div>
    <div id="user">
        <div id="userLogin">您还未登陆！|
            <a href="/user/register" id="register">注册</a>|
            <a href="/user/login" id="login">登录</a>
        </div>
        <div id="edit">
            欢迎您，${sessionScope.loginUsername}
            <a href="/user/editUser?uid=2" id="editUser">编辑信息</a>
            <a href="/user/userLogout">安全退出</a>
        </div>
    </div>
</div>
</body>
</html>
