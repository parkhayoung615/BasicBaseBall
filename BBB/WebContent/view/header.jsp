<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
<script src="https://kit.fontawesome.com/8ca5eadfef.js"
	crossorigin="anonymous"></script>
<script src="./js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./lib/fullpage.min.js"></script>

<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./lib/fullpage.min.css">
</head>

<body onload="showImage()"
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<div class="wrapper">
		<!-- header 영역 -->

		<header>
			<div class="header-wrap">
				<ul class="header-list">
					<li>
						<ul class="left-header sub-menu">
							<li class="logo"><a href="./index.jsp">B.B.B</a></li>
							<li>PROJECT</li>
						</ul>
<%
						 // session 속성 (logOK)이 설정되어 있으면 "id 님", 그렇지 않으면 로그인
						MemberVO vo = (MemberVO)session.getAttribute("loginOK");
						if (vo != null) {
%>
						<ul class="right-header sub-menu">
							<li><a href="./about.jsp">ABOUT B.B.B</a></li>
							<li><a href="./dict.jsp">Dictionary</a></li>
							<li calss="name"><%=vo.getUserId()%>님</li>
							<li class="user"><a href="./myPage.jsp">My Page</a></li>
							<li class="signup"><a class="logout" href="/logout">Logout</a></li>
							<li><a href="./select.jsp"><i
									class="fa-solid fa-magnifying-glass"></i></a></li>
						</ul>
<%
						 } else {
%>
						<ul class="right-header sub-menu">
							<li><a href="./about.jsp">ABOUT B.B.B</a></li>
							<li><a href="./dict.jsp">Dictionary</a></li>
							<li class="log"><a href="./login.jsp">Log in</a></li>
							<li><a href="./select.jsp"><i
									class="fa-solid fa-magnifying-glass"></i></a></li>
						</ul>
<%
						}
%>
					</li>
				</ul>
			</div>
		</header>