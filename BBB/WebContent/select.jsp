<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>검색</title>

    <link rel="stylesheet" href="./css/select.css">
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <!--
        Base Base Ball
        클래스명에 하이픈(-)만 사용 ! 언더바(_) 사용 금지
        큰 틀에 wrap 기본 사용
    -->
    <div class="wrapper">
        <!-- header 영역 -->
        <%@ include file="./view/header.jsp"%>

        <!-- 풀페이지 영역 -->
        <div id="fullpage">
            <!-- 메인 영역 -->
            <!-- 첫 번째 영역 -->
            <section class="section one">
                <div class="select">
                    <div class="select-wrap">
                        <div class="select-form">
                            <div class="selectinput">
                                <input type="text" class="select-input" name="sel" id="sel" placeholder="검색어를 입력하세요.">
                            </div>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                        <div class="cate">
                            <div class="cate-wrap">
                                <ul class="cate-list">
                                    <li>
                                        <div class="sub-tit">포지션별 검색</div>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">투수 (P)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">포수 (C)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">1루수 (1B)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">2루수 (2B)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">3루수 (3B)</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">유격수 (SS)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">좌익수 (LF)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">중견수 (CF)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">우익수 (RF)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">지명타자 (DH)</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">대타 (PH)</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">대주자 (PR)</a></li>
                                        </ul>
                                    </li>
                                    <hr>
                                    <li>
                                        <div class="sub-tit">용어 검색</div>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">공식</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">비공식</a></li>
                                        </ul>
                                    </li>
                                    <hr>
                                    <li>
                                        <div class="sub-tit">KBO 구단 검색</div>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">SSG Landers</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">KIWOOM Heroes</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">KIA Tigers</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">LOTTE Giants</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">DOOSAN Bears</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="./dict.jsp" class="dict-button">SAMSUNG Lions</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">LG Twins</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">HANWHA Eagles</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">NC Dinos</a></li>
                                            <li><a href="./dict.jsp" class="dict-button">KT Wiz</a></li>
                                        </ul>
                                    </li>
                                </ul>
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
            anchors: ['firstPage', 'lastPage'],
            lazyLoad: true,
            navigationTooltips: ['', 'footer'],
            showActiveTooltip: true
        });

    </script>
</body>

</html>