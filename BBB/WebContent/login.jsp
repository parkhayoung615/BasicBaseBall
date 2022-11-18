<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <link rel="stylesheet" href="./css/login.css">
</head>

<body onload="showImage()" style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <div class="wrapper">
        <!-- header 영역 -->
        <%@ include file="./view/header.jsp"%>


        <!-- 풀페이지 영역 -->
        <div id="fullpage">
            <!-- 메인 영역(로그인) -->
            <!-- 첫 번째 영역 -->
            <section class="section login">
                <div class="slide" id="slide1">
                    <form action="/login" method="post">
                        <div class="login-wrap">
                            <ul class="login-list">
                                <li class="logo"><a href="./index.jsp">B.B.B</a></li>
                                <li class="id"><input type="text" name="userid" id="userid" placeholder="ID"></li>
                                <li class="pwd"><input type="password" name="userpwd" id="userpwd"
                                        placeholder="PASSWORD"></li>
                                <li class="submit"><input type="submit" value="LOG IN"></li>
                                <li class="signup"><a href="./join.jsp">아직도 회원이 아닌가요?</a></li>
                            </ul>
                            <img id="introImg" border="0">
                        </div>
                    </form>
                </div>
            </section>

			<!-- footer 영역 -->
           	<%@ include file="./view/footer.jsp"%>
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