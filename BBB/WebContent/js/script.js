// 도메인 직접 입력 or domain option 선택
const domainListEl = document.querySelector('#domain-list');
const domainInputEl = document.querySelector('#domain-txt');
// select 옵션 변경 시
domainListEl.addEventListener('change', (event) => {
  // option에 있는 도메인 선택 시
  if (event.target.value !== "type") {
    // 선택한 도메인을 input에 입력하고 disabled
    domainInputEl.value = event.target.value
    domainInputEl.disabled = true
  } else { // 직접 입력 시
    // input 내용 초기화 & 입력 가능하도록 변경
    domainInputEl.value = ""
    domainInputEl.disabled = false
  }
})




/***
var basicTimeline = anime.timeline({
  autoplay: false
});

var pathEls = $(".check");
for (var i = 0; i < pathEls.length; i++) {
  var pathEl = pathEls[i];
  var offset = anime.setDashoffset(pathEl);
  pathEl.setAttribute("stroke-dashoffset", offset);
}

basicTimeline
  .add({
    targets: ".text",
    duration: 1,
    opacity: "0"
  })

  .add({
    targets: ".button",
    duration: 1300,
    height: 10,
    width: 300,
    backgroundColor: "#cccccc",
    border: "0",
    borderRadius: 100
  })

  .add({
    targets: ".progress-bar",
    duration: 2000,
    width: 300,
    easing: "linear"
  })

  .add({
    targets: ".button",
    width: 0,
    duration: 1
  })

  .add({
    targets: ".progress-bar",
    width: 80,
    height: 80,
    delay: 500,
    duration: 750,
    borderRadius: 80,
    backgroundColor: "#71DFBE"
  })

  .add({
    targets: pathEl,
    strokeDashoffset: [offset, 0],
    duration: 200,
    easing: "easeInOutSine"
  });

$(".button").click(function () {
  basicTimeline.play();
});

$(".text").click(function () {
  basicTimeline.play();
});
***/




/*** SECTION - ID ***/
const idInputEl = document.querySelector('#id')
const idErrorMsgEl = document.querySelector('.id-form .error-msg')
const errMsg = {
  id: {
    invalid: "6~20자의 영문 소문자와 숫자만 사용 가능합니다",
    success: "사용 가능한 아이디입니다",
    fail: "사용할 수 없는 아이디입니다"
  },
  pw: "8~20자의 영문, 숫자, 특수문자를 모두 포함한 비밀번호를 입력해주세요",
  pwRe: {
    success: "비밀번호가 일치합니다",
    fail: "비밀번호가 일치하지 않습니다"
  },
  mobile: "‘-’ 제외 11자리를 입력해주세요"
}

idInputEl.addEventListener('change', () => {
  const idRegExp = /^[a-zA-Z0-9]{6,20}$/ // 6~20자의 영문 소문자와 숫자
  if (idRegExp.test(idInputEl.value)) { // 유효성 검사 성공
    idErrorMsgEl.textContent = ""
    account.id = idInputEl.value
  } else { // 유효성 검사 실패
    idErrorMsgEl.textContent = errMsg.id.invalid
    account.id = null
  }
  console.log(account)
});



  // pwVal: 패스워드, pwReVal: 패스워드 재입력, isPwValid: 패스워드 유효 여부
  let pwVal = "", pwReVal = "", isPwValid = false
  const pwInputEl = document.querySelector('.pwd-form #pwd')
  const pwErrorMsgEl = document.querySelector('.pwd-form .error-msg')
  pwInputEl.addEventListener('change', () => {
    const pwRegExp = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/
    pwVal = pwInputEl.value
    if (pwRegExp.test(pwVal)) { // 정규식 조건 만족 O
      isPwValid = true
      pwErrorMsgEl.textContent = ""
    }
    else { // 정규식 조건 만족 X
      isPwValid = false
      pwErrorMsgEl.textContent = errMsg.pw
    }
    checkPwValid()
    console.log(pwVal, pwReVal, isPwValid, account)
  });

  /*** SECTION - PASSWORD RECHECK ***/
  const pwReInputEl = document.querySelector('.pwd-form #okpwd')
  const pwReErrorMsgEl = document.querySelector('.pwd-form .two')

  pwReInputEl.addEventListener('change', () => {
    pwReVal = pwReInputEl.value
    checkPwValid()
    console.log(pwVal, pwReVal, isPwValid, account)
  });

  // 비밀번호와 재입력 값 일치 여부
  function checkPwValid() {
    if (pwReVal === "") { // 미입력
      pwReErrorMsgEl.textContent = ""
    }
    else if (pwVal === pwReVal) { // 비밀번호 재입력 일치
      if (isPwValid)
        account.pw = pwVal
      pwReErrorMsgEl.style.color = "green"
      pwReErrorMsgEl.textContent = errMsg.pwRe.success
    }
    else { // 비밀번호 재입력 불일치
      pwReErrorMsgEl.style.color = "red"
      pwReErrorMsgEl.textContent = errMsg.pwRe.fail
    }
  }



