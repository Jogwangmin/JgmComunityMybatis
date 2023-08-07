<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		   <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/board.css">
	</head>
	<body>
		<div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main>
                <div id="profile">
                    <div><img src="../resources/images/user.png" alt=""></div>
                        <ul>
                            <li><a href="#">내 게시글 : 3</a></li>
                            <li><a href="#">내 댓글 : 4</a></li>
                        </ul>
                </div>
                <div id="bar">
                    <form action="">
                        <select name="category">
                            <optgroup label="카테고리">
                                <option>전체게시판</option>
                                <option>자유게시판</option>
                                <option>질문게시판</option>
                                <option>나눔게시판</option>
                                <option>이벤트게시판</option>
                            </optgroup>
                        </select>
                        <input type="search" placeholder="검색어를 입력하세요.">
                        <img src="../resources/images/search.png" alt="검색" id="search">
                        <a href="/board/insert.do"><input type="button" value="글쓰기"></a>
                        <img src="../resources/images/upload.jpg" alt="글쓰기" id="upload">
                    </form>
                </div>
                <div id="tb">
                    <table>
                        <tr>
                            <th id="no">No.</th>
                            <th id="title">제목</th>
                            <th id="user">글쓴이</th>
                            <th id="date">등록일</th>
                            <th id="views">조회수</th>
                            <th id="up">추천수</th>
                        </tr>
                        <c:forEach var="board" items="${requestScope.bList }" >
                        <tr>
                            <td>${board.boardNo }</td>
                            <td><a href="/board/detail.do?boardNo=${board.boardNo }">${board.boardSubject }</a></td>
                            <td>${board.boardWriter }</td>
                            <td>${board.boardDate }</td>
                            <td>${board.viewCount }</td>
                            <td>${board.likeCount }</td>
                        </tr>
                        </c:forEach>
                       	<tr>
							<td colspan="6" align="center">
								${pageNavi }
							</td>
						</tr>
<!--                         <tr> -->
<!--                             <td>65</td> -->
<!--                             <td><a href="#">(자유)우리집 개 또 사고쳤네요...</a></td> -->
<!--                             <td>악마견주</td> -->
<!--                             <td>23/06/09</td> -->
<!--                             <td>3,221</td> -->
<!--                             <td>252</td> -->
<!--                         </tr> -->
<tr>
				</tr>
				
                    </table>
                </div>
                <br>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
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