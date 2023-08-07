<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./resources/css/topFoot.css">
		<link rel="stylesheet" href="./resources/css/main.css">
	</head>
	<body>
		<div id="container">
<!-- 			<header id="header"> -->
<!-- 				<div id="header-1"></div> -->
<!-- 				<div id="header-2"> -->
<!-- 					<a href="/index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a> -->
<!-- 				</div> -->
<!-- 				<div id="header-3"> -->
<%-- 				<c:if test="${sessionScope.userId ne null }"> --%>
<!-- 					<a href="/user/mypage.do   ">마이페이지</a><a href="/user/logout.do">로그아웃</a> -->
<%-- 				</c:if> --%>
<%-- 				<c:if test="${sessionScope.userId eq null }"> --%>
<!-- 					<a href="/user/login.do"><input type="button" value="로그인" id="toplog-btn"></a> -->
<%-- 				</c:if> --%>
<!-- 				</div> -->
<!-- 			</header> -->
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
			<main>
				<div id="main">
					<h1>인기쟁이들</h1>
					<div id="main-top">
						<div id="top">
							<div id="top-1">
								<img src="./resources/images/user.png" alt="user"><a
									href="./board/boadrView2.jsp"><h4>댕댕좌</h4></a>
							</div>
							<div id="top-2">
								<a href="./board/boardView2.jsp"><img
									src="./resources/images/dog1.jpg" alt="dog1" id="dog1"></a> <img
									src="./resources/images/heart.png" alt="heart" id="topheart">
								<p id="hearTag">+111</p>
							</div>
							<div id="top-3">
								<input type="radio" name="page"><input type="radio"
									name="page" checked><input type="radio" name="page">
							</div>
						</div>
					</div>
					<h1>자유 게시판</h1>
					<div id="main-bottom">
						</h1>
						<div id="bottom-1">
							<div id="bt1"></div>
							<div id="bt1-1"></div>
							<img src="./resources/images/heart.png" alt="하트" id="heart">
							<p id="pTag">+24</p>
						</div>
						<div id="bottom-2">
							<div id="bt2"></div>
							<div id="bt2-1"></div>
							<img src="./resources/images/heart.png" alt="하트" id="heart">
							<p id="pTag">+14</p>
						</div>
						<div id="bottom-3">
							<div id="bt3"></div>
							<div id="bt3-1"></div>
							<img src="./resources/images/heart.png" alt="하트" id="heart">
							<p id="pTag">+34</p>
						</div>
					</div>
				</div>
			</main>
			<footer>
				<div id="footer">
					<div id="footer-left"></div>
					<div id="footer-right">
						<ul id="footer-ul">
							<li id="footer-li"><a href="#">서비스 이용약관 및 운영원칙</a></li>
							<br>
							<li id="footer-li">전화번호 : 02-1242-4124</li>
							<br>
							<li id="footer-li">주소 : 서울특별시 성북구 종암동 월곡로 10길</li>
							<br>
						</ul>
					</div>
				</div>
			</footer>
		</div>
	</body>
</html>