<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>용어 추가</title>
    <!-- fontawesome cdn, fullpage js, fullpage jquery 사용 -->
    <script src="https://kit.fontawesome.com/8ca5eadfef.js" crossorigin="anonymous"></script>
    <script src="./js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="./lib/fullpage.min.js"></script>
    <script src="./js/add.js"></script>

    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/add.css">
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
            <section class="section add">
                <div class="add-wrap">
                    <div class="title">
                        <div class="tit">ADD</div>
                    </div>
                    <form>
                        <select multiple >
                            <option selected>투수 (P)</option>
                            <option selected>포수 (C)</option>
                            <option>1루수 (1B)</option>
                            <option>2루수 (2B)</option>
                            <option>3루수 (3B)</option>
                            <option>유격수 (SS)</option>
                            <option>좌익수 (LF)</option>
                            <option>중견수 (CF)</option>
                            <option>우익수 (RF)</option>
                            <option>지명타자 (DH)</option>
                            <option>대타 (PH)</option>
                            <option>대주자 (PR)</option>
                            <option selected>공식 용어</option>
                            <option>비공식 용어</option>
                        </select>
    
                        <!-- dribbble -->
                        <a class="dribbble" href="https://dribbble.com/shots/5112850-Multiple-select-animation-field"
                            target="_blank"><img
                                src="https://cdn.dribbble.com/assets/dribbble-ball-1col-dnld-e29e0436f93d2f9c430fde5f3da66f94493fdca66351408ab0f96e2ec518ab17.png"
                                alt=""></a>
                        <input name="email" type="text" class="feedback-input" placeholder="TITLE" />
                        <textarea name="text" class="feedback-input" placeholder="COMMENT"></textarea>
                        <input type="submit" value="SUBMIT" />
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

        $('.dropdown-el').click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            $(this).toggleClass('expanded');
            $('#' + $(e.target).attr('for')).prop('checked', true);
        });
        $(document).click(function () {
            $('.dropdown-el').removeClass('expanded');
        });
    </script>

</body>

</html>