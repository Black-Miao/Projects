<%--
  Created by IntelliJ IDEA.
  User: Black
  Date: 2016/6/4
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/index.css" />
    <title>Title</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="logo">
            <a href="/category/add">添加类别</a>
            <a href="/article/add">添加文章</a></div>
        <div id="title">后台管理系统</div>
        <div id="user_info">
            <div id="welcome">欢迎${sessionScope.loginUserName}使用本系统</div>
            <div id="logout"><a href="/users/Users_logout.action">安全退出</a></div>
        </div>
    </div>
    <div id="navigator">
        <iframe src="<jsp:include page="tree.jsp"/>"></iframe>
    </div>
    <div id="main">
        <iframe name="MainFrame" src="Users_login_main.jsp"></iframe>
    </div>
    <div id="footer">Copyright © 2009-2015 All Rights Reserved Powered By Somoniu</div>
</div>

success
</body>
</html>
