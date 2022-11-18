<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.JdbcUtil"%>
<%@page import="vo.BaseballVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dictionary</title>
<script src="./js/dict.js"></script>

<link rel="stylesheet" href="./css/dict.css">
</head>

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<div class="wrapper">
		<!-- header 영역 -->
		<%@ include file="./view/header.jsp"%>
	<%
	if(vo == null) {
		out.println("<script>alert('로그인을 진행 해주세요!');</script>");
		out.print("<script> location.href = 'index.jsp' </script>");
	}
	

	ArrayList<BaseballVO> list = (ArrayList<BaseballVO>)request.getAttribute("baseballList");
	
%>

		<!-- 풀페이지 영역 -->
		<!-- 메인 영역 -->
		<!-- 첫 번째 영역 -->
		<div class="dict">
			<div class="dict-wrap">
				<div class="list">
					<div class="list-wrap">
						<div class="title">
							<div class="tit">야구 용어 사전</div>
							<div class="sub-tit">어렵기만 한 야구 용어를 손쉽게 알아보세요!</div>
						</div>
						<div class="lets">
							<a href="./add.jsp" class="lets-a">&#128587; 제가 알고 있는 용어가 없어요
								! (용어 추가 바로가기) ></a>
						</div>
						<table class="type10">
							<thead>
								<tr>
									<th scope="cols">Num</th>
									<th scope="cols">포지션</th>
									<th scope="cols">용어</th>
									<th scope="cols">내용</th>
								</tr>
							</thead>
							<tbody>

<%
						if(list != null) {
							int n = 0;
							for(BaseballVO data : list) {
								n++;
%>
								<tr class="even">
									<th scope="row"><%= n %></th>
									<td><%= data.getBbPosition() %></td>
									<td><%= data.getBbTitle() %></td>
									<td><%= data.getBbContents() %></td>
								</tr>
<%
							}
						}
%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			$(function() {
			  $(".heart").on("click", function() {
			    $(this).toggleClass("is-active");
			  });
			});
		</script>


		<!-- footer 영역 -->
		<div class="section fp-auto-height">
			<footer>
				<div class="footer-wrap">
					<ul class="footer-list">
						<li class="logo">B.B.B</li>
						<li class="footer-text">&copy; 2022. JSP Project B.B.B All
							Rights Reserved.</li>
						<li class="sns">
							<ul class="sns-list">
								<li><a href="https://www.instagram.com/phy_0615/"><i
										class="fab fa-instagram"></i></a></li>
								<li><a href="https://github.com/parkhayoung615"><i
										class="fab fa-github"></i></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</footer>
		</div>
	</div>
	</div>

</body>

</html>