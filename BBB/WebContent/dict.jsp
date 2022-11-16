<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dictionary</title>
    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>
    <script src="./js/dict.js"></script>

    <!--
        css
        - style.css = 기본 css (header, footer)
        - login.css = login, join css
        - main.css = index, abuout css
        - sub.css = sub html css
        - fullpage.min.css = 풀페이지 웹사이트에 필요한 라이브러리 css
    -->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/dict.css">
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <!--
        Base Base Ball
        클래스명에 하이픈(-)만 사용 ! 언더바(_) 사용 금지
        큰 틀에 wrap 기본 사용
    -->
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
                        <ul class="right-header sub-menu">
                            <li><a href="./about.jsp">ABOUT B.B.B</a></li>
                            <li><a href="./dict.jsp">Dictionary</a></li>
                            <li class="log"><a href="./login.jsp">Log in</a></li>
                            <li><a href="./select.jsp"><i class="fa-solid fa-magnifying-glass"></i></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>


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
                        <div class="lets"><a href="./add.jsp" class="lets-a">&#128587; 제가 알고 있는 용어가 없어요 ! (용어 추가 바로가기)
                                ></a></div>
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
                                <tr>
                                    <th scope="row">1</th>
                                    <td>투수, 포수</td>
                                    <td>배터리</td>
                                    <td>투수와 포수를 묶어서 말할 때 쓰는 단어</td>
                                </tr>
                                <tr>
                                    <th scope="row" class="even">2</th>
                                    <td class="even">비공식</td>
                                    <td class="even">가을야구</td>
                                    <td class="even">포스트시즌, KBO 포스트시즌</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>타자</td>
                                    <td>도루</td>
                                    <td>베이스에 있는 주자가 공과 상관없이 다음 베이스로 가는 것</td>
                                </tr>
                                <tr>
                                    <th scope="row" class="even">5</th>
                                    <td class="even">타자</td>
                                    <td class="even">도루</td>
                                    <td class="even">베이스에 있는 주자가 공과 상관없이 다음 베이스로 가는 것</td>
                                </tr>
                                <tr>
                                    <th scope="row">6</th>
                                    <td>타자</td>
                                    <td>도루</td>
                                    <td>베이스에 있는 주자가 공과 상관없이 다음 베이스로 가는 것</td>
                                </tr>
                                <tr>
                                    <th scope="row" class="even">7</th>
                                    <td class="even">타자</td>
                                    <td class="even">도루</td>
                                    <td class="even">베이스에 있는 주자가 공과 상관없이 다음 베이스로 가는 것</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <section id="modal1">
            <div class="popup-wrap">
                <div class="open-popup">
                    <div id="popup-design">
                        <div class="pop-content">
                            <div class="pop-tit">
                                <h2 class="num">1</h2>
                                <div class="sub-tit">투수, 포수</div>
                                <div class="tit">배터리</div>
                            </div>

                            <div id="main-content">
                                <div>
                                    <input type="checkbox" id="checkbox" />
                                    <label for="checkbox">
                                        <svg id="heart-svg" viewBox="467 392 58 57" xmlns="http://www.w3.org/2000/svg">
                                            <g id="Group" fill="none" fill-rule="evenodd"
                                                transform="translate(467 392)">
                                                <path
                                                    d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z"
                                                    id="heart" fill="#AAB8C2" />
                                                <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5"
                                                    r="1.5" />

                                                <g id="grp7" opacity="0" transform="translate(7 6)">
                                                    <circle id="oval1" fill="#9CD8C3" cx="2" cy="6" r="2" />
                                                    <circle id="oval2" fill="#8CE8C3" cx="5" cy="2" r="2" />
                                                </g>

                                                <g id="grp6" opacity="0" transform="translate(0 28)">
                                                    <circle id="oval1" fill="#CC8EF5" cx="2" cy="7" r="2" />
                                                    <circle id="oval2" fill="#91D2FA" cx="3" cy="2" r="2" />
                                                </g>

                                                <g id="grp3" opacity="0" transform="translate(52 28)">
                                                    <circle id="oval2" fill="#9CD8C3" cx="2" cy="7" r="2" />
                                                    <circle id="oval1" fill="#8CE8C3" cx="4" cy="2" r="2" />
                                                </g>

                                                <g id="grp2" opacity="0" transform="translate(44 6)">
                                                    <circle id="oval2" fill="#CC8EF5" cx="5" cy="6" r="2" />
                                                    <circle id="oval1" fill="#CC8EF5" cx="2" cy="2" r="2" />
                                                </g>

                                                <g id="grp5" opacity="0" transform="translate(14 50)">
                                                    <circle id="oval1" fill="#91D2FA" cx="6" cy="5" r="2" />
                                                    <circle id="oval2" fill="#91D2FA" cx="2" cy="2" r="2" />
                                                </g>

                                                <g id="grp4" opacity="0" transform="translate(35 50)">
                                                    <circle id="oval1" fill="#F48EA7" cx="6" cy="5" r="2" />
                                                    <circle id="oval2" fill="#F48EA7" cx="2" cy="2" r="2" />
                                                </g>

                                                <g id="grp1" opacity="0" transform="translate(24)">
                                                    <circle id="oval1" fill="#9FC7FA" cx="2.5" cy="3" r="2" />
                                                    <circle id="oval2" fill="#9FC7FA" cx="7.5" cy="2" r="2" />
                                                </g>
                                            </g>
                                        </svg>
                                    </label>
                                </div>
                            </div>
                            <hr>
                            <div class="pop-wrap">
                                <div class="pop-txt">
                                    투수와 포수를 묶어서 말할 때 쓰는 단어
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- footer 영역 -->
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
    </div>
    </div>

</body>

</html>