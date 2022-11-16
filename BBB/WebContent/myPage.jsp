<%@page import="vo.ContentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Page</title>
<script src="./js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="./css/mypage.css">
<link rel="stylesheet" href="./css/style.css">
</head>

<%
MemberVO vo = (MemberVO) session.getAttribute("loginOK");
if (vo == null) {
	out.println("<script>alert('로그인을 진행 해주세요!');</script>");
	out.print("<script> location.href = 'login.jsp' </script>");
}

ArrayList<ContentVO> list = (ArrayList<ContentVO>)request.getAttribute("bookmarkList");
ArrayList<ContentVO> list2 = (ArrayList<ContentVO>)request.getAttribute("baseballList");
%>

<body onload="showImage()"
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<div class="wrapper">
		<section class="section login">
			<div class="task-manager">
				<div class="left-bar">
					<div class="upper-part">
						<div class="actions">
							<div class="circle"></div>
							<div class="circle-2"></div>
						</div>
					</div>
					<!-- sidebar -->
					<div class="left-content">
						<ul class="action-list">
							<li class="item">
							<li class="logo"><a href="./index.jsp">B.B.B</a></li>
							</li>
							<li class="item"><svg xmlns="http://www.w3.org/2000/svg"
									width="24" height="24" viewBox="0 0 24 24" fill="none"
									stroke="currentColor" stroke-width="2" stroke-linecap="round"
									stroke-linejoin="round" class="feather feather-star">
                                    <polygon
										points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" />
                                </svg> <span><a href="./about.jsp">ABOUT
										B.B.B</a></span></li>
							<li class="item"><svg xmlns="http://www.w3.org/2000/svg"
									width="24" height="24" fill="none" stroke="currentColor"
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
									class="feather feather-calendar" viewBox="0 0 24 24">
                                    <rect width="18" height="18" x="3"
										y="4" rx="2" ry="2" />
                                    <path d="M16 2v4M8 2v4m-5 4h18" />
                                </svg> <span><a href="/listDictionary?sel=all">Dictionary</a></span>
							</li>
						</ul>


						<ul class="category-list">
							<li class="item">
								<svg xmlns="http://www.w3.org/2000/svg"
									width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
									class="feather feather-sun" viewBox="0 0 24 24">
                                    <circle cx="12" cy="12" r="5" />
                                    <path d="M12 1v2m0 18v2M4.22 4.22l1.42 1.42m12.72 12.72l1.42 1.42M1 12h2m18 0h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42" />
                                </svg> <span><a href="/quit">회원탈퇴</a></span>
                            </li>
                                
							<li class="item"><svg xmlns="http://www.w3.org/2000/svg"
									width="24" height="24" viewBox="0 0 24 24" fill="none"
									stroke="currentColor" stroke-width="2" stroke-linecap="round"
									stroke-linejoin="round" class="feather feather-zap">
                                    <polygon
										points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" />
                                </svg> <span><a href="/logout">로그아웃</a></span></li>
						</ul>
					</div>
				</div>
				<div class="page-content">
					<div class="header">My Page</div>
					<div class="content-categories">
						<div class="label-wrapper">
							<input class="nav-item" name="nav" type="radio" id="opt-2"
								checked> <label class="category" for="opt-2">BOOKMARK</label>
						</div>
					</div>
					<div class="tasks-wrapper">
						<div class="header upcoming">북마크 목록</div>
<%
						if(list != null) {
							for(ContentVO data : list) {
%>
						<div class="task">
							<span class="label-text"><a href="./dict.html"><%= data.getcTitle() %></a></span>
							<span class="tag waiting"><%= data.getcPosition() %></span>
						</div>
<%
							}
						}
%>
						
					</div>
				</div>

				<!-- right side bar -->
				<div class="right-bar">
					<div class="top-part">
						<a href="./index.jsp"><i class="fa-solid fa-house"></i></a>
					</div>
					<div class="header">용어 추가</div>
					<div class="right-content">
					
<%
						if(list2 != null) {
							for(ContentVO data : list) {
%>
						<div class="task-box yellow">
							<div class="description-task">
								<div class="time"><%= data.getcYn() %></div>
								<div class="task-name"><%= data.getcTitle() %></div>
							</div>
							<div class="more-button"></div>
							<div class="members">
								<div class="txt"><%= data.getcContents() %></div>
							</div>
						</div>
						<%
							}
						}
%>
						
					</div>
				</div>
			</div>
		</section>

		<!-- footer 영역 
        <div class="section fp-auto-height">
            <footer>
                <div class="footer-wrap">
                    <ul class="footer-list">
                        <li class="logo">B.B.B</li>
                        <li class="footer-text">&copy; 2022. JSP Project B.B.B All Rights Reserved.</li>
                        <li class="sns">
                            <ul class="sns-list">
                                <li><a href="https://www.instagram.com/phy_0615/"><i class="fab fa-instagram"></i></a>
                                </li>
                                <li><a href="https://github.com/parkhayoung615"><i class="fab fa-github"></i></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </footer>
        </div>
        -->
	</div>


</body>

</html>