.brand-MovieThumbnail {
  position: relative;
}

.brand-MovieThumbnail img {
  width: 100%;
}

.brand-MovieThumbnail_playButton {
  display: block;
  width: 68px;
  height: 48px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.brand-MovieThumbnail_playButton::before, .brand-MovieThumbnail_playButton::after {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  transition: opacity 0.1s ease-in-out;
  background-size: contain;
}

.brand-MovieThumbnail_playButton::before {
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal-movie/btn_play_active.svg");
  opacity: 0;
}

a:hover .brand-MovieThumbnail_playButton::before,
a:focus .brand-MovieThumbnail_playButton::before {
  opacity: 1;
}

.brand-MovieThumbnail_playButton::after {
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal-movie/btn_play.svg");
  opacity: 1;
}

a:hover .brand-MovieThumbnail_playButton::after,
a:focus .brand-MovieThumbnail_playButton::after {
  opacity: 0;
}

@media screen and (max-width: 768px) {
  .brand-MovieThumbnail_playButton {
    width: 8.85vw;
    height: 6.25vw;
  }
  .brand-MovieThumbnail_playButton::before, .brand-MovieThumbnail_playButton::after {
    transition: initial;
  }
  .brand-MovieThumbnail_playButton::before {
    opacity: 1;
  }
  .brand-MovieThumbnail_playButton::after {
    display: none;
  }
}

.brand-MovieModal {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0.7);
  padding: 0 50px;
  z-index: 1001;
  display: none;
}

@media screen and (max-width: 768px) {
  .brand-MovieModal {
    padding: 0 10px;
  }
}

.brand-MovieModal__inner {
  position: relative;
  background-color: #ffffff;
  margin: 0 auto;
  padding: 50px;
  max-width: 1180px;
  top: 50%;
  transform: translateY(-50%);
}

@media screen and (max-width: 768px) {
  .brand-MovieModal__inner {
    padding: 30px;
  }
}

.brand-MovieModal__close {
  position: absolute;
  top: 0;
  right: 0;
}

.brand-MovieModal__close a {
  display: block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal-movie/btn_close.png") no-repeat center center;
  text-indent: -9999px;
  width: 39px;
  height: 39px;
}

.brand-MovieModal__close a:hover {
  opacity: 0.6;
  text-decoration: none;
}

@media screen and (max-width: 768px) {
  .brand-MovieModal__close a {
    background-size: 20px auto;
    width: 20px;
    height: 20px;
  }
}

.brand-MovieModal__youtube > div {
  position: relative;
  padding: 0 0 56.25%;
  width: 100%;
  height: 0;
  overflow: hidden;
}

.brand-MovieModal__youtube iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100% !important;
  height: 100% !important;
}
