<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.js"></script>

<link rel="stylesheet" href="./css/join.css">
</head>

<body onload="showImage()"
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<div class="wrapper">
		<!-- header 영역 -->
		<%@ include file="./view/header.jsp"%>

		<!-- 풀페이지 영역 -->
		<div id="fullpage">
			<!-- 메인 영역 -->
			<!-- 첫 번째 영역 -->
			<section class="section one">
				<div class="slide" id="slide1">
					<form action="/join" method="post">
						<div id="join">
							<div class="join-wrap">
								<div class="join-box">
									<div class="title">
										<div class="tit">
											회원가입
											<div class="sub-tit">가입을 통해 더 다양한 서비스를 만나보세요!</div>
										</div>
									</div>
									<div class="join-form">
										<div class="id-form form">
											<input type="text" name="id" id="id" class="id" required="required"
												placeholder="아이디 입력 (6~20자)">
											<div class="error-msg"></div>
										</div>
										<div class="pwd-form form">
											<input type="password" name="pwd" id="pwd" required="required"
												placeholder="비밀번호 입력 (문자, 숫자, 특수문자 포함 8~20자)">
											<div class="error-msg"></div>
											<input type="password" name="okpwd" id="okpwd" required="required"
												placeholder="비밀번호 재입력">
											<div class="error-msg two"></div>
										</div>
										<div class="email-form form">
											<input type="text" name="email" id="email" required="required"
												placeholder="이메일 주소"> <span>&#64;</span> <input
												class="box" id="domain-txt" type="text" readonly="readonly"> <select
												class="box" name="selectbox" id="domain-list">
												<option value="naver.com">naver.com</option>
												<option value="google.com">google.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="kakao.com">kakao.com</option>
											</select>
										</div>
										<div class="error-msg"></div>
										<div class="phone-form form">
											<input type="text" name="phone" class="phone" required="required"
												placeholder="휴대폰 번호 입력 ('-' 제외 11자리 입력)">
												<!-- <button>확인</button> -->
											<div class="error-msg"></div>
										</div>
										<div class="submit-form form">
											<div class="result-fail"></div>
											<button type="submit" class="button">가입하기</button>
											<!--
                                            <button type="submit" class="button">
                                                <div class="text">가입하기</div>
                                            </button>
                                            <div class="progress-bar"></div>
                                            <svg x="0px" y="0px" viewBox="0 0 25 30"
                                                style="enable-background:new 0 0 25 30;">
                                                <path class="check" class="st0"
                                                    d="M2,19.2C5.9,23.6,9.4,28,9.4,28L23,2" />
                                            </svg>-->
										</div>
									</div>
								</div>
							</div>
							<img class="background" src="./image/bases.png" alt="배경">
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
							<li class="footer-text">&copy; 2022. JSP Project B.B.B All
								Rights Reserved.</li>
							<li class="sns">
								<ul class="sns-list">
									<li><a href="https://www.instagram.com/phy_0615/"><i
											class="fab fa-instagram"></i></a></li>
									<li><a href="https://github.com/parkhayoung615"><i
											class="fab fa-github"></i></a></li>
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