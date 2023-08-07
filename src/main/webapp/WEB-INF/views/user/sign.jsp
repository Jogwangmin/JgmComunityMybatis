<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<title>회원가입</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/sign.css">
    </head>     
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main id="main">
                <div class="sign-form">
                    <form action="/user/register.do" method="post">
                        <ul>
                            <li>
                                <label for="user-id">아이디</label>
                                <input type="text" id="user-id" name="user-id" placeholder="아이디를 입력하세요." >
                            </li>
                            <li>
                                <label for="user-pw">비밀번호</label>
                                <input type="password" id="user-pw" name="user-pw" placeholder="비밀번호를 입력하세요." >
                            </li>
                            <li>
                                <label for="user-name">닉네임</label>
                                <input type="text" id="user-name" name="user-name" placeholder="닉네임을 입력해주세요.">
                            </li>
                            <li>
                                <label for="user-age">나이</label>
                                <input type="text" id="user-age" name="user-age" placeholder="나이를 입력해주세요.">   
                            </li>
                            <li>
                                <label for="user-email">이메일</label>
                                <input type="email" id="user-email" name="user-email" placeholder="이메일을 입력해주세요.">
                            </li>
                            <li>
                                <label for="user-phone">전화번호</label>
                                <input type="text" id="user-phone" name="user-phone" placeholder="전화번호 입력해주세요.">
                            </li>
                            <li>
                                <label for="user-address">주소</label>
                                <input type="text" id="user-address" name="user-address" placeholder="주소를 입력해주세요.">
                            </li>
                        </ul>
                        <input type="submit" value="회원가입" id="sign-up">
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