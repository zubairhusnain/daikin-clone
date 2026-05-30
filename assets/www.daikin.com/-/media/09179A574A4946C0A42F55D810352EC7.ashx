#HeaderWrap,
#GlobalNavWrap {
  position: relative;
}

#GlobalNavWrap {
  z-index: 1;
}

#HeaderShrinking #HeaderWrap,
#HeaderShrinking #GlobalNavWrap {
  position: static;
}

@media only screen and (max-width: 768px) {
  .g-page-dept .g-main {
    padding-top: 0;
  }
}

.main-contents {
  position: relative;
  z-index: 1;
  background: #fff;
}

@media screen and (max-width: 960px) {
  .set-responsiveWebDesign #HeaderShrinking {
    position: relative !important;
  }
}

#GlobalLocationsWrap,
#FooterWrap {
  position: relative;
  z-index: 1;
}


/* 2023.03 change */
.hero {
  position: relative;
  display: flex;
  align-items: center;
  height: 562px;
  margin: 0 -15px;
  padding: 0 15px;
}

.hero::before {
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  width: 60%;
  height: 100%;
  background: linear-gradient(to right,
      rgba(0, 150, 222, 0.5) 0%,
      rgba(0, 150, 222, 0.5) 77%,
      rgba(0, 150, 222, 0) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#800096de', endColorstr='#000096de', GradientType=1);
  transform: translate(-100%, 0);
  transition-property: -webkit-transform;
  transition-duration: 0.4s;
  transition-timing-function: linear;
  transition-delay: 1s;
}

.hero_bg {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  z-index: 0;
  width: 100%;
  height: calc(562px);
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/images/main_tic.jpg") no-repeat 50% 0 / cover;
}

.hero_inner {
  position: relative;
  z-index: 1;
  display: none;
  width: calc(50% - 30px / 2);
  box-sizing: border-box;
}

.hero_inner.is-active {
  display: block;
}

.hero_ttl,
.hero_text {
  color: #fff;
}

.hero_ttl {
  font-size: 47px;
  line-height: 1.4;
  margin-bottom: 30px;
  text-transform: uppercase;
}

.hero_text {
  font-size: 18px;
  line-height: 1.5;
  text-shadow: 0 0 10px #0079B5;
}

.hero.is-active::before {
  transform: translate(0, 0);
}

@media only screen and (max-width: 768px) {
  .hero {
    height: 75.72vw;
    background-position: 75% 0;
    align-items: flex-start;
    padding: 0;
  }

  .hero::before {
    display: none;
  }

  .hero_bg {
    position: fixed;
    height: calc(91.14vw + 63px);
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/images/main_tic_tb.jpg");
  }

  .hero_inner {
    display: block;
    padding: 7.81vw 6.51vw 0;
    width: 100%;
  }

  .hero_ttl {
    font-size: 6.12vw;
    margin-bottom: 3.91vw;
  }

  .hero_text {
    font-size: 2.34vw;
  }
}

@media only screen and (max-width: 480px) {
  .hero {
    display: block;
    height: 133.33vw;
    overflow: hidden;
  }

  .hero .g-container {
    overflow: visible;
  }

  .hero::before {
    display: none;
  }

  .hero_bg {
    position: absolute;
    height: 100%;
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/images/main_tic_sp.jpg");
  }

  .hero_inner {
    display: block;
    width: auto;
    padding: 11.47vw 8vw 0;
  }

  .hero_ttl {
    font-size: 9.07vw;
    margin-bottom: 5.07vw;
  }

  .hero_text {
    font-size: 4.27vw;
  }
}

/* /2023.03 change */

.g-breadcrumbs {
  top: 0;
  left: 0;
  z-index: 1;
  margin: 0;
  background: none;
}

.g-breadcrumbs li,
.g-breadcrumbs a {
  color: #fff;
}

.g-breadcrumbs a {
  text-decoration: underline;
}

.g-breadcrumbs a:hover {
  text-decoration: none;
}

.g-ttl-2 {
  margin: 55px 0 35px;
  font-size: 30px;
  line-height: 1.4;
}

.g-ttl-2_sub {
  display: block;
  font-size: 16px;
  color: #0097e0;
}

@media only screen and (max-width: 480px) {
  .g-ttl-2 {
    margin: 50px 0 25px;
    font-size: 25px;
  }

  .g-ttl-2_sub {
    margin-top: 5px;
  }
}

.g-ttl-3 {
  font-size: 18px;
}

.g-ttl-3+.g-hover_text {
  color: #666;
}




/* 2023.03 change */
.bnr-brand {
  margin-bottom: 40px;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/images/bnr_air.jpg") no-repeat 50% 50% / cover;
}

.bnr-brand a {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: flex-start;
  min-height: 270px;
  text-decoration: none;
  padding: 40px 106px;
  box-sizing: border-box;
}

.bnr-brand a:hover .g-btn-em {
  background-color: #596066;
}

.bnr-brand_inner {
  width: 50.80%;
}

.bnr-brand_ttl,
.bnr-brand_text {
  color: #fff;
}

.bnr-brand_ttl {
  font-size: 28px;
  margin-bottom: 10px;
}

.bnr-brand_text {
  font-size: 16px;
}

.bnr-brand .g-btn {
  margin-bottom: 0;
}

@media only screen and (max-width: 768px) {
  .bnr-brand a {
    min-height: 27.08vw;
    padding: 3.91vw 10.68vw;
  }

  .bnr-brand_inner {
    width: 55.75%;
  }

  .bnr-brand_ttl {
    font-size: 2.86vw;
    margin-bottom: 1.82vw;
  }

  .bnr-brand_text {
    font-size: 1.69vw;
    margin-bottom: 1.82vw;
  }
}

@media only screen and (max-width: 480px) {
  .bnr-brand {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/images/bnr_air_sp.jpg");
  }

  .bnr-brand a {
    min-height: 86.67vw;
    align-items: flex-end;
    padding: 5.33vw 0;
  }

  .bnr-brand_inner {
    width: 100%;
    text-align: center;
  }

  .bnr-brand_ttl {
    font-size: 5.87vw;
    margin-bottom: 3.73vw;
  }

  .bnr-brand_text {
    font-size: 4.27vw;
    margin-bottom: 1.87vw;
  }
}

/* /2023.03 change */



.g-carousel {
  margin-bottom: 85px;
}

@media only screen and (max-width: 480px) {
  .g-carousel {
    margin: 0 -30px 60px;
  }

  .g-carousel .g-slider_prev {
    left: 30px;
  }

  .g-carousel .g-slider_next {
    right: 30px;
  }

  .g-carousel .g-hover_text {
    font-size: 14px;
  }
}

@media only screen and (max-width: 480px) {
  .carousel-wrapper {
    margin: 0 -15px;
    overflow: hidden;
  }
}

.visual {
  margin: 0 -15px;
}

.visual-02 {
  margin-bottom: 60px;
}

.visual .g-img {
  margin-bottom: 0;
}

.g-grid.grid-design {
  margin-bottom: 70px;
}

@media only screen and (max-width: 480px) {
  .g-grid.grid-design>.g-grid_el+.g-grid_el {
    margin-top: 40px;
  }
}

.g-grid.grid-corporate {
  margin-bottom: 53px;
}

.g-grid.grid-corporate .g-grid_el {
  float: right;
}

.g-grid.grid-corporate .g-ttl-2 {
  margin: 0;
}

@media only screen and (max-width: 480px) {
  .g-grid.grid-corporate>.g-grid_el+.g-grid_el {
    margin-top: 20px;
  }

  .g-grid.grid-corporate .g-ttl-2 {
    margin-bottom: 10px;
  }

  .g-grid.grid-corporate .g-btn {
    margin-bottom: 35px;
  }
}