<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="./lib/fullpage.min.js"></script>

    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/login.css">
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
                <div class="slide" id="slide1">
                    <form action="#">
                        <div class="login-wrap">
                            <ul class="login-list">
                                <li class="logo"><a href="./index.jsp">B.B.B</a></li>
                                <li class="id"><input type="text" name="userid" id="userid" placeholder="ID"></li>
                                <li class="pwd"><input type="password" name="userpwd" id="userpwd"
                                        placeholder="PASSWORD"></li>
                                <li class="submit"><input type="submit" value="LOG IN"></li>
                                <li class="forget"><a href="#" style="display: none;">Lost Your Password?</a></li>
                                <li class="signup"><a href="./join.jsp">아직도 회원이 아닌가요?</a></li>
                            </ul>
                            <img id="introImg" border="0">
                        </div>
                    </form>
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
    </div>

    <script type="text/javascript">
        var myFullpage = new fullpage('#fullpage', {
            anchors: ['firstPage', 'lastPage'],
            lazyLoad: true,
            navigationTooltips: ['', 'footer']
        });

        var imgArray = new Array();
        imgArray[0] = "./image/1.jpg";
        imgArray[1] = "./image/2.jpg";
        imgArray[2] = "./image/3.jpg";
        imgArray[3] = "./image/4.jpg";
        imgArray[4] = "./image/5.jpg";
        imgArray[5] = "./image/6.png";
        imgArray[6] = "./image/7.jpg";


        function showImage() {
            var imgNum = Math.round(Math.random() * 6);
            var objImg = document.getElementById("introImg");
            objImg.src = imgArray[imgNum];
        }

    </script>

</body>

</html>