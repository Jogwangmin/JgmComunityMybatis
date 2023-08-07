<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<title>ID/PW찾기</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/idPw.css">
    </head>     
    <body>
        <div id="container">
        	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main id="main">
                <div class="findID">
                    <form action="./login.do" method="">
                        <ul>
                            <li>
                                <label for="user-name">이름</label>
                                <input type="text" id="user-name" placeholder="이름을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="email">이메일</label>
                                <input type="email" id="email" placeholder="이메일을 입력해주세요." required>
                            </li>
                        </ul>
                        <input type="submit" value="아이디 찾기" id="findID">
                        <ul>
                            <li>
                                <label for="user-name">이름</label>
                                <input type="text" id="user-name" placeholder="이름을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="user-nick">아이디</label>
                                <input type="text" id="user-nick" placeholder="닉네임을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="email">이메일</label>
                                <input type="email" id="email" placeholder="이메일을 입력해주세요." required>
                            </li>
                        </ul>
                        <input type="submit" value="비밀번호 찾기" id="findID">
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