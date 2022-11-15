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
                            <li class="logo"><a href="./index.html">B.B.B</a></li>
                            </li>
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-star">
                                    <polygon
                                        points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" />
                                </svg>
                                <span><a href="./about.html">ABOUT B.B.B</a></span>
                            </li>
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                    stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" class="feather feather-calendar" viewBox="0 0 24 24">
                                    <rect width="18" height="18" x="3" y="4" rx="2" ry="2" />
                                    <path d="M16 2v4M8 2v4m-5 4h18" />
                                </svg>
                                <span><a href="./dict.html">Dictionary</a></span>
                            </li>
                        </ul>


                        <ul class="category-list">
                            <li class="item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-zap">
                                    <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" />
                                </svg>
                                <span>로그아웃</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page-content">
                    <div class="header">Admin Page</div>
                    <div class="tasks-wrapper">
                        <h1 class="task-header">CONTACT ME</h1>
                        <table class="rwd-table">
                            <tr>
                                <th>Num</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact Number</th>
                                <th>Message</th>
                            </tr>
                            <tr>
                                <td data-th="num Title">1</td>
                                <td data-th="Name">박하영</td>
                                <td data-th="Email">parkhayoung615@gmail.com</td>
                                <td data-th="Contact Number">01031236181</td>
                                <td data-th="Message">안뇽하영아사실난널너무좋아하는듰그냥그렇다고알아만두라고</td>
                            </tr>
                            <tr>
                                <td data-th="num Title">2</td>
                                <td data-th="Name">하뇽뇽</td>
                                <td data-th="Email">parkhayoung0615@gmail.com</td>
                                <td data-th="Contact Number">01012346181</td>
                                <td data-th="Message">안뇽안뇽</td>
                            </tr>
                            <tr>
                                <td data-th="num Title">3</td>
                                <td data-th="Name">녕냥냥</td>
                                <td data-th="Email">ys2110103@y-y.hs.kr</td>
                                <td data-th="Contact Number">0317451267</td>
                                <td data-th="Message">너좋아한게죄라면죈데그게죄라고할수잇어씨 팔</td>
                            </tr>
                        </table>
                    </div>
                </div>

                <!-- right side bar -->
                <div class="right-bar">
                    <div class="top-part">
                        <a href="./index.html"><i class="fa-solid fa-house"></i></a>
                    </div>
                    <div class="header">승인 대기</div>
                    <div class="right-content">
                        <div class="task-box yellow">
                            <div class="description-task">
                                <div class="time">승인대기중</div>
                                <div class="task-name">중견수</div>
                            </div>
                            <div class="more-button"></div>
                            <div class="members">
                                <div class="txt">내용 : 외야수 중 가운데 필드를 수비하는 사람</div>
                            </div>
                        </div>
                        <div class="task-box blue">
                            <div class="description-task">
                                <div class="time">승인대기중</div>
                                <div class="task-name">좌익수</div>
                            </div>
                            <div class="more-button"></div>
                            <div class="members">
                                <div class="txt">내용 : 외야수 중 좌측 필드를 수비하는 사람</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!--https://codepen.io/coopergoeke/pen/KKzrgOQ-->


</body>

</html>