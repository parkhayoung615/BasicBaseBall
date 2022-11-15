<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About B.B.B</title>
    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="./lib/fullpage.min.js"></script>

    <!--
        css
        - style.css = 기본 css (header, footer)
        - login.css = login, join css
        - main.css = index, abuout css
        - sub.css = sub html css
        - fullpage.min.css = 풀페이지 웹사이트에 필요한 라이브러리 css
    -->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./lib/fullpage.min.css">
    <link rel="stylesheet" href="./css/about.css">
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
        <div id="fullpage">
            <!-- 메인 영역 -->
            <!-- 첫 번째 영역 -->
            <section class="section one">
                <div class="slide" id="slide1">
                    <div class="txt">
                        <div class="sub-tit">야구 용어 사전</div>
                        <div class="context">
                            B.B.B는 Basic Base Ball의 약자로,<br>
                            어렵고, 헷갈리고, 멀게 느껴지는 야구가 아닌<br>
                            누구에게나 쉽고 가깝게 느껴지는 스포츠로 만드는 것이<br>
                            B.B.B의 존재 이유입니다.
                        </div>
                    </div>
                </div>
            </section>
            <section class="section">
                <div class="why">
                    <div class="why-wrap">
                        <div class="whycontext whytxt txt1">왜</div>
                        <div class="whycontext whytxt txt2">ASK WHY</div>
                        <img src="./image/why.png" alt="생각하는 사람" class="whycontext why-img">
                        <div class="whycontext whybox"></div>
                        <div class="whycontext whytxt txt3">왜</div>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="answer">
                    <div class="answer-wrap">
                        <div class="answer-txt">
                            저는 <span class="red">KIA 타이거즈 팬</span>으로서,<br>친구에게 <span class="ico">삼진, 볼넷</span> 같은 야구 관련 용어를<br>연거푸 질문을 받은 경험을
                            했습니다.<br><br>그러한 경험을 바탕으로<br><span class="ico">‘야구 기본 상식 웹사이트’</span>라는 주제를 구상하게 되었습니다.
                        </div>
                    </div>
                </div>
            </section>

            <section class="section two">
                <div class="background">
                    <div class="container">
                        <div class="screen">
                            <div class="screen-header">
                                <div class="screen-header-left">
                                    <div class="screen-header-button close"></div>
                                    <div class="screen-header-button maximize"></div>
                                    <div class="screen-header-button minimize"></div>
                                </div>
                                <div class="screen-header-right">
                                    <div class="screen-header-ellipsis"></div>
                                    <div class="screen-header-ellipsis"></div>
                                    <div class="screen-header-ellipsis"></div>
                                </div>
                            </div>
                            <div class="screen-body">
                                <div class="screen-body-item left">
                                    <div class="app-title">
                                        <span>CONTACT</span>
                                        <span>B.B.B</span>
                                    </div>
                                    <div class="app-contact">CONTACT INFO : +82 010 3123 6181</div>
                                </div>
                                <div class="screen-body-item">
                                    <div class="app-form">
                                        <div class="app-form-group">
                                            <input class="app-form-control" placeholder="NAME">
                                        </div>
                                        <div class="app-form-group">
                                            <input class="app-form-control" placeholder="EMAIL">
                                        </div>
                                        <div class="app-form-group">
                                            <input class="app-form-control" placeholder="CONTACT NUMBER">
                                        </div>
                                        <div class="app-form-group message">
                                            <input class="app-form-control" placeholder="MESSAGE">
                                        </div>
                                        <div class="app-form-group buttons">
                                            <button class="app-form-button">CANCEL</button>
                                            <button class="app-form-button">SEND</button>
                                        </div>
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
                                    <li><a href="https://www.instagram.com/phy_0615/"><i
                                                class="fab fa-instagram"></i></a>
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

    <!-- 풀페이지 웹사이트에 필요한 js 코드 -->
    <script type="text/javascript">
        var myFullpage = new fullpage('#fullpage', {
            anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
            lazyLoad: true,
            navigationTooltips: ['', '', '', '', ''],
            showActiveTooltip: true
        });

    </script>
</body>

</html>