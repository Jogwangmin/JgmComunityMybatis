<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
 	<title>정보수정</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/Modification.css">
    </head>     
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main id="main">
                <div id="profile">
                    <div id="profile-info">
                        <img src="../resources/images/user.png" alt="프로필 사진" id="profile-picture">
                        <div id="profile-name"><input type="button" value="변경" id="profile-change"></div>
                    </div>
                    <div id="Modification">
                        <form action="/user/update.do" method="post">
                            <ul>
                                <li>
                                    <label for="user-id">아이디</label>
                                    <input type="text" id="user-id" name="user-id" value="${user.userId }" readonly>
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="user-pw">비밀번호</label>
                                    <input type="password" id="user-pw" name="user-pw" value="${user.userPw }">
                                    <input type="button" id="change" value="확인">
                                </li>
                                <li>
                                    <label for="user-name">닉네임</label>
                                    <input type="text" id="user-name" name="user-name" value="${user.userName }">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="user-age">나이</label>
                                    <input type="text" id="user-age" name="user-age" value="${user.userAge }" readonly>   
                                    <input type="button" id="change" value="변경">
                                </li>
                                
                                <li>
                                    <label for="user-email">이메일</label>
                                    <input type="email" id="user-email" name="user-email" value="${user.userEmail }">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="user-phone">전화번호</label>
                                    <input type="text" id="user-phone" name="user-phone" value="${user.userPhone }">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="user-address">주소</label>
                                    <input type="text" id="user-address" name="user-address" value="${user.userAddress }">
                                    <input type="button" id="change" value="변경">
                                </li>
                            </ul>
                            <div id="sumbitBtn">
                                <input type="submit" value="완료" id="ok">
                                <input type="reset" value="취소" id="cancle">
                            </div>
                        </form>
                    </div>
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