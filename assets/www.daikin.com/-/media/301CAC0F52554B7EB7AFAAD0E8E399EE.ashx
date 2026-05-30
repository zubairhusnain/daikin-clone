@charset "utf-8";


/* ---------- ---------- ----------
	::index::

 A. Top_KeyVisual
 B. Contents
 C. Top_CaseStudy
 D. Top_ProductsServices
 E. Top_AboutDaikin
 F. Top_News
 G. Top_Info
 H. ImportantNotice
 I. FooterWrap
 J. Modal
 K. Common

---------- ---------- ---------- */

html {
	-webkit-font-smoothing: antialiased;
	text-shadow: 0 0 1px rgba(0, 0, 0, 0.1);
}

/* A. Top_KeyVisual
---------- ---------- ---------- */
#Top_KeyVisualWrap {
	position: relative;
}
#Top_KeyVisual__Position {
	position: fixed;
	margin: 0 auto;
	width: 100%;
	min-height: 100%;
	height: 100%;
	z-index: 1;
	background-color: #fff;
	overflow: hidden;
}
.Top_KeyVisualWrap__Inner {
	position: relative;
	margin: 0 auto;
	height: 100%;
	box-sizing: border-box;
	overflow: hidden;
}
.KeyVText {
	position: absolute;
	top: 0;
	z-index: 11;
	width: 100%;
	height: 100%;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/mainvisual/bg_keyv_pc.png") no-repeat 100% 0;
}
.KeyVText__Inner {
	opacity: 0;
	position: relative;
	width: 960px;
	height: 100%;
	margin: 0 auto;
}

.KeyVImageList {
	width: 100%;
	height: 100%;
}
.KeyVImageList li {
	position: relative;
	width: 100%;
	height: 100%;
	overflow: hidden;
}
.KeyVImageList li img {
	display: inline-block;
	margin: 0 auto;
	min-width: 100%;
	min-height: 100%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
}

.scrollDown {
	opacity: 0;
	position: absolute;
	bottom: 0;
	left: 50%;
	margin-left: -40px;
	display: block;
	width: 80px;
	height: 50px;
	color: #fff;
	text-align: center;
	z-index: 12;
	text-decoration: none;
	box-sizing: border-box;
	background: rgba(0,0,0,.8);
}
.scrollDown:hover ,
.scrollDown:focus {
	text-decoration: none;
}
.scrollDown span {
	display: block;
	position: relative;
	height: 100%;
	padding: 10px 0 0 0;
	color: #fff;
	font-size: 84%;
	box-sizing: border-box;
}
.scrollDown span:hover {
	opacity: .8;
}
.scrollDown span:before {
	content: '';
	position: absolute;
	bottom: 10px;
	left: 50%;
	width: 12px;
	height: 12px;
	margin-left: -7px;
	border: none;
	border-top: solid 2px #54c3f1;
	border-right: solid 2px #54c3f1;
	-ms-transform: rotate(135deg);
	-webkit-transform: rotate(135deg);
			transform: rotate(135deg);
}

@media screen and (min-width: 961px) {
	.KeyVText__Inner .Hl__Pc {
		position: absolute;
		top: 40%;
		right: 0;
		-ms-transform: translate(0,-50%);
		-webkit-transform: translate(0,-50%);
				transform: translate(0,-50%);
	}
	.KeyVText .Img--Pc {
		display: block;
	}
	.KeyVText .Img--Sp {
		display: none;
	}
}
@media screen and (min-width: 961px) and (max-width: 970px) {
	.KeyVText__Inner {
		position: static;
	}
	.KeyVText__Inner .Hl__Pc {
		right: 20px;
	}
}
@media screen and (max-width: 960px) {
	#Top_KeyVisual__Position{
		top: 0;
	}
	#KeyVImage {
		width: auto;
	}
	.KeyVImageList li .KeyVImageList__Img {
		display: none;
	}
	.KeyVImageList li.Item--01 {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/mainvisual/Daikin_GS_mainvisual_SP_Pari.jpg") no-repeat 50% 50%;
		-webkit-background-size: cover;
				background-size: cover;
	}
	.KeyVImageList li.Item--02 {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/mainvisual/pic_keyv_7_sp.jpg") no-repeat 50% 50%;
		-webkit-background-size: cover;
				background-size: cover;
	}
	.KeyVImageList li.Item--03 {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/mainvisual/Daikin_GS_mainvisual_SP_Cecchina.jpg") no-repeat 50% 50%;
		-webkit-background-size: cover;
				background-size: cover;
	}
	.KeyVText .HlTitle img {
		height: auto;
	}
	.KeyVText .Img--Pc {
		display: none;
	}
	.KeyVText .Img--Sp {
		display: block;
	}
	.KeyVText__Inner {
		margin: 0 auto;
		padding-top: 0;
		width: auto;
	}
	.KeyVImageList li img {
		width: 100%;
		height: auto;
	}
}
@media screen and (max-width: 960px) and (orientation: portrait) {
	.KeyVText {
		background: none;
	}
	.KeyVText__Inner {
		position: absolute;
		top: 20%;
		left: 50%;
		padding: 0;
		-ms-transform: translate(-50%,0);
		-webkit-transform: translate(-50%,0);
				transform: translate(-50%,0);
	}
}
@media screen and (max-width: 960px) and (orientation: landscape) {
	.KeyVText__Inner .Hl__Pc {
		position: absolute;
		top: 55%;
		right: 0;
		padding-right: 40px;
		-ms-transform: translate(0,-50%);
		-webkit-transform: translate(0,-50%);
				transform: translate(0,-50%);
	}
	.KeyVText .Img--Pc {
		display: block;
	}
	.KeyVText .Img--Sp {
		display: none;
	}
	.KeyVImageList li .KeyVImageList__Img {
		display: block;
	}
}
@media screen and (max-width: 768px) {
	.KeyVText {
		width: 100%;
	}
	.KeyVText .HlTitle {
		margin-bottom: 20px;
	}
}
@media screen and (max-width: 768px) and (orientation: portrait) {
	.KeyVText__Inner .HlTitle img {
		width: 520px;
		height: auto;
	}
	.HlSubTitle img {
		width: 475px;
		height: auto;
		margin: 0 auto;
	}
}
@media screen and (max-width: 767px) {
	.KeyVText__Inner .HlTitle img {
		width: 298px;
		height: auto;
	}
	.HlSubTitle img {
		width: 289px;
		height: auto;
		margin: 0 auto;
	}
}
@media screen and (max-width: 767px) and (orientation: landscape) {
	.KeyVText {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/mainvisual/bg_keyv_pc.png") no-repeat 100% 0;
		-webkit-background-size: 100% 100%;
				background-size: 100% 100%;
	}
	.KeyVText__Inner .HlTitle img {
		width: 216px;
		height: auto;
	}
	.HlSubTitle img {
		width: 198px;
		height: auto;
	}
}
@media screen and (max-width: 480px) {
	.KeyVText {
		padding: 0;
	}
	.KeyVText .HlTitle {
		margin-bottom: 14px;
	}
	.scrollDown {
		margin-left: -46px;
		width: 92px;
		height: 45px;
	}
	.scrollDown span:before {
		width: 13px;
		height: 13px;
		margin-left: -7px;
	}
}


/* B. Contents
---------- ---------- ---------- */
#ContentsWrap {
	font-size: 100%;/* reset(12px) */
}
#Layer__Above {
	position: relative;
	z-index: 100;
}
.ContentsInnerArea {
	padding-bottom: 0;
}

.ContentsInner__Head {
	opacity: 0;
	text-align: center;
}
#Top_AboutDaikin .ContentsInner__Head {
	opacity: 1;
}
.ContentsInner__Head h2 {
	margin-bottom: 2px;
	font-size: 250%; /* 30px */
	color: #000;
}
.ContentsInner__Head .H2SubText {
	margin-bottom: 24px;
	font-size: 134%;
	color: #0097e0;
	text-transform: uppercase;
}

@media screen and (max-width: 960px) {
	#ContentsWrap {
		min-width: 320px;
	}
	.ContentsInnerArea {
		width: auto;
		padding: 0 22px 20px;
		box-sizing: border-box;
	}
	.ContentsInner__Head {
		width: auto;
		vertical-align: top;
	}
}
@media screen and (max-width: 768px) {
	.ContentsInnerArea {
		padding: 0 14px 20px;
	}
	.ContentsInner__Head h2 {
		font-size: 209%; /* 25px */
	}
}


/* C. Top_CaseStudy
---------- ---------- ---------- */
#Top_CaseStudy {
	padding: 51px 0 64px;
	background: #fff;
}
#Top_CaseStudy .ContentsInner__Head h2 {
	font-size: 300%; /* 36px */
	font-weight: bold;
}
.js-Slider--Casestudy ul.Slider--Style01 li {
	background: #fff;
}
.js-Slider--Casestudy ul.Slider--Style01 li img {
	width: 100%;
}
.js-Slider--Casestudy ul.Slider--Style01 li .Icon {
	display: inline-block;
	width: auto;
}
.js-Slider--Casestudy ul.Slider--Style01 li a {
	position: relative;
	height: 100%;
}
.CaseStudy_Title {
	position: absolute;
	bottom: 15px;
	margin: 0;
	line-height: 1;
}
.CaseStudy_Title__Main {
	display: inline;
	padding: 0;
	color: #fff;
	font-size: 167%;
	line-height: 1.2;
}
.CaseStudy_Title__Main span {
	padding: 2px 11px;
	color: #fff;
	font-weight: bold;
	background: rgba(0,151,224,.8);
}
.CaseStudy_Title__Sub {
	margin: 5px 0 0 0;
}
.CaseStudy_Title__Sub p {
	margin: 0;
	color: #fff;
	font-size: 117%;
	font-weight: bold;
	line-height: 1.2;
}
.CaseStudy_Title__Sub span {
	display: inline-block;
	margin: 0;
	padding: 3px 11px 2px;
	background: rgba(0,0,0,.8);
}
.CaseStudy_Title.is--Large {
	bottom: 30px;
}
.CaseStudy_Title.is--Large .CaseStudy_Title__Main {
	font-size: 250%;
}
.CaseStudy_Title.is--Large .CaseStudy_Title__Sub p {
	font-size: 150%;
}
.CaseStudy_More {
	opacity: 0;
	position: absolute;
	bottom: 0px;
	right: 0;
	width: 50%;
	margin: 0;
	text-align: center;
}
.CaseStudy_More__Head {
	margin: 0 0 2px 0;
	font-size: 233%;
	font-weight: bold;
	color: #000;
	line-height: 1.2;
	text-transform: uppercase;
}
.CaseStudy_More__Body {
	margin: 0;
}
.CaseStudy_More__Lead {
	font-size: 117%;
}
.CaseStudy_More__Button {
	margin: 0;
}

@media screen and (min-width: 961px) {
	#Top_CaseStudy .Top_CaseStudy__Body {
		position: relative;
	}
	.js-Slider--Casestudy ul.Slider--Style01 {
		display: -webkit-flex;
		display: flex;
		-webkit-flex-wrap: wrap;
				flex-wrap: wrap;
		-webkit-flex-direction: column;
				flex-direction: column;
		height: 618px;
		box-sizing: border-box;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li {
		position: relative;
		width: 237px;
		height: 150px;
		margin: 0 0 4px 4px;
		box-sizing: border-box;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Width--Harf {
		width: 478px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Height--Harf {
		height: 304px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Heightx2--01 {
		position: absolute;
		top: 50%;
		left: 25%;
		height: 304px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li img:not(.Icon) {
		height: 100%;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Heightx2--01 img:not(.Icon) {
		position: absolute;
		width: auto;
		height: auto;
		clip: rect(15px, 534px, 449px, 195px);
		margin-left: -195px;
		margin-top: -15px;
		-moz-transform: scale(0.7, 0.7) translate(-81px, -100px);
			transform: scale(0.7, 0.7) translate(-81px, -100px);
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Heightx2--02 {
		position: relative;
		width: 237px;
		height: 304px;
		margin-top: 154px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Heightx2--02 img:not(.Icon) {
		position: absolute;
		width: auto;
		height: auto;
		clip: rect(4px, 559px, 472px, 192px);
		margin-left: -192px;
		margin-top: -5px;
		-moz-transform: scale(0.65, 0.65) translate(-103px, -128px);
			transform: scale(0.65, 0.65) translate(-103px, -128px);
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Corner--right {
		position: absolute;
		top: 0;
		right: 0;
	}
}
@media screen and (max-width: 960px) {
	#Top_CaseStudy {
		padding: 51px 0 70px;
	}
	.CaseStudy_More {
		position: static;
		width: 100%;
		min-height: 90px;
		margin: 40px 0 0 0;
	}
	.CaseStudy_More__Head {
		font-size: 184%; /* 22px */
		margin-bottom: 7px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 > li {
		width: calc((100% - 3 * 4px) / 3);
		height: 25%;
		margin: 0 0 4px 4px;
		box-sizing: border-box;
		overflow: hidden;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Width--Harf {
		width: calc( 100% * 2/3 - 4px);
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Height--Harf {
		height: 50%;
	}
	.js-Slider--Casestudy ul.Slider--Style01 > li:nth-child(3) {
		position: absolute;
		top: calc(25% - 1px);
		right: 0;
		height: auto;
		width: calc((100% - 3 * 4px) / 3);
	}
	.js-Slider--Casestudy ul.Slider--Style01 > li img:not(.Icon) {
		width: 100%;
		height: auto;
	}
	/* IE11/10 */
	_:-ms-lang(x), .js-Slider--Casestudy ul.Slider--Style01 > li {
		width: calc((100% - 3 * 5px) / 3);
	}
	_:-ms-lang(x), .js-Slider--Casestudy ul.Slider--Style01 > li:nth-child(3n) {
		width: calc((100% - 3 * 4px) / 3);
	}
	_:-ms-lang(x), .js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Width--Harf {
		width: calc( 100% * 2/3 - 5px);
	}
	_:-ms-lang(x), .js-Slider--Casestudy ul.Slider--Style01 > li:nth-child(3) {
		top: calc(25% - 1px);
		right: 2px;
		width: calc((100% - 3 * 5px) /3);
		height: calc(25% - 1px);
	}
}

@media screen and (min-width: 768px) {
	.Top_CaseStudy__Body {
		min-height: 800px;
	}
	.js-Slider--Casestudy ul.Slider--Style01 {
		margin: 0 0 -4px -4px;
		overflow: hidden;
		display: -webkit-flex;
		display: flex;
		-webkit-flex-wrap: wrap;
				flex-wrap: wrap;
	}
	.js-Slider--Casestudy .HoverImg {
		opacity: 0;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.CaseStudy_Width--Harf img:not(.Icon) {
		width: 100%;
	}
}
@media screen and (max-width: 767px) {
	#Top_CaseStudy .ContentsInnerArea {
		padding: 0;
	}
	.js-Slider--Casestudy {
		opacity: 0;
	}
	.js-Slider--Casestudy ul.Slider--Style01 {
		box-sizing: border-box;
		margin: 0 -15px 0 0;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.slick-slide {
		margin: 0 15px 0 0;
	}
	#Top_CaseStudy .ContentsInner__Head h2 {
		font-size: 225%; /* 27px */
	}
	#Top_CaseStudy .Top_CaseStudy__Body {
		position: static;
	}
	.js-Slider--Casestudy ul.Slider--Style01 {
		height: auto;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.slick-slide {
		width: 100%;
		height: auto;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.slick-slide {
		width: 100%;
		height: 100%;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.slick-slide.CaseStudy_Width--Harf {
		width: 100%;
	}
	.js-Slider--Casestudy ul.Slider--Style01 li.slick-slide.CaseStudy_Height--Harf {
		height: 100%;
	}
	.CaseStudy_Title .CaseStudy_Title__Main ,
	.CaseStudy_Title.is--Large .CaseStudy_Title__Main {
		font-size: 184%;
	}
	.CaseStudy_Title .CaseStudy_Title__Sub p ,
	.CaseStudy_Title.is--Large .CaseStudy_Title__Sub p {
		font-size:117%;
	}
}
@media screen and (min-width: 480px) {
	.Top_CaseStudy__Body {
		min-height: 400px;
	}
}


/* D. Top_ProductsServices
---------- ---------- ---------- */
#Top_ProductsServices {
	padding: 50px 0 70px;
	background: #fff;
}
#Top_ProductsServices .ContentsInner__Head h2 {
	margin: 0 0 33px 0;
}
.Top_PS {
	min-height: 330px;
}
.Top_PS:after {
	content: "";
	display: block;
	clear: both;
}
.Top_PS li {
	position: relative;
}
.Top_PS li p span {
	display: block;
	padding: 5px 10px 4px;
	font-weight: bold;
	color: #FFF;
	text-transform: uppercase;
}
.Top_PS li img {
	width: auto;
	height: 195px;
}
.Top_PS .HoverImg img {
	width: auto;
	height: 100%;
}
.Top_PS .HoverImg:hover {
	width: 100%;
	opacity: 0.8!important;
}
.PS__Body {
	position: absolute;
	margin-bottom: 0;
}
.PS__Head {
	margin-bottom: 0;
	font-size: 184%;
	text-transform: uppercase;
	color: #000;
}
.PS__Head--01 {
	margin-bottom: 0;
	font-size: 167%;
	text-transform: uppercase;
	color: #fff;
}
.PS__Lead {
	margin-bottom: 0;
	font-size: 117%;
	color: #000;
}
.PS__Lead--01 {
	font-size: 117%;
	color: #fff;
}
.PS-1 {
	opacity: 0;
	float: left;
	margin-right: 5px;
	box-sizing: border-box;
}
.PS-1 li.PS-1_AC {
	height: 242px;
	margin: 0 0 2px 0;
	overflow: hidden;
}
.PS-1 li.PS-1_AC img {
	position: absolute;
	top: 50%;
	left: 50%;
	width: auto;
	-ms-transform: translate(-50%,-50%);
	-webkit-transform: translate(-50%,-50%);
			transform: translate(-50%,-50%);
}
.PS-1 li.PS-1_AC .PS__Body {
	top: 36px;
	left: 30px;
}
.PS-1 li.PS-1_AC .PS__Image {
	top: 55%;
	width: auto;
	height: auto;
}
.PS-1 li.PS-1_SE .PS__Body {
	top: 50%;
	left: 192px;
	-ms-transform: translate(0,-50%);
	-webkit-transform: translate(0,-50%);
			transform: translate(0,-50%);
}
.PS-2 {
	opacity: 0;
	float: right;
	margin-left: 5px;
	box-sizing: border-box;
}
.PS-2 li {
	overflow: hidden;
}
.PS-2 li.PS-2_CHM {
	margin: 0 0 10px 0;
}

@media screen and (min-width: 961px) {
	.PS__Lead--01 {
		width: 210px;
		font-size: 117%;
		color: #fff;
	}
	.PS-1 {
		width: 580px;
	}
	.PS-1 li.PS-1_AC .PS__Body {
		top: 34px;
		left: 30px;
	}
	.PS-1 li.PS-1_SE .PS__Head {
		font-size: 134%;
	}
	.PS-2 {
		width: 370px;
	}
	.PS-2 li.PS-2_CHM .PS__Body {
		top: 35px;
		left: 20px;
	}
	.PS-2 li.PS-2_PMC .PS__Body {
		top: 35px;
		left: 20px;
	}
	.PS-2_PMC .PS__Lead--01 {
		width: 202px;
	}
	.PS-2 img.Img--Tb {
		display: none;
	}
	.PS-2 img.Img--SpPc {
		display: block;
	}
}
@media screen and (max-width: 960px) {
	#Top_ProductsServices .ContentsInnerArea {
		padding: 0;
	}
	.Top_PS li a:hover ,
	.Top_PS li a:focus {
		text-decoration: none;
	}
	.PS-1 {
		float: none;
		width: 100%;
		margin: 0;
		padding: 0;
	}
	.PS-1_SE .PS__Head {
		font-size: 134%;
	}
	.PS-1_SE .PS__Lead {
		font-size: 117%;
	}
	.PS-2 {
		float: none;
		width: 100%;
		margin: 10px 0 0 0;
		padding: 0;
	}
	.PS-2 .PS__Head--01 {
		font-size: 167%;
	}
	.PS-2 li.PS-2_CHM .Img--Tb ,
	.PS-2 li.PS-2_PMC .Img--Tb {
		position: static;
		width: 282px;
	}
	.PS-2 li.PS-2_CHM .PS__Body ,
	.PS-2 li.PS-2_PMC .PS__Body {
		position: static;
		padding: 30px 0 0 20px;
		max-width: 500px;
		min-width: 200px;
	}
	.PS-2 li a.HoverImg:after {
		content: '';
		display: block;
		min-width: 210px;
	}
	.PS-2 li.PS-2_CHM a.HoverImg ,
	.PS-2 li.PS-2_PMC a.HoverImg {
		display: -webkit-flex;
		display: flex;
		justify-content: space-between;
		height: 160px;
	}
	.PS-2 li.PS-2_CHM a.HoverImg {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/pic_products_chm_sp.jpg") no-repeat 100% 0;
	}
	.PS-2 li.PS-2_PMC a.HoverImg {
		background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/pic_products_pmc_sp.jpg") no-repeat 100% 0;
	}
	.PS-2 img.Img--Tb {
		display: none;
	}
	.PS-2 img.Img--SpPc {
		display: none;
	}
}
@media screen and (min-width: 480px) {
	.Top_PS li {
		overflow: hidden;
	}
	.PS-1 li.PS-1_SE {
		height: 86px;
	}
	.PS-2 li.PS-2_CHM {
		height: 160px;
	}
	.PS-2 li.PS-2_PMC {
		height: 160px;
	}
	.PS-2 img {
		position: absolute;
		right: 0;
	}
}
@media screen and (max-width: 480px) {
	#Top_ProductsServices .ContentsInnerArea {
		padding: 0;
	}
	#Top_ProductsServices .ContentsInner__Head h2 {
		margin: 0 0 26px 0;
	}
	.ContentsInner__Head {
		padding: 0 10px;
	}
	.Top_PS .HoverImg img {
		width: 100%;
		height: auto;
	}
	.Top_PS li {
		float: none;
		width: 100%;
		height: auto;
	}
	.Top_PS li .PS__Head ,
	.Top_PS li .PS__Head--01 {
		font-size: 16px;
	}
	.PS__Lead ,
	.PS__Lead--01 {
		display: none;
	}
	.PS-1 ,
	.PS-2 {
		width: 100%;
	}
	.PS-1 li {
		border-top: 1px solid #d2d7d9;
		border-bottom: 1px solid #d2d7d9;
	}
	.PS-1 li.PS-1_AC {
		height: 182px;
		margin: 0 0 3px 0;
	}
	.PS-1 li.PS-1_AC .PS__Image {
		top: 42%;
		width: 490px;
	}
	.PS-1 li.PS-1_AC .PS__Body {
		top: 20px;
		left: 15px;
		-ms-transform: translate(0%,0%);
		-webkit-transform: translate(0%,0%);
				transform: translate(0%,0%);
	}
	.PS-1 li.PS-1_SE .PS__Head {
		font-size: 14px;
	}
	.PS-1 li.PS-1_SE .PS__Body {
		-ms-transform: translate(0%,-50%);
		-webkit-transform: translate(0%,-50%);
				transform: translate(0%,-50%);
	}
	.PS-1 li.PS-1_SE .HoverImg img {
		width: auto;
		height: 100%;
	}
	.PS-2 {
		padding-left: 0;
	}
	.PS-2 li {
		height: 120px;
		padding: 0;
	}
	.PS-2 li.PS-2_CHM a.HoverImg {
		background: none;
	}
	.PS-2 li.PS-2_PMC a.HoverImg {
		background: none;
	}
	.PS-2 li.PS-2_CHM {
		margin: 20px 0;
	}
	.Top_PS li .PS__Body ,
	.PS-2 li.PS-2_CHM .PS__Body ,
	.PS-2 li.PS-2_PMC .PS__Body {
		position: absolute;
		top: 50%;
		-ms-transform: translate(0%,-50%);
		-webkit-transform: translate(0%,-50%);
				transform: translate(0%,-50%);
	}
	.PS-2 li.PS-2_CHM .PS__Body ,
	.PS-2 li.PS-2_PMC .PS__Body {
		left: 15px;
		margin: -2px 0 0 0;
		padding: 0;
	}
	.PS-2 img.Img--Tb {
		display: none;
	}
	.PS-2 img.Img--SpPc {
		display: block;
		position: absolute;
		right: 0;
		width: auto;
		height: 100%;
	}
}


/* E. Top_AboutDaikin
---------- ---------- ---------- */
#Top_AboutDaikin {
	padding: 50px 0;
	background: rgba(255,255,255,.6);
}
#Top_AboutDaikin .HoverImg img {
	max-width: 100%;
	width: 100%;
	height: auto;
}
#Top_AboutDaikin .ContentsInnerArea {
	min-height: 0;
}
.js-Slider--AboutDaikin {
	opacity: 0;
	min-height: 320px;
	text-align: center;
	visibility: hidden;
}
.js-Slider--AboutDaikin .Slider--Style02 {
	margin-right: -30px;
}
.js-Slider--AboutDaikin .Slider--Style02 li.SliderLi {
	/*opacity: 0;*/
	margin-right: 30px;
	text-align: left;
	background: #fff;
}
.SliderLi__Head {
	margin-bottom: 6px;
	font-size: 108%;
	line-height: 1.53;
	color: #000;
	font-weight: bold;
}
.SliderLi__Body {
	padding: 0 20px 17px;
}
#Top_AboutDaikin .g-column-white {
	border:none !important;
}
#Top_AboutDaikin .g-carousel .slick-slide {
	padding: 0 0;
	margin: 0 10px;
	background-color: #FFF;
}



@media screen and (max-width: 480px) {
	#Top_AboutDaikin .ContentsInnerArea {
		padding: 0 0 20px;
	}
	.js-Slider--AboutDaikin .Slider--Style02 {
		margin: 0 -15px 0 0;
	}
	.js-Slider--AboutDaikin .Slider--Style02 li.SliderLi {
		margin: 0 15px 0 0;
	}
}



/* F. Top_News
---------- ---------- ---------- */
#Top_News	{
	padding: 21px 0;
	background: #edeff1;
}
#Top_News .News_Wrap {
	display: table;
	width: 100%;
	table-layout: fixed;
}
#Top_News .News_Title {
	display: table-cell;
	vertical-align: top;
	width: 5em;
}
#Top_News .News_Title h2 {
	margin: -3px 10px 0 0;
	font-size: 167%; /* 20px */
	display: inline-block;
}
#Top_News .News_List {
	display: table-cell;
	vertical-align: top;
}
#Top_News .News_List ul {
	width: 635px;
}
#Top_News .News_List ul a {
	color: #000;
	font-size: 117%;
}
#Top_News .News_Title-List,
#Top_News .News_Utility {
	display: table-cell;
	vertical-align: top;
}
#Top_News .News_Utility ul {
	float: right;
	margin-right: 0;
	margin-bottom: 0;
}
#Top_News .News_Utility li {
	display: inline-block;
	margin: 0 0 0 20px;
}
#Top_News .News_Utility li a {
	color: #000;
	font-size: 100%;/* 12px */
}
@media screen and (max-width: 960px) {
	#Top_News .News_Wrap {
		display: block;
	}
	#Top_News .News_Title-List {
		display: table;
		width: 100%;
		table-layout: fixed;
	}
	#Top_News .News_Title {
		display: table-cell;
		padding-right: 10px;
	}
	#Top_News .News_List {
		display: table-cell;
	}
	#Top_News .News_List ul {
		width: auto;
	}
	#Top_News .News_Utility {
		display: block;
		float: right;
	}
}
@media screen and (max-width: 768px) {
	#Top_News .News_Title {
		width: 4em;
		padding-top: 2px;
	}
	#Top_News .News_Title h2 {
		font-size: 125%; /* 15px */
	}
	#Top_News .News_Utility {
		margin-top: 12px;
	}
}


/* G. Top_Info
---------- ---------- ---------- */
#Top_Info {
	padding: 13px 0 3px;
	border-top: 1px solid #4d4d4d;
}
#Top_Info h2 {
	margin-bottom: 5px;
	font-size: 143%; /* 20px */
}
#Top_Info ul.List {
	margin-top: -10px;
}
#Top_Info ul.List a {
	font-weight: bold;
}

/* H. ImportantNotice
---------- ---------- ---------- */
#ImportantNoticeWrap {
	width: 100%;
	padding: 15px 0;
	color: #FFF;
	box-shadow: inset -1px -4px 5px 0 rgba(174,42,42,1),
		inset -1px 4px 5px 0 rgba(139,33,33,1);
	background: #d13232;
}
#ImportantNoticeArea {
	width: 960px;
	margin: 0 auto;
}
#ImportantNoticeArea > dl:after {
	content: "";
	display: block;
	clear: both;
}
#ImportantNoticeArea > dl {
	margin: 0;
	padding-left: 28px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dg_common/images/icon_important.png") no-repeat 0 2px;
}
#ImportantNoticeArea > dl dt {
	clear: both;
	float: left;
	width: 10em;
	font-weight:bold;
	vertical-align: top;
}
#ImportantNoticeArea > dl dd {
	margin: 0 0 0 10em;
	vertical-align: top;
}
#ImportantNoticeArea > dl dd a {
	color: inherit;
}

@media screen and (max-width: 960px) {
	#ImportantNoticeWrap {
		width: auto;
		padding: 15px 22px;
		box-sizing: border-box;
	}
	#ImportantNoticeArea {
		width: auto;
	}
}
@media screen and (max-width: 768px) {
	#ImportantNoticeWrap {
		padding: 15px 14px;
	}
	#ImportantNoticeArea > dl dd {
		clear: both;
		margin: 0;
	}
}


/* I. FooterWrap
---------- ---------- ---------- */
#FooterWrap {
	position: relative;
	z-index: 100;
}


/* J. Modal
---------- ---------- ---------- */
#ModalCurrent {
	background-color: #FFF;
}

.set-responsiveWebDesign .g-modal_pagination {
	display: none!important;
}

@media screen and (max-width: 769px) {
	.set-responsiveWebDesign .pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img--Left {
		float: none;
		margin-right: 0;
	}
}

@media only screen and (max-width: 480px) {
	.set-responsiveWebDesign .g-modal_close {
		right: 18px!important;
	}
}


/* K. Common
---------- ---------- ---------- */
h2 {
	margin-bottom: 15px;
	font-size: 214%; /* 30px */
	line-height: 1.2;
}
@media screen and (max-width: 960px) {
	.set-responsiveWebDesign #HeaderShrinking {
		position: absolute !important;
	}
	.set-responsiveWebDesign.header-open #HeaderShrinking {
		position: static !important;
	}
	h2 {
		font-size: 158%; /* 22px */
	}
}
@media screen and (min-width: 768px) {
	h2 {
		font-size: 143%; /* 20px */
	}
}
@media screen and (max-width: 480px) {
	h2 {
		font-size: 129%; /* 18px */
	}
}


/* L. Slider
---------- ---------- ---------- */
.slick-slide:focus {
	outline: none!important;
}
.slick-arrow:focus {
	outline: none!important;
}
.Slider--Style01 ,
.js-Slider--AboutDaikin {
	position: relative;
}
.js-Slider--Casestudy .slick-dots ,
.js-Slider--AboutDaikin .slick-dots {
	display: inline-block;
	text-align: center;
	margin: 0 -8px 0 0;
	padding-top: 4px;
	line-height: 1;
	height: 5px;
}
.js-Slider--Casestudy .slick-dots {
	width: 100%;
	margin: 30px -8px 0 0;
}
.js-Slider--AboutDaikin .slick-dots {
	height: 7px;
}
.js-Slider--Casestudy .slick-dots li ,
.js-Slider--AboutDaikin .slick-dots li {
	display: inline-block;
	vertical-align: middle;
	width: 70px;
	height: 5px;
	margin: 0 8px 0 0;
}
.js-Slider--AboutDaikin .slick-dots li {
	height: 7px;
}
.js-Slider--Casestudy .slick-dots li button ,
.js-Slider--AboutDaikin .slick-dots li button {
	display: block;
	position: relative;
	outline: none;
	width: 100%;
	height: 100%;
	line-height: 0;
	font-size: 0;
	color: transparent;
	border: none;
	cursor: pointer;
	padding: 0;
	overflow: hidden;
	opacity: 1;
	background: #fff;
}
.js-Slider--Casestudy .slick-dots li button {
	background: #d2d6d9;
}
.js-Slider--AboutDaikin .slick-dots li button {
	border: 1px solid #b8b8b8;
}
.js-Slider--Casestudy .slick-dots li button span ,
.js-Slider--AboutDaikin .slick-dots li button span {
	display: block;
	visibility: hidden;
	content: "";
	height: 5px;
	position: absolute;
	left: 0;
	top: 0;
	width: 0;
	background: #0097e0;
	-webkit-animation-duration: 6s;
			animation-duration: 6s;
	-webkit-animation-timing-function: linear;
			animation-timing-function: linear;
	-webkit-animation-fill-mode: both;
			animation-fill-mode: both;
	opacity: 1;
}
.js-Slider--Casestudy .slick-dots li.slick-active button span ,
.js-Slider--AboutDaikin .slick-dots li.slick-active button span {
	visibility: visible;
	width: 100%;
	-webkit-animation-name: kf-sliderProgress;
			animation-name: kf-sliderProgress;
}
@-webkit-keyframes kf-sliderProgress{
	0% { width: 0%; }
	100% { width: 100%; }
}
@keyframes kf-sliderProgress{
	0% { width: 0%; }
	100% { width: 100%; }
}
.js-Slider--AboutDaikin .slick-prev {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/pic_case_arrow_prev.png") no-repeat 100% 0;
}
.js-Slider--AboutDaikin .slick-next {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/images/pic_case_arrow_next.png") no-repeat 100% 0;
}

@media screen and (max-width: 767px) {
	.js-Slider--Casestudy__Inner {
		position: relative;
	}
	.js-Slider--Casestudy .slick-dots li {
		width: 26px!important;
	}
	.js-Slider--Casestudy .slick-dots li button {
		width: 26px;
	}
	.js-Slider--Casestudy .slick-arrow {
		position: absolute;
		top: 50%;
		width: 26px;
		height: 26px;
		padding: 0;
		overflow: hidden;
		text-indent: 100%;
		color: #fff;
		white-space: nowrap;
		z-index: 2;
		border: none;
		background: #000;
		-webkit-border-radius: 6px;
				border-radius: 6px;
	}
	.js-Slider--Casestudy .slick-arrow:hover {
		cursor: pointer;
	}
	.js-Slider--Casestudy .slick-prev {
		left: 0;
	}
	.js-Slider--Casestudy .slick-next {
		right: 0;
	}
	.js-Slider--Casestudy .slick-arrow:before {
		content: "";
		position: absolute;
		top: 50%;
		display: inline-block;
		vertical-align: middle;
		text-decoration: none;
		width: 6px;
		height: 6px;
		margin-top: -4px;
		border-top: 2px solid #fff;
		border-right: 2px solid #fff;
		border-color: #fff;
	}
	.js-Slider--Casestudy .slick-prev:before {
		left: 50%;
		margin-left: -3px;
		-ms-transform: rotate(-135deg);
		-webkit-transform: rotate(-135deg);
				transform: rotate(-135deg);
	}
	.js-Slider--Casestudy .slick-next:before {
		right: 50%;
		margin-right: -3px;
		-ms-transform: rotate(45deg);
		-webkit-transform: rotate(45deg);
				transform: rotate(45deg);
	}
}
@media screen and (min-width: 480px) {
	.SlickNavi02 {
		position: relative;
		display: inline-block;
		margin: 40px 0 0 0;
		padding: 0 28px;
		height: 24px;
	}
	.js-Slider--AboutDaikin button.slick-arrow {
		position: absolute;
		top: 0;
		display: inline-block;
		width: 16px;
		height: 24px;
		padding: 0;
		cursor: pointer;
		overflow: hidden;
		text-indent: -9999px;
		color: #fff;
		z-index: 2;
		border: none;
	}
	.js-Slider--AboutDaikin .slick-prev {
		left: 0;
	}
	.js-Slider--AboutDaikin .slick-next {
		right: 0;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow {
		display: none;
	}
}
@media screen and (max-width: 480px) {
	.SlickNavi02 .slick-arrow {
		display: none!important;
	}
	.SlickNavi__Dots02 {
		margin: 30px 0 0 0;
	}
	.SlickNavi__Dots02 .slick-dots {
		padding: 0 0 10px 0;
	}
	.js-Slider--AboutDaikin .slick-dots li {
		width: 26px!important;
	}
	.js-Slider--AboutDaikin .slick-dots li button {
		width: 26px;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow {
		display: block;
		position: absolute;
		top: 50%;
		z-index: 2;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow button {
		display: block;
		width: 26px;
		height: 26px;
		padding: 0;
		overflow: hidden;
		text-indent: -9999px;
		color: #fff;
		border: none;
		background: #000;
		-webkit-border-radius: 6px;
				border-radius: 6px;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow button:hover {
		cursor: pointer;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow-Prev {
		left: 0;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow-Next {
		right: 0;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow button:before {
		content: "";
		position: absolute;
		top: 50%;
		display: inline-block;
		vertical-align: middle;
		text-decoration: none;
		width: 6px;
		height: 6px;
		margin-top: -4px;
		border-top: 2px solid #fff;
		border-right: 2px solid #fff;
		border-color: #fff;
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow-Prev button:before {
		left: 50%;
		margin-left: -3px;
		-ms-transform: rotate(-135deg);
		-webkit-transform: rotate(-135deg);
				transform: rotate(-135deg);
	}
	.js-Slider--AboutDaikin .Slick-SP-Arrow-Next button:before {
		right: 50%;
		margin-right: -3px;
		-ms-transform: rotate(45deg);
		-webkit-transform: rotate(45deg);
				transform: rotate(45deg);
	}
}