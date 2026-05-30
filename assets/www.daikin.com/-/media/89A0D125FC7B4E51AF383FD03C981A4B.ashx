html {
  background: #fff;
}

body {
  background: transparent;
}

.g-main {
  padding: 0 !important;
}

.brand-Header {
  position: relative;
  z-index: 11;
}

.brand-ContentsArea {
  background: #fff;
  padding-bottom: 1px;
}

.brand-ContentsArea_inner {
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
}

.brand-ContentsArea_inner img {
  max-width: 100%;
  height: auto;
}

@keyframes fadeIn {
  0% {
    opacity: 0.1;
  }

  50% {
    opacity: 1;
  }

  100% {
    opacity: 0.1;
  }
}

.air-page-loader {
  background-color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 8;
  transition: all 0.5s ease-out 0.3s;
  padding-top: 131px;
}

@media screen and (max-width: 768px) {
  .air-page-loader {
    padding-top: 62px;
  }
}

.-is-loaded .air-page-loader {
  opacity: 0;
  visibility: hidden;
}

.air-page-loader__inner {
  width: 125px;
  opacity: 0;
  position: relative;
  transform-origin: center;
  transform: scale(0.7);
  transition: all 0.8s ease-out;
}

@media screen and (max-width: 768px) {
  .air-page-loader__inner {
    width: 120px;
  }
}

.-is-start .air-page-loader__inner {
  opacity: 1;
  transform: scale(1);
}

.air-page-loader__inner::before {
  border: 2px solid #09c;
  border-radius: 50%;
  box-sizing: border-box;
  content: "";
  display: block;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  width: 125px;
  height: 125px;
  opacity: 0;
  transition: all 0.8s ease-out;
}

@media screen and (max-width: 768px) {
  .air-page-loader__inner::before {
    width: 120px;
    height: 120px;
  }
}

.-is-loaded .air-page-loader__inner::before {
  opacity: 1;
}

.air-page-loader__text {
  font-size: 1.2rem;
  font-weight: 600;
  display: flex;
  align-items: center;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 11;
  animation: fadeIn 2s linear 0s infinite normal;
}

.air-page-loader__textInner {
  display: block;
  text-align: center;
  width: 100%;
  position: relative;
  z-index: 5;
}

.air-progress {
  width: 100%;
}

.loader {
  background-color: #fff;
  position: fixed;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  z-index: 9999;
}

@keyframes load {
  0% {
    stroke-dashoffset: 0;
  }
}

.loader svg {
  width: 125px;
  height: 125px;
}

.loader svg:nth-child(2) {
  position: absolute;
  left: 0;
  top: 0;
  transform: rotate(-90deg);
}

.loader svg:nth-child(2) path {
  fill: none;
  stroke-width: 25;
  stroke-dasharray: 629;
  stroke: #fff;
  opacity: 0.9;
  animation: load 10s;
}

.air-main-bg {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}

.air-main-bg__item {
  background-position: 0 12%;
  background-repeat: no-repeat;
  background-size: cover;
  image-orientation: none;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  will-change: opacity;
}

@media screen and (max-width: 768px) {
  .air-main-bg__item {
    background-position: 70% 16%;
  }
}

@media screen and (max-width: 480px) {
  .air-main-bg__item {
    background-position: 45% 16%;
  }
}

.air-main-bg__item:nth-of-type(1) {
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-pc01.jpg");
  z-index: 0;
}

@media screen and (max-width: 768px) {
  .air-main-bg__item:nth-of-type(1) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-tb01.jpg");
  }
}

@media screen and (max-width: 480px) {
  .air-main-bg__item:nth-of-type(1) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-sp01.jpg");
  }
}

.air-main-bg__item:nth-of-type(2):before {
  background: linear-gradient(to right, rgba(0, 151, 224, 0.5) 0, rgba(54, 178, 240, 0.5) 25%, rgba(54, 178, 240, 0) 50%);
  content: "";
  display: block;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  will-change: opacity;
}

@media screen and (max-width: 480px) {
  .air-main-bg__item:nth-of-type(2):before {
    display: none;
  }
}

.air-main-bg__item:nth-of-type(2) {
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-pc02.jpg");
  opacity: 0;
  z-index: 1;
}

@media screen and (max-width: 768px) {
  .air-main-bg__item:nth-of-type(2) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-tb02.jpg");
  }
}

@media screen and (max-width: 480px) {
  .air-main-bg__item:nth-of-type(2) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-sp02.jpg");
  }
}

.-is-loaded .air-main-bg__item:nth-of-type(2) {
  transition: opacity 1.25s ease-out 1.5s;
}

.air-main-bg__item:nth-of-type(3) {
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-pc03.jpg");
  opacity: 0;
  z-index: 2;
  transition: opacity 1.25s ease-out;
}

@media screen and (max-width: 768px) {
  .air-main-bg__item:nth-of-type(3) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-tb03.jpg");
  }
}

@media screen and (max-width: 480px) {
  .air-main-bg__item:nth-of-type(3) {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_main-visual-sp03.jpg");
  }
}

.-is-loaded .air-main-bg__item.-is-visible:nth-of-type(2),
.air-main-bg__item.-is-visible:nth-of-type(3) {
  opacity: 1;
}

.air-main-bg__item.-is-visible:nth-of-type(2):before {
  opacity: 1;
}

.air-main-visual {
  background: transparent;
  box-sizing: border-box;
  color: #fff;
  text-shadow: #0097e0 0 0 6px;
  width: 100%;
  height: 100%;
  padding: 80px 5.125% 0;
  overflow: hidden;
  position: relative;
  opacity: 0;
  transition: opacity 1.25s ease-out 2.5s;
}

@media screen and (max-width: 768px) {
  .air-main-visual {
    padding: 64px 6.5% 0;
  }
}

@media screen and (max-width: 480px) {
  .air-main-visual {
    padding: 70px 5.125% 0;
    height: 1250px;
  }
}

.air-main-visual:before {
  background: linear-gradient(rgba(0, 151, 224, 0.64) 0, rgba(0, 151, 224, 0.64) 50%, rgba(0, 151, 224, 0) 70%);
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

@media (min-width: 30.0625em) {
  .air-main-visual:before {
    display: none;
  }
}

.air-main-visual__inner {
  max-width: 960px;
  margin: 0 auto;
  position: relative;
  z-index: 5;
}

@media screen and (max-width: 480px) {
  .air-main-visual__inner {
    text-align: center;
  }
}

.air-main-visual__title {
  font-size: calc(40 / var(--font-size-root) * 1rem);
  line-height: 1.4;
  font-weight: bold;
  margin-bottom: 14px;
  color: #fff;
  text-shadow: 0 0 6px #0097e0;
}

@media screen and (max-width: 768px) {
  .air-main-visual__title {
    font-size: calc(40 / var(--font-size-root) * 1rem);
    line-height: 1.3;
    margin-bottom: 21px;
  }
}

@media screen and (max-width: 480px) {
  .air-main-visual__title {
    font-size: calc(34 / var(--font-size-root) * 1rem);
    line-height: 1.18;
    margin-bottom: 15px;
  }
}

.air-main-visual__text {
  font-size: calc(18 / var(--font-size-root) * 1rem);
  line-height: 1.67;
  width: calc(50% - 15px);
  margin-bottom: 15px;
}

.air-main-visual__text:last-of-type {
  margin-bottom: 27px;
}

/* css追記 */
.anniversary-banner {
  position: relative;
  display: inline-block;
  margin: 32px 0 0;
  width: calc(50% - 15px);
}

.anniversary-banner>img {
  width: 100%;
}

.anniversary-banner:hover>img {
  opacity: 0.6;
}

.anniversary-banner::before {
  content: "";
  position: absolute;
  background: #fff;
  width: 100%;
  height: 100%;
  z-index: -1;
}

/* css追記ここまで */

@media screen and (max-width: 480px) {
  .air-main-visual__text {
    font-size: calc(16 / var(--font-size-root) * 1rem);
    line-height: 1.56;
    width: 100%;
  }

  /* css追記 */
  .anniversary-banner {
    width: 100%;
  }

  /* css追記ここまで */
}

.-is-loaded .air-main-visual {
  opacity: 1;
}

.air-ideal {
  background: transparent;
  justify-content: flex-end;
  align-items: center;
  box-sizing: border-box;
  color: #fff;
  text-shadow: #0097e0 0 0 6px;
  display: flex;
  margin-top: 40%;
  padding: 90px 5.125% 120px;
  width: 100%;
  height: 100vh;
  overflow: hidden;
}

@media screen and (max-width: 768px) {
  .air-ideal {
    padding: 90px 0 0;
    justify-content: center;
    align-items: flex-end;
    min-height: 600px;
    margin-top: 16%;
  }
}

@media screen and (max-width: 480px) {
  .air-ideal {
    height: 100%;
    min-height: initial;
    margin-top: 0;
  }
}

.air-ideal__block {
  box-sizing: border-box;
  display: block;
  align-items: flex-end;
  padding: 4% 0 5.125% 1.3%;
  width: 50%;
  position: relative;
  z-index: 5;
}

@media screen and (max-width: 768px) {
  .air-ideal__block {
    display: flex;
    padding: 80px 0 0;
    width: 100%;
  }
}

.air-ideal__inner {
  width: 100%;
}

@media screen and (max-width: 768px) {
  .air-ideal__inner {
    background: transparent linear-gradient(0deg, #0097e0 0, rgba(56, 179, 240, 0.66) 70%, rgba(54, 178, 240, 0) 100%);
    padding: 128px var(--width-contents-padding) 100px;
    text-align: center;
  }
}

@media screen and (max-width: 480px) {
  .air-ideal__inner {
    background: transparent linear-gradient(0deg, #0097e0 0, rgba(56, 179, 240, 0.66) 70%, rgba(54, 178, 240, 0) 100%);
    padding: 0 var(--width-contents-padding) 45px;
  }
}

.air-ideal__title {
  font-size: calc(30 / var(--font-size-root) * 1rem);
  line-height: 1.4;
  font-weight: bold;
  color: #fff;
  text-shadow: 0 0 6px #0097e0;
  margin-bottom: 21px;
  transition: all 1.25s ease-out;
}

@media screen and (max-width: 480px) {
  .air-ideal__title {
    font-size: calc(24 / var(--font-size-root) * 1rem);
    line-height: 1.5;
  }
}

.air-ideal__text {
  font-size: calc(18 / var(--font-size-root) * 1rem);
  line-height: 1.67;
  color: #fff;
  text-shadow: 0 0 6px #0097e0;
  margin-bottom: 27px;
  transition: all 1.25s ease-out;
}

@media screen and (max-width: 480px) {
  .air-ideal__text {
    font-size: calc(16 / var(--font-size-root) * 1rem);
    line-height: 1.56;
  }
}

.top-Poster3 {
  background: 50% 0 no-repeat;
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_poster_03.jpg");
  background-size: cover;
  min-height: calc(690 / 1366 * 100vw);
}

/* css追記 */
.top-Poster-elements {
  background: 50% 0 no-repeat;
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bnr_possibility_PC.jpg");
  background-size: cover;
  min-height: calc(690 / 1366 * 100vw);
  display: flex;
  align-items: center;
  padding: 80px 5.125%;
}

.top-Poster-elements p {
  color: #0097e0;
  max-width: 50%;
}

/* css追記ここまで */

@media screen and (min-width: 480.1px) and (max-width: 768.1px) {
  .top-Poster3 {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_poster_03_tb.jpg");
    min-height: calc(550 / 768 * 100vw);
  }

  /* css追記 */
  .top-Poster-elements {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bnr_possibility_TB.jpg");
    padding: 80px 5.125% 120vw;
    text-align: center;
  }
}

@media screen and (max-width: 768.1px) {
  .top-Poster-elements p {
    max-width: 100%;
  }
}

/* css追記ここまで */

@media screen and (max-width: 480px) {

  /* css追記 */
  .top-Poster-elements {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bnr_possibility_SP.jpg");
    min-height: calc(550 / 768 * 100vw);
    padding: 80px 6.5% 100vw;
    text-align: center;
  }

  /* css追記ここまで */
  .top-Poster3 {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/images/bg_poster_03_sp.jpg");
    min-height: calc(557 / 375 * 100vw);
  }
}

.top-Poster3_inner {
  /* css変更 */
  position: relative;
  z-index: 5;
  /* css変更ここまで */
  margin-right: auto;
  margin-left: auto;
  padding-left: var(--width-contents-padding);
  padding-right: var(--width-contents-padding);
  text-align: center;
  padding-top: 60px;
  padding-bottom: 415px;
}

/* css追記 */
.top-Poster-elements_inner {
  max-width: 960px;
  margin: 0 auto;
  margin-right: auto;
}

/* css追記ここまで */

@media screen and (min-width: 480.1px) and (max-width: 768.1px) {
  .top-Poster3_inner {
    padding-top: 60px;
    padding-bottom: 275px;
  }
}

@media screen and (max-width: 480px) {
  .top-Poster3_inner {
    padding-top: 80px;
    padding-bottom: 210px;
  }
}

.top-Poster_heading2 {
  font-size: calc(30 / var(--font-size-root) * 1rem);
  line-height: 1.4;
  color: #0097e0;
  font-weight: bold;
  margin-bottom: 21px;
}

@media screen and (max-width: 768px) {
  .top-Poster_heading2 {
    margin-bottom: 26px;
  }
}

@media screen and (max-width: 480px) {
  .top-Poster_heading2 {
    font-size: calc(24 / var(--font-size-root) * 1rem);
    line-height: 1.5;
    margin-bottom: 22px;
  }
}

.top-Poster_text {
  font-size: calc(18 / var(--font-size-root) * 1rem);
  line-height: 1.67;
  margin-bottom: 27px;
}

@media screen and (max-width: 480px) {
  .top-Poster_text {
    font-size: calc(16 / var(--font-size-root) * 1rem);
    line-height: 1.56;
  }
}

.top-Poster3 .top-Poster_text {
  color: #0097e0;
}

.top-Poster3 .top-Poster_text:last-of-type {
  margin-bottom: 27px;
}

.top-Poster_button {
  display: inline-block;
  color: #fff !important;
  background: var(--color-button-blue-bg);
  font-weight: bold;
  text-align: center;
  padding: 12px;
  font-size: calc(16 / var(--font-size-root) * 1rem);
  line-height: 1.56;
  padding-top: 10px;
  padding-bottom: 11px;
  margin-bottom: 17px;
  text-shadow: none;
}

.top-Poster_button:hover,
.top-Poster_button:focus {
  background: var(--color-button-bg-hover);
}

.top-Poster_button:before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_white.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
}

@media screen and (max-width: 480px) {
  .top-Poster_button {
    display: block;
  }
}

.top-Poster_button:last-child {
  margin-bottom: 0;
}

@media screen and (max-width: 480px) {
  .top-Poster_button {
    margin-right: 5%;
    margin-left: 5%;
  }
}

.top-Poster_button::before {
  top: -0.1em;
}

.top-Poster_button.js-brand-MovieModal::before {
  display: none;
}

.top-Poster_linkList {
  font-size: calc(16 / var(--font-size-root) * 1rem);
  line-height: 1.56;
  display: grid;
  grid-template-columns: 1fr;
  gap: 10px;
  padding-left: 14px;
  text-indent: -14px;
}

.air-main-visual .top-Poster_linkList a {
  color: #fff;
  font-weight: bold;
  text-shadow: 0 0 6px #0097e0;
}

.air-main-visual .top-Poster_linkList a::before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_white.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
  top: -0.1em;
}

.top-Poster_linkList a:hover,
.top-Poster_linkList a:focus,
.top-Poster_linkList a:active {
  text-decoration: underline;
}

.top-Intro {
  padding-top: 110px;
  padding-bottom: 80px;
  text-align: center;
}

@media screen and (max-width: 480px) {
  .top-Intro {
    padding-top: 60px;
    padding-bottom: 55px;
  }
}

.top-Intro_heading {
  font-size: calc(30 / var(--font-size-root) * 1rem);
  line-height: 1.4;
  color: var(--color-heading);
  font-weight: bold;
  margin-bottom: 25px;
}

@media screen and (max-width: 480px) {
  .top-Intro_heading {
    font-size: calc(24 / var(--font-size-root) * 1rem);
    line-height: 1.5;
  }
}

.top-Intro_heading span {
  display: inline-block;
}

.top-Intro_text {
  font-size: calc(18 / var(--font-size-root) * 1rem);
  line-height: 1.67;
  max-width: 75%;
  margin-left: auto;
  margin-right: auto;
}

@media screen and (max-width: 768px) {
  .top-Intro_text {
    max-width: initial;
  }
}

@media screen and (max-width: 480px) {
  .top-Intro_text {
    font-size: calc(16 / var(--font-size-root) * 1rem);
    line-height: 1.56;
    max-width: initial;
  }
}

.top-Nav {
  margin-bottom: 90px;
}

.top-Nav_item {
  border-bottom: solid 1px var(--color-border);
  padding-top: 40px;
  padding-bottom: 50px;
  display: grid;
  gap: 30px;
  grid-template-columns: 1fr 1fr;
}

.top-Nav_item:first-of-type {
  border-top: solid 1px var(--color-border);
}

@media screen and (min-width: 480.1px) and (max-width: 768.1px) {
  .top-Nav_item {
    gap: 20px;
  }
}

@media screen and (max-width: 480px) {
  .top-Nav_item {
    padding-top: 30px;
    padding-bottom: 35px;
    grid-template-columns: 1fr;
  }
}

.top-Nav_heading {
  font-size: calc(30 / var(--font-size-root) * 1rem);
  line-height: 1.4;
  color: var(--color-heading);
  font-weight: bold;
  margin-bottom: 19px;
}

@media screen and (max-width: 480px) {
  .top-Nav_heading {
    font-size: calc(24 / var(--font-size-root) * 1rem);
    line-height: 1.5;
  }
}

.top-Nav_img {
  margin-bottom: 17px;
}

.top-Nav_img img {
  width: 100%;
  max-width: 100%;
}

.top-Nav_text {
  font-size: calc(16 / var(--font-size-root) * 1rem);
  line-height: 1.56;
  margin-bottom: 13px;
}

@media screen and (max-width: 480px) {
  .top-Nav_text {
    font-size: calc(14 / var(--font-size-root) * 1rem);
    line-height: 1.57;
    margin-bottom: 18px;
  }
}

.top-Button {
  display: inline-block;
  color: #fff !important;
  background: var(--color-button-bg);
  font-weight: bold;
  text-align: center;
  padding: 12px;
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
}

.top-Button:hover,
.top-Button:focus {
  background: var(--color-button-bg-hover);
}

.top-Button:before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_blue.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
}

@media screen and (max-width: 480px) {
  .top-Button {
    display: block;
  }
}

@media screen and (max-width: 480px) {
  .top-Button {
    margin-right: 5%;
    margin-left: 5%;
  }
}

.top-Nav_links {
  display: grid;
  gap: 15px;
  grid-template-columns: 1fr 1fr;
}

.top-Nav_links img {
  display: block;
  margin-bottom: 12px;
}

.top-Nav_label {
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
  color: var(--color-link-text);
  display: inline-block;
  padding-left: 14px;
  text-indent: -14px;
}

.top-Nav_label:visited {
  color: var(--color-link-text-visited-com);
}

.top-Nav_label:hover,
.top-Nav_label:focus,
.top-Nav_label:active {
  color: var(--color-link-text);
  text-decoration: underline;
}

.top-Nav_label::before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_blue.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
}