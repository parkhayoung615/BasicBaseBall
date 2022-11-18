<%@page import="java.util.ArrayList"%>
<%@page import="vo.ContentVO"%>
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
    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>

    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/mypage.css">
    <link rel="stylesheet" href="./css/admin.css">
</head>
<%
MemberVO vo = (MemberVO) session.getAttribute("loginOK");
if (vo == null) {
	out.println("<script>alert('로그인을 진행 해주세요!');</script>");
	out.print("<script> location.href = 'login.jsp' </script>");
}
// 승인 대기 목록 출력
ArrayList<ContentVO> list = (ArrayList<ContentVO>)request.getAttribute("getAdminList");
%>

<body onload="showImage()" style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
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
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-star">
                                    <polygon
                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" />
                                </svg>
                                <span><a href="./about.jsp">ABOUT B.B.B</a></span>
                            </li>
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                    stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" class="feather feather-calendar" viewBox="0 0 24 24">
                                    <rect width="18" height="18" x="3" y="4" rx="2" ry="2" />
                                    <path d="M16 2v4M8 2v4m-5 4h18" />
                                </svg>
                                <span><a href="/listDictionary?sel=all">Dictionary</a></span>
                            </li>
                        </ul>


                        <ul class="category-list">
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-zap">
                                    <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" />
                                </svg>
                                <span><a href="/logout">로그아웃</a></span>
                            </li>
                        </ul>
                    </div>
                </div>
                 <div class="page-content">
                    <div class="header">Admin Page</div>
                    <div class="tasks-wrapper">
                        <div class="header">승인 대기</div>
                        <div class="right-content">
<%
						if(list != null) {
							for(ContentVO data : list) {
%>
                            <div class="task-box yellow">
                                <div class="description-task">
                                    <div class="time"><%= data.getcYn() %></div>
                                    <div class="task-name"><%= data.getcTitle() %></div>
                                </div>
                                <button class="more-button"></button>
                                <div class="more-box">
                                    <div class="more-box-wrap">
                                        <a href="/change?id=<%= data.getcId() %>&yn=Y">승인</a>
                                        <a href="/change?id=<%= data.getcId() %>&yn=O">취소</a>
                                    </div>
                                </div>
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

                <!-- right side bar -->
                <div class="right-bar">
                    <div class="top-part">
                        <a href="./index.jsp"><i class="fa-solid fa-house"></i></a>
                    </div>
                   <div class="right-content">
                        <img src="./image/haha.png" alt="하뇽뇽" width="230px">
                        <h2 style="margin-top: 30px; margin-left: 30px;">박하영의 JSP 개인 프로젝트 !!</h2>
                   </div>
                </div>
            </div>
        </section>
    </div>


</body>

</html>