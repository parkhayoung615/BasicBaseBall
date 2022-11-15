<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="./lib/fullpage.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.js"></script>
    <!--
        css
        - style.css = 기본 css (header, footer)
        - login.css = login css
        - join.css = join css
        - main.css = index, abuout css
        - sub.css = sub html css
        - fullpage.min.css = 풀페이지 웹사이트에 필요한 라이브러리 css
        - not.css = 404page css
    -->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/not.css">
    <link rel="stylesheet" href="./lib/fullpage.min.css">
</head>

<body onload="showImage()" style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
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
            <section class="section login">
                <!-- tsParticles container -->
                <div id="tsparticles"></div>
                <section class="text">
                    <h1>404</h1>
                    <div id="termynal" data-termynal>
                        <span data-ty="input">이곳 은 맞는 주소가 아니었습니다.</span>
                        <script src="./js/termynal.js" data-termynal-container="#termynal"></script>
                    </div>
                </section>
                <script type="text/javascript"
                    src="https://cdn.jsdelivr.net/npm/tsparticles@2.3.4/tsparticles.bundle.min.js"></script>
                <script src="tsparticles.engine.min.js"></script>
                <script src="js/404.js"></script>
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
    </div>

    <script type="text/javascript">
        var myFullpage = new fullpage('#fullpage', {
            anchors: ['firstPage', 'lastPage'],
            lazyLoad: true,
            navigationTooltips: ['', 'footer']
        });
    </script>

    <script src="./js/script.js"></script>

</body>

</html>