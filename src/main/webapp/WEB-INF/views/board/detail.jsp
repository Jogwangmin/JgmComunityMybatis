<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/boardView.css">
    </head>    
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main>
                <div id="main-top">
                    <div id="top-left">
                        <h3>${board.boardSubject }</h3>
                        <ul>
                            <li>추천수 ${board.likeCount }</li>
                            <li>댓글 0</li>
                        </ul>
                    </div>
                </div>
                <div id="main-mid">
                    <h3>${board.boardContent }</h3>
                    <img src="../resources/images/cat1.jpg" alt="cat" id="cat">
                </div>
                <div id="main-bottom">
                    <input type="text" value="내용을 입력해주세요.">
                    <input type="button" value="등록">
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