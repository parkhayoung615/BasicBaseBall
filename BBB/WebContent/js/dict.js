$(document).ready(function () {
  $(".even").on('click', function (event) {
    $("#popup-design").show();   //팝업 오픈
    $("body").append('<div class="backon"></div>'); //뒷배경 생성
    $("body").addClass("modal-open");
  });

  $("body").on("click", function (event) {
    if (event.target.className == 'backon') {
      $("#popup-design").hide(); // close버튼이거나 뒷배경 클릭시 팝업 삭제
      $(".backon").hide();
      $("body").removeClass("modal-open")
    }
  });
});

