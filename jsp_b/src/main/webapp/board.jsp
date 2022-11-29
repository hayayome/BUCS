<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board</title>
    <link rel="stylesheet" href="./css/loginPage.css">
    <link rel="stylesheet" href="./css/board.css">
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String userid = (String)session.getAttribute("userid");
%>
                
<body>
    <div class="board_wrap">
        <div class="board">
            <div class="board_top">
                <div><a href="#">전체</a></div>
                <div><a href="#">공지</a></div>
                <div><a href="#">자유</a></div>
                <div><a href="#">질문</a></div>
                <% if(userid != null) {%>	
		        <!-- 로그인전 화면 -->
		          <div><a href="./write.jsp">글쓰기</a></div>
		        <%}%>
            </div>
            <div class="board_mid">
                <div class="board_search_wrap">
                    <select class="board_search_select">
                        <option value="1">제목+내용</option>
                        <option value="2">제목</option>
                        <option value="3">내용</option>
                        <option value="4">글쓴이</option>
                    </select>
                    <div class="search" id="board_search"><input placeholder="검색어를 입력해주세요"></div>
                    <button class="search_btn" id="board_search_btn">검색</button>
                </div>

                <table class="board_table">
                    <thead>
                        <tr>
                            <th id="number">번호</th>
                            <th id="title">제목</th>
                            <th id="date">등록일자</th>
                            <th id="count">조회수</th>
                        </tr>
                    </thead>
                    <tbody id="board_contents">
                        <tr class="info">
                            <td>9999</td>
                            <td>얘는 공지 입니다</td>
                            <td>2022-10-12</td>
                            <td>1520</td>
                        </tr>
                        
                        <tr class="info">
                            <td>9999</td>
                            <td>얘는 공지 입니다</td>
                            <td>2022-10-12</td>
                            <td>1520</td>
                        </tr>


                        <tr>
                            <td>9999</td>
                            <td>테스트용 입니다</td>
                            <td>2022-10-12</td>
                            <td>1520</td>
                        </tr>

                        <tr>
                            <td>002</td>
                            <td>테스트용 입니다</td>
                            <td>2022-10-10</td>
                            <td>152</td>
                        </tr>

                        <tr>
                            <td>003</td>
                            <td>테스트용 입니다</td>
                            <td>2022-10-11</td>
                            <td>120</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="board_bot">
                <ul id="change_page">
                    <li><a href="#">◀</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">▶</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>