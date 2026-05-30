// YoutubeのJSファイルをロード
var tag = document.createElement("script");
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName("script")[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// YoutubeのJSファイルがロードされると実行
var player = {};
function onYouTubeIframeAPIReady() {
  (function ($) {
    $(".js_youtube").each(function (i) {
      // プレイヤーに連番でIDを振る
      $(this)
        .find(".js_player")
        .attr({ id: "youtube_player_" + i });

      $(this).attr({ "data-youtube-num": i });

      // 属性から情報を取得して設定する
      var targetYoutubeID = $(this).attr("data-youtubeid");
      var targetPlayerID = $(this).find(".js_player").attr("id");

      // プレイヤーの生成
      player[i] = new YT.Player(targetPlayerID, {
        playerVars: {
          loop: 1,
          playsinline: 1,
          origin: location.protocol + "//" + location.hostname + "/",
        },
        videoId: targetYoutubeID,
      });
    });
  })($brand);
}

(function ($) {
    // modal
    var popNum;
    var youtubeNum = 0;
    var youtubeNumPrev;
    var youtubeNumNext;
    var modalSwiper = new Swiper(".swiper-container-modal", {
      loop: true,
      speed: 500,
      slidesPerView: 1, // 1画面に見えるスライドの数
      allowTouchMove: false,
      autoHeight: true,
      pagination: {
        el: ".swiper-pagination",
      },
      navigation: {
        nextEl: ".js_modal_arrow_right",
        prevEl: ".js_modal_arrow_left",
      },
      on: {
        transitionStart: function () {
          // 現在開いでいるスライド、前後のスライドのyoutube番号を取得
          youtubeNum = $(".swiper-slide-active")
            .find(".js_youtube")
            .attr("data-youtube-num");
          youtubeNumPrev = $(".swiper-slide-prev")
            .find(".js_youtube")
            .attr("data-youtube-num");
          youtubeNumNext = $(".swiper-slide-next")
            .find(".js_youtube")
            .attr("data-youtube-num");
        },
        transitionEnd: function () {
          //スクロール位置をTOPにする
          $(".js_modal_scroll").animate({ scrollTop: 0 });
        },
      },
    });

    $(".js_modal_trigger").on("click", function () {
      //スクロール位置をTOPにする
      $(".js_modal_scroll").scrollTop(0);

      //開くmodal番号を取得
      var target = $(this).attr("data-modal-link");

      // 開いた時に表示するスライド番号取得
      popNum = $(this).attr("data-pop-num");

      // 開いた時に表示するスライドに移動
      modalSwiper.slideTo(Number(popNum), 0);

      // 現在開いでいるスライド、前後のスライドのyoutube番号を取得
      youtubeNum = $(".swiper-slide-active")
        .find(".js_youtube")
        .attr("data-youtube-num");
      youtubeNumPrev = $(".swiper-slide-prev")
        .find(".js_youtube")
        .attr("data-youtube-num");
      youtubeNumNext = $(".swiper-slide-next")
        .find(".js_youtube")
        .attr("data-youtube-num");

      youtubeReset(youtubeNum);
      openModal(target);
    });

    $(".js_modal_close").on("click", function () {
      closeModal();
    });

    $(".js_modal_inner").on("click", function (e) {
      // モーダルの中身をクリックしても、閉じないようにする
      e.stopPropagation();
    });

    // modal開く
    function openModal(target) {
      $("body").addClass("is_modal_show");
      $("#" + target).addClass("is_modal_show");
    }

    // modal閉じる
    function closeModal() {
      $("body").removeClass("is_modal_show");
      $(".js_modal_content").removeClass("is_modal_show");
      // youtube 停止
      for (var i = 0; i < $(".js_youtube").length; i++) {
        player[i].stopVideo();
      }
    }

    // youtube 初期化
    function youtubeReset(i) {
      player[i].seekTo(0);
      player[i].playVideo();
    }

    // 矢印切り替え
    $(".js_modal_arrow_right, .js_modal_arrow_left").on("click", function () {
      // youtube 停止
      for (var i = 0; i < $(".js_youtube").length; i++) {
        player[i].stopVideo();
      }

      youtubeReset(youtubeNum);
    });
})($brand);
