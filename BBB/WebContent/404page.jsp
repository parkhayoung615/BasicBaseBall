<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 NOT FOUND</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.js"></script>

    <link rel="stylesheet" href="./css/not.css">
</head>

<body onload="showImage()" style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <div class="wrapper">
        <!-- header 영역 -->
        <%@ include file="./view/header.jsp"%>


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
            <%@ include file="./view/footer.jsp"%>
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