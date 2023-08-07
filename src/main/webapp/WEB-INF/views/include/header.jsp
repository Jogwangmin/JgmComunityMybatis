<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header id="header">
	<div id="header-1"></div>
	<div id="header-2">
		<a href="/index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a>
	</div>
	<div id="header-3">
		<c:if test="${sessionScope.userId ne null }">
			<a href="/user/mypage.do">${sessionScope.userName }님</a>&nbsp;
			<a href="/user/logout.do">로그아웃</a>
		</c:if>
		<c:if test="${sessionScope.userId eq null }">
			<a href="/user/login.do"><input type="button" value="로그인" id="toplog-btn"></a>
		</c:if>
	</div>
</header>