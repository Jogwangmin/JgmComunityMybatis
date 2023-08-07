<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/login.css">
    </head>     
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main id="main">
                <div class="login-form">
	               	<form action="/user/login.do" method="post">
		       		 	<div id="log-top">
			                <label for="id-input" id="user-id" >아이디</label>
			                <input type="text" id="id-input" name="user-id" required>
			                <label for="pw-input" id="user-pw" >비밀번호</label>
			                <input type="password" id="pw-input"  name="user-pw"required>
		               	</div>
		               	<div id="log-bottom">
			                <input type="submit" value="로그인" id="log-btn" >
		           	 	</div>
		           	 	<div class="sign">
			                <a href="/user/register.do" id="sign">회원가입</a>
			                <a href="findIdPw.jsp" id="pwfind">ID/PW찾기</a>
		               	</div>
	                </form>
                </div>
            </main>
            <footer>
                <div id="footer">
                    <div id="footer-left">
                    </div>
                    <div id="footer-right">
                        <ul id="footer-ul">
                            <li id="footer-li"><a href="#">서비스 이용약관 및 운영원칙</a></li> <br>
                            <li id="footer-li">전화번호 : 02-1242-4124</li> <br>
                            <li id="footer-li">주소 : 서울특별시 성북구 종암동 월곡로 10길</li><br>
                        </ul>
                    </div>
                </div>                    
            </footer>
        </div>
    </body>
</html>