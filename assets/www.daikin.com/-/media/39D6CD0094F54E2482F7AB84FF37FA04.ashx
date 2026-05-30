:root {
  --color-ffffff: #ffffff;
  --color-000000: #000000;
  --color-666666: #666666;
  --color-0097e0: #0097e0;
  --color-0099cc: #0099cc;
  --color-heading: var(--color-000000);
  --color-text: var(--color-666666);
  --color-link: var(--color-0097e0);
  --color-link-hover: var(--color-0099cc);
  --color-daikin-blue: var(--color-0097e0);
  --font-bold: "FrutigerLTW02-65Bold", helvetica, arial, meiryo, san-serif;
}

.ContentsInnerWrap {
  padding-inline: 15px;
  box-sizing: border-box;
}

.ContentsInnerWrap#Top_Hero {
  background-color: #E5EDF1;
  position: relative;
}

.ContentsInnerWrap#Top_HeroPTA {
  background: var(--color-daikin-blue) url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_pta.jpg") no-repeat 50% 0/cover;
}

@media (max-width: 768px) {
  .ContentsInnerWrap#Top_HeroPTA {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_pta_tb.jpg");
  }
}

@media (max-width: 480px) {
  .ContentsInnerWrap#Top_HeroPTA {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_pta_sp.jpg");
  }
}

.ContentsInnerWrap#Top_AroundTheWorld {
  background-color: var(--color-daikin-blue);
}

.ContentsInnerWrap#Top_OutroPTA {
  min-height: min(91.1458333333vw, 700px);
  display: grid;
  place-items: center;
  background: var(--color-daikin-blue) url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_outro.jpg") no-repeat 50% 0/cover;
}

@media (max-width: 768px) {
  .ContentsInnerWrap#Top_OutroPTA {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_outro_tb.jpg");
  }
}

@media (max-width: 480px) {
  .ContentsInnerWrap#Top_OutroPTA {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_outro_sp.jpg");
  }
}

.set-responsiveWebDesign .ContentsInnerArea {
  padding-block: 60px;
  width: initial;
  max-width: 960px;
}

.set-responsiveWebDesign .ContentsInnerArea.--no-padding {
  padding-top: 0;
}

#Top_Hero .ContentsInnerArea {
  padding-block: 47px 56px;
}

@media (max-width: 768px) {
  #Top_Hero .ContentsInnerArea {
    padding-block: 47px 51px;
  }
}

@media (max-width: 480px) {
  #Top_Hero .ContentsInnerArea {
    padding-block: 21px 28px;
  }
}

#Top_HeroPTA .ContentsInnerArea {
  padding-top: 52px;
}

@media (max-width: 768px) {
  #Top_HeroPTA .ContentsInnerArea {
    padding-top: 32px;
  }
}

@media (max-width: 480px) {
  #Top_HeroPTA .ContentsInnerArea {
    padding-top: 37px;
  }
}

#Top_AroundTheWorld .ContentsInnerArea {
  padding-block: 55px 0;
}

@media (max-width: 480px) {
  #Top_AroundTheWorld .ContentsInnerArea {
    padding-top: 28px;
  }
}

#Top_OutroPTA .ContentsInnerArea {
  text-align: center;
}

@media (max-width: 480px) {
  #Top_OutroPTA .ContentsInnerArea {
    padding-top: min(71.2%, 267px);
  }
}

.Top_HeroPTA__Body .g-btn:last-child,
.Top_PTACard .g-btn:last-child,
.Top_DiscoverCard .g-btn:last-child {
  margin-bottom: 0;
}

.Top_Heading-C .g-btn,
#Top_OutroPTA .g-btn {
  margin-bottom: 0;
  flex: 0 0 auto;
}

@media (max-width: 480px) {
  .Top_DiscoverCard .g-btn {
    display: none;
  }
}

@media (max-width: 480px) {
  .Top_DiscoverCard p {
    display: none;
  }
}

.Top_PTACard__Img img,
.Top_DiscoverCard__Img img,
.Top_CaseStudy__Case img {
  width: 100%;
  max-width: 100%;
}

.Top_PS__Heading-A .Mkr,
.Top_PS__Heading-B .Mkr {
  vertical-align: middle;
  margin-top: -0.2em;
}

.Top_PS a:hover,
.Top_PS a:active,
.Top_PS a:focus {
  color: initial;
}

@media (hover: hover) {
  .Top_PS a:hover {
    color: var(--color-link-hover);
  }
}

.Top_HeroLoop {
  width: 47.8%;
  height: min(47vw, 460px);
  position: absolute;
  top: 0;
  right: 0;
  overflow: hidden;
  display: flex;
  align-items: flex-start;
  justify-content: flex-start;
  clip-path: polygon(min(12vw, 117px) 0, 100% 0, 100% 100%, 0 100%);
}

@media (max-width: 768px) {
  .Top_HeroLoop {
    width: initial;
    height: 320px;
    margin-inline: -15px;
    aspect-ratio: initial;
    position: static;
    clip-path: initial;
  }
}

@media (max-width: 480px) {
  .Top_HeroLoop {
    height: 166px;
  }
}

@keyframes loop_animation_right_double {
  0% {
    transform: translateX(0);
  }

  100% {
    transform: translateX(-100%);
  }
}

.Top_HeroLoop__Unit {
  animation: loop_animation_right_double 70s linear infinite;
  display: block;
  margin-left: -1px;
  width: auto;
  height: 100%;
}

@media (max-width: 768px) {
  .Top_HeroLoop__Unit {
    margin-block: -112px -64px;
    width: auto;
    height: 496px;
  }
}

@media (max-width: 480px) {
  .Top_HeroLoop__Unit {
    margin-block: -54px -22px;
    height: 242px;
  }
}

.Top_HeroHeading {
  width: 55%;
}

@media (max-width: 768px) {
  .Top_HeroHeading {
    width: 100%;
    text-align: center;
  }
}

.Top_HeroHeading h1 {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: min(5.6vw, 3.5rem);
  line-height: 1.3;
  color: #0097E0;
  margin: 0;
  text-transform: initial;
}

@media (max-width: 768px) {
  .Top_HeroHeading h1 {
    font-size: min(9vw, 3.5rem);
  }
}

@media (max-width: 480px) {
  .Top_HeroHeading h1 {
    font-size: min(9vw, 2.25rem);
  }
}

.Top_HeroPTA__Body {
  width: 50%;
}

@media (max-width: 768px) {
  .Top_HeroPTA__Body {
    width: 60%;
  }
}

@media (max-width: 480px) {
  .Top_HeroPTA__Body {
    width: 100%;
  }
}

.Top_HeroPTA__Heading {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.88rem;
  line-height: 1.4;
  color: #FFFFFF;
  text-shadow: 0 0 6px #0097E0;
  margin-bottom: 10px;
}

@media (max-width: 480px) {
  .Top_HeroPTA__Heading {
    font-size: 1.5rem;
    line-height: 1.5;
  }
}

@media (max-width: 480px) {
  .Top_HeroPTA__Heading {
    text-align: center;
  }
}

.Top_HeroPTA__Paragraph {
  font-size: 1rem;
  line-height: 1.57;
  color: #FFFFFF;
  text-shadow: 0 0 6px #0097E0;
  margin-bottom: 14px;
}

@media (max-width: 480px) {
  .Top_HeroPTA__Paragraph {
    font-size: 0.88rem;
    line-height: 1.57;
    text-align: center;
    margin-bottom: 22px;
  }
}

.Top_PTACards {
  display: grid;
  gap: 30px;
  grid-template-columns: repeat(3, 1fr);
  margin-top: 40px;
}

@media (max-width: 768px) {
  .Top_PTACards {
    gap: 20px;
  }
}

@media (max-width: 480px) {
  .Top_PTACards {
    gap: 40px;
    grid-template-columns: 1fr;
    margin-top: 32px;
  }
}

.Top_PTACard {
  background: var(--color-ffffff);
}

.TOP_PTACard__Body {
  padding: 12px 16px 16px;
}

.TOP_PTACard__Heading {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.13rem;
  line-height: 1.56;
  color: #000000;
  margin-bottom: 5px;
}

@media (max-width: 480px) {
  .TOP_PTACard__Heading {
    font-size: 1rem;
    line-height: 1.57;
  }
}

.Top_DiscoverCards {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  gap: 30px;
  margin-top: 40px;
}

@media (max-width: 768px) {
  .Top_DiscoverCards {
    margin-top: 30px;
  }
}

@media (max-width: 480px) {
  .Top_DiscoverCards {
    gap: 15px;
    margin-top: 20px;
  }
}

.Top_DiscoverCard {
  width: calc((100% - 30px) / 2);
}

@media (max-width: 480px) {
  .Top_DiscoverCard {
    width: calc((100% - 15px) / 2);
    position: relative;
    cursor: pointer;
  }

  .Top_DiscoverCard:hover {
    opacity: 0.8;
  }

  .Top_DiscoverCard a::before {
    content: "";
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 1;
  }
}

.Top_DiscoverCard__Img a:hover img {
  opacity: 0.8;
}

@media (max-width: 480px) {
  .Top_DiscoverCard__Img a:hover img {
    opacity: 1;
  }
}

@media (max-width: 480px) {
  .Top_DiscoverCard__Body {
    position: relative;
  }

  .Top_DiscoverCard__Body a::before {
    content: "";
    display: block;
    width: 100%;
    height: 100%;
  }
}

.Top_DiscoverCard__Body {
  padding-top: 15px;
}

@media (max-width: 480px) {
  .Top_DiscoverCard__Body {
    padding-top: 10px;
  }
}

.TOP_DiscoverCard__Heading {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.13rem;
  line-height: 1.56;
  margin-bottom: 0px;
}

@media (max-width: 480px) {
  .TOP_DiscoverCard__Heading {
    font-size: 0.88rem;
    line-height: 1.57;
    font-weight: normal;
    color: var(--color-link);
    padding-left: 1em;
    text-indent: -1em;
  }

  .TOP_DiscoverCard__Heading::before {
    content: "";
    display: inline-block;
    width: 10px;
    height: 10px;
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dil_common/images/mkr_sprite.png");
    background-repeat: no-repeat;
    vertical-align: baseline;
    margin-right: 4px;
    background-position: -20px -20px;
  }
}

.Top_Heading-A {
  text-align: center;
  margin-block: -4px 34px;
}

@media (max-width: 480px) {
  .Top_Heading-A {
    margin-bottom: 25px;
  }
}

.Top_Heading-A h2 {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.88rem;
  line-height: 1.4;
  color: #000000;
  margin-bottom: 2px;
}

@media (max-width: 480px) {
  .Top_Heading-A h2 {
    font-size: 1.5rem;
    line-height: 1.5;
  }
}

.Top_Heading-A__Sub {
  font-size: 1rem;
  line-height: 1.56;
  color: #0097E0;
  text-transform: uppercase;
  margin-bottom: 0;
}

.Top_Heading-B {
  margin-bottom: 20px;
}

.Top_Heading-B h2 {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.88rem;
  line-height: 1.4;
  color: #000000;
  margin-bottom: 0;
}

@media (max-width: 480px) {
  .Top_Heading-B h2 {
    font-size: 1.5rem;
    line-height: 1.5;
  }
}

.Top_Heading-C {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 9px 40px;
  margin-bottom: 22px;
}

@media (max-width: 480px) {
  .Top_Heading-C {
    text-align: center;
    flex-direction: column;
    margin-bottom: 20px;
  }

  .Top_Heading-C span {
    display: inline-block;
  }
}

.Top_Heading-C h2 {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.88rem;
  line-height: 1.4;
  color: var(--color-ffffff);
  margin-bottom: 0;
}

@media (max-width: 480px) {
  .Top_Heading-C h2 {
    font-size: 1.5rem;
    line-height: 1.5;
  }
}

.Top_CaseStudy {
  display: flex;
  margin-inline: -15px;
  overflow: hidden;
}

.Top_CaseStudy__Loop {
  animation: loop_animation_right_double 140s linear infinite;
  display: flex;
}

.Top_CaseStudy__Case {
  width: 217px;
  position: relative;
}

@media (max-width: 480px) {
  .Top_CaseStudy__Case {
    width: 115px;
  }
}

.Top_CaseStudy__Country {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.25rem;
  line-height: 1.1;
  position: absolute;
  display: inline;
  left: 0;
  bottom: 16px;
  padding-inline: 11px;
  color: #fff;
  background: rgba(0, 151, 224, 0.8);
  text-transform: uppercase;
  -webkit-box-decoration-break: clone;
  box-decoration-break: clone;
}

.Top_CaseStudy__Country.--top {
  bottom: 38px;
}

@media (max-width: 480px) {
  .Top_CaseStudy__Country.--top {
    bottom: 29px;
  }
}

@media (max-width: 480px) {
  .Top_CaseStudy__Country {
    font-size: 0.88rem;
    line-height: 1.36;
    bottom: 10px;
  }
}

.bnr-brand {
  background: var(--color-daikin-blue) url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_corporate.jpg") no-repeat 50% 50%/cover;
}

.bnr-brand a {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: flex-start;
  min-height: 252px;
  text-decoration: none;
  padding: 36px 11.0416666667% 34px;
  box-sizing: border-box;
}

.bnr-brand a:hover .g-btn-em {
  background-color: #596066;
}

.bnr-brand_inner {
  width: 51%;
}

.bnr-brand_ttl,
.bnr-brand_text {
  color: #fff;
  text-shadow: 0px 0px 6px #0097E0;
}

.bnr-brand_ttl {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 28px;
  margin-bottom: 3px;
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
    font-size: clamp(0.875rem, 2.86vw, 1.375rem);
    margin-bottom: 0.63em;
  }

  .bnr-brand_text {
    font-size: clamp(0.75rem, 1.69vw, 1rem);
    margin-bottom: 1.07em;
  }
}

@media only screen and (max-width: 480px) {
  .bnr-brand {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/bg_corporate_sp.jpg");
  }

  .bnr-brand a {
    min-height: 86.6666666667vw;
    align-items: flex-start;
    padding: 5.33vw 15px;
  }

  .bnr-brand_inner {
    width: 100%;
    text-align: center;
  }

  .bnr-brand_ttl {
    font-size: min(5.8666666667vw, 1.375rem);
    margin-bottom: 0.25em;
    text-shadow: initial;
  }

  .bnr-brand_text {
    font-size: min(4.2666666667vw, 1rem);
    margin-bottom: 0.75em;
    text-shadow: initial;
  }
}

.Top_PS {
  display: grid;
  grid-template: "area1 area2" "area1 area3";
  grid-template-columns: 1.57fr 1fr;
  grid-template-rows: 1fr 1fr;
  gap: 10px;
}

@media (max-width: 768px) {
  .Top_PS {
    grid-template: "area1" "area2" "area3";
    grid-template-rows: repeat(3, auto);
    gap: 24px;
  }
}

@media (max-width: 480px) {
  .Top_PS {
    gap: 20px;
  }
}

.Top_PS__Area {
  background: #F5F7FB;
  position: relative;
  padding: 13px 20px 13px;
}

@media (max-width: 768px) {
  .Top_PS__Area {
    padding: 17px 24px 21px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Area {
    padding: 11px 16px 14px;
  }
}

.Top_PS__Area.--Area-1 {
  -ms-grid-row: 1;
  -ms-grid-row-span: 3;
  -ms-grid-column: 1;
  grid-area: area1;
  min-height: 157px;
  padding: 40px 165px 40px 32px;
}

@media (max-width: 768px) {
  .Top_PS__Area.--Area-1 {
    padding: 111px 24px 22px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Area.--Area-1 {
    padding: 99px 16px 14px;
  }
}

.Top_PS__Area.--Area-2 {
  -ms-grid-row: 1;
  -ms-grid-column: 3;
  grid-area: area2;
  min-height: 82px;
}

@media (max-width: 768px) {
  .Top_PS__Area.--Area-2 {
    min-height: 62px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Area.--Area-2 {
    min-height: 68px;
  }
}

.Top_PS__Area.--Area-3 {
  -ms-grid-row: 3;
  -ms-grid-column: 3;
  grid-area: area3;
  min-height: 91px;
}

@media (max-width: 768px) {
  .Top_PS__Area.--Area-1 {
    -ms-grid-row: 1;
    -ms-grid-row-span: 1;
    -ms-grid-column: 1;
  }

  .Top_PS__Area.--Area-2 {
    -ms-grid-row: 3;
    -ms-grid-column: 1;
  }

  .Top_PS__Area.--Area-3 {
    -ms-grid-row: 5;
    -ms-grid-column: 1;
  }
}

@media (max-width: 768px) {
  .Top_PS__Area.--Area-3 {
    min-height: 65px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Area.--Area-3 {
    min-height: 74px;
  }
}

.Top_PS__Icon {
  position: absolute;
}

.Top_PS__Icon.--Icon-Air {
  top: 41px;
  right: 32px;
}

@media (max-width: 768px) {
  .Top_PS__Icon.--Icon-Air {
    width: 99px;
    top: 45px;
    left: 50%;
    translate: -84px 0;
  }
}

@media (max-width: 480px) {
  .Top_PS__Icon.--Icon-Air {
    top: 35px;
    translate: -80px 0;
  }
}

.Top_PS__Icon.--Icon-VRV {
  top: 104px;
  right: 62px;
}

@media (max-width: 768px) {
  .Top_PS__Icon.--Icon-VRV {
    width: 47px;
    top: 24px;
    left: 50%;
    translate: 35px 0;
  }
}

@media (max-width: 480px) {
  .Top_PS__Icon.--Icon-VRV {
    top: 14px;
  }
}

.Top_PS__Icon.--Icon-Fluorichemicals {
  top: 15px;
  right: 20px;
  z-index: 0;
}

@media (max-width: 768px) {
  .Top_PS__Icon.--Icon-Fluorichemicals {
    width: 100px;
    top: 8px;
    right: 24px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Icon.--Icon-Fluorichemicals {
    width: 83px;
    top: 13px;
    right: 16px;
  }
}

.Top_PS__Icon.--Icon-Oil {
  top: 13px;
  right: 20px;
  z-index: 0;
}

@media (max-width: 768px) {
  .Top_PS__Icon.--Icon-Oil {
    width: 78px;
    top: 8px;
    right: 30px;
  }
}

@media (max-width: 480px) {
  .Top_PS__Icon.--Icon-Oil {
    width: 68px;
    top: 12px;
    right: 20px;
  }
}

.Top_PS__InlineIcon {
  margin-inline: 0.25em;
  vertical-align: middle;
}

.Top_PS__Heading-A {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.38rem;
  line-height: 1.57;
  color: #000000;
  margin-bottom: 7px;
}

@media (max-width: 480px) {
  .Top_PS__Heading-A {
    font-size: 1rem;
    line-height: 1.57;
    margin-bottom: 5px;
  }
}

.Top_PS__Heading-B {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 1.13rem;
  line-height: 1.56;
  color: #000000;
  border-left: none;
  padding-left: 0;
  margin-bottom: 8px;
}

@media (max-width: 480px) {
  .Top_PS__Heading-B {
    font-size: 1rem;
    line-height: 1.57;
    margin-top: -7px;
    margin-bottom: 5px;
  }
}

.Top_PS__Paragraph:last-child {
  margin-bottom: 0;
}

.Top_OutroPTA__Heading {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: 3.5rem;
  line-height: 1.3;
  color: #FFFFFF;
  text-shadow: 0 0 6px rgba(0, 151, 224, 0.5019607843);
  margin-bottom: 30px;
}

@media (max-width: 768px) {
  .Top_OutroPTA__Heading {
    font-size: min(7.2916666667vw, 3.5rem);
    margin-top: 10px;
    margin-bottom: 22px;
  }
}

@media (max-width: 480px) {
  .Top_OutroPTA__Heading {
    font-size: min(9.6vw, 2.25rem);
    margin-bottom: 15px;
  }
}

.Top_OutroPTA__HeadingMain {
  display: block;
  margin-bottom: 9px;
}

@media (max-width: 768px) {
  .Top_OutroPTA__HeadingMain {
    margin-bottom: 18px;
  }
}

@media (max-width: 480px) {
  .Top_OutroPTA__HeadingMain {
    margin-bottom: 1px;
  }
}

.Top_OutroPTA__HeadingSub {
  font-size: 2.5rem;
  line-height: 1.3;
  display: block;
}

@media (max-width: 768px) {
  .Top_OutroPTA__HeadingSub {
    font-size: min(5.2083333333vw, 2.5rem);
  }
}

@media (max-width: 480px) {
  .Top_OutroPTA__HeadingSub {
    font-size: min(7.4666666667vw, 1.75rem);
  }
}

.Top_OutroPTA__Paragraph {
  font-family: var(--font-bold);
  font-weight: normal;
  font-size: min(2.8645833333vw, 1.375rem);
  line-height: 1.57;
  color: #FFFFFF;
  text-shadow: 0 0 6px rgba(0, 151, 224, 0.8);
  margin-bottom: 36px;
}

@media (max-width: 480px) {
  .Top_OutroPTA__Paragraph {
    font-size: min(4.2666666667vw, 1rem);
    margin-bottom: 21px;
  }
}