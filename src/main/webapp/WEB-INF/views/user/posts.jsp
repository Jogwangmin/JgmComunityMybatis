<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>내가 쓴 글</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/posts.css">
    </head>     
    <body>
        <div id="container">
           <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main id="main">
                <h1>내가 쓴 글</h1>
                <div id="table1">
                    <table>
                        <tr>
                            <th>내가 쓴 게시글</th>
                            <th>내가 쓴 댓글</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#"> 우리집 주인님 주무시는 모습 도촬....(+10)</a>
                            </td>
                            <td>
                                <a href="#">귀엽다....</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#">ㅋㅋㅋㅋㅋㅋㅋㅋㅋ(+0)</a>
                            </td>
                            <td>
                                <a href="#">이거 아닌듯</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#">고양이 vs 개(+42)</a>
                            </td>
                            <td>
                                <a href="#">당연히 곤양이아님?</a>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
                <input type="radio" checked name="page">
                <input type="radio" name="page">
                <input type="radio" name="page">
                <input type="radio" name="page">
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