@charset "utf-8";

.careerNavi .blueLine {
	display: block;
	margin-left: 320px;
}


/* =============================
	INDEX
============================== */

.employees_index .mainArea {
	overflow: hidden;
	padding-bottom: 30px;
	border-bottom: 1px solid #009acf;
}
.employees_index .mainArea .rightImg {
	float: right;
	margin-right: 40px
}
.employees_index .mainArea .leftText {
	float: left;
	width: 660px;
}
.employees_index .mainArea .leftText h1 {
	font-size: 357%;
	color: #009acf;
	font-weight: bold;
	font-style: italic;
	text-transform: uppercase;
	letter-spacing: -1px;
}
.employees_index .mainArea .leftText .blueText {
	color: #009acf;
	font-size: 107%;
	text-align: justify;
	margin-bottom: 70px;
}
.employees_index .mainArea .leftText .blackText {
	color: #000;
	font-size: 214%;
	font-weight: bold;
	line-height: 1.4;
	text-transform: uppercase;
}
.employees_index .mainArea .leftText .blackText_sub {
	text-align: justify;
}
.employees_index .subArea_01 {
	padding: 40px 0;
	border-bottom: 4px solid #00cdff;
}
.employees_index .subArea_01 h2 {
	font-size: 145%;
	font-weight: bold;
	color: #009acf;
	margin-bottom: 30px;
}
.employees_index .threeBox {
	float: left;
	margin: 0 45px 20px;
}
.employees_index .threeBox p {
	text-align: center;
}
.employees_index .threeBox .title {
	font-size: 114%;
}
.employees_index .threeBox .img {
	width: 180px;
	margin: 20px auto 30px;
}
.employees_index .threeBox.last .img {
	width: 180px;
	margin: 20px auto;
}
.employees_index .threeBox .text {
	font-size: 150%;
	font-style: italic;
	font-weight: bold;
	color: #000;
	text-transform: uppercase;
	line-height: 1.3;
	letter-spacing: -1px;
}
.employees_index .threeBox .text span {
	font-size: 123%;
}
.employees_index .mapArea {
	clear: both;
	padding: 30px;
	overflow: hidden;
	border: 1px solid #d2d6d9 ;
}
.employees_index .mapArea .mqpImg {
	float: left;
	margin: 20px 0 0;  
}
.employees_index .mapArea table {
	float: none;
	margin: auto;

}
.employees_index .mapArea th,
.employees_index .mapArea td {
	padding: 5px 20px;
	vertical-align: middle;
}
.employees_index .mapArea th {
	text-align: left;
}
.employees_index .mapArea th img {
	margin-top: 3px;
}
.employees_index .mapArea td {
	text-align: center;
}
.employees_index .employeesArea {
	padding: 40px 0;
	overflow: hidden;
}
.employees_index .employeesArea h2 {
	font-size: 214%;
	font-weight: bold;
	color: #000;
}
.employees_index .employeesBox {
	float: left;
}
.employees_index .employeesBox.left {
	width: 390px;
	margin-right: 110px;
}
.employees_index .employeesBox a {
	display: block;
	margin: 20px 0;
}
.employees_index .employeesBox a:hover {
	filter: alpha(opacity=80);
	-moz-opacity:0.8;
	opacity:0.8;
	text-decoration: none;
}
.employees_index .employeesBox a .img,
.employees_index .employeesBox a .text {
	display: inline-block;
	vertical-align: middle;
	/display: inline;
	/zoom: 1;
}
.employees_index .employeesBox a .img {
	margin-right: 10px;
}
.employees_index .employeesBox a .text .name {
	font-size: 128%;
	clip: #009acf;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/right_arrow.png") 0 center no-repeat;
	padding-left: 15px;
	display: block;
	margin-bottom: 10px;
}
.employees_index .employeesBox a .text .position {
	color: #4c4c4c;
}
.employees_index .employeesBox a .text .country {
	display: block;
	font-weight: bold;
	color: #000;
	font-size: 107%;
}
.employees_index .employeesBox a:hover .text,
.employees_index .employeesBox a:visited .text,
.employees_index .employeesBox a:active .text {
	color: inherit;
}

/* =============================
	COMMON
============================== */

.ContentsArea_Single #ContentsArea {
	margin-top: 0;
}

#ContentsWrap {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/earth_bg.gif") 50% 135px no-repeat;
	background-attachment:fixed;
}
#MainContentsArea {
	background-color: inherit;
}
.ContentsArea_Single.MainContentsArea_SubMain #MainContentsArea .MainContentsArea__Main {
	background: #fff;
	width: 700px;
	border: 1px solid #0099cc;
}

#MainContentsArea .thumbnailBlock {
	display: block;
	padding: 15px;
}
#MainContentsArea .thumbnailBlock:hover {
	background-color: #05c4f4;
	text-decoration: none;
}
#MainContentsArea .thumbnailBlock .thumbImg {
	display: block;
	width: 60px;
	margin: 0 auto;
}
#MainContentsArea .thumbnailBlock .name {
	font-size: 100%;
	color: #009acf;
	margin-bottom: 0;
	display: block;
	text-align: center;
}
#MainContentsArea .thumbnailBlock .position {
	font-size: 85%;
	margin-bottom: 0;
	color: #333;
	display: block;
	text-align: center;
}
#MainContentsArea .thumbnailBlock .country {
	font-size: 100%;
	font-weight: bold;
	margin-bottom: 0;
	color: #000;
	display: block;
	text-align: center;
}
#MainContentsArea .thumbnailBlock:hover .name,
#MainContentsArea .thumbnailBlock:hover .position {
	color: #fff;
	text-decoration: none;
}

.mainImgArea h1 {
	font-style: italic;
	color: #fff;
	font-size: 185%;
	font-weight: normal;
	line-height: 1.5;
}
.mainImgArea .name {
	margin: 100px 0 0;
	font-size: 170%;
	color: #fff;
	margin-bottom: 0;
}
.mainImgArea .position {
	font-size: 100%;
	color: #fff;
	margin-bottom: 0;
}
.textBlock {
	padding: 30px;
}
.textBlock table th {
	width: 100px;
}
.textBlock p {
	text-align: justify;
}
.textBlock p.mb30 {
	margin-bottom: 30px;
}
.subImgArea {
	height: 100px;
	padding: 180px 0 0 50px;
}
.subImgArea h2 {
	font-style: italic;
	color: #fff;
	font-size: 145%;
	font-weight: normal;
	line-height: 1.7;
	text-transform: none;
}

#MainContentsArea .prevNextArea {
	clear: both;
	float: right;
	width: 702px;
	overflow: hidden;
	padding: 30px 0;
}
#MainContentsArea .prevNextArea a {
	display: block;
	padding: 15px;
}
#MainContentsArea .prevNextArea .prev a {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/left_arrow.png") 0 center no-repeat;
	float: left;
}
#MainContentsArea .prevNextArea .next a {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/right_arrow.png") 100% center no-repeat;
	float: right;
}
#MainContentsArea .prevNextArea .thumbImg,
#MainContentsArea .prevNextArea .thumbName {
	display: inline-block;
	vertical-align: middle;
	/display: inline;
	/zoom: 1;
	margin-bottom: 0;
}
#MainContentsArea .prevNextArea .thumbName .name {
	font-size: 100%;
	color: #009acf;
	margin-bottom: 0;
	display: block;
}
#MainContentsArea .prevNextArea .thumbName .position {
	font-size: 85%;
	margin-bottom: 0;
	color: #333;
	display: block;
}
#MainContentsArea .prevNextArea a:hover {
	filter: alpha(opacity=80);
	-moz-opacity:0.8;
	opacity:0.8;
	text-decoration: none;
}

/* =============================
	employees_01
============================== */

.employees_01 .mainImgArea .name {
	margin: 120px 0 0;
}

.employees_01 .mainImgArea {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_01_main.jpg") 0 0 no-repeat;
	height: 280px;
	padding: 60px 0 0 40px;
}
.employees_01 .subImg_01 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_01_subimg_01.jpg") 0 0 no-repeat;
}
.employees_01 .subImg_02 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_01_subimg_02.jpg") 0 0 no-repeat;
}
.employees_01 .subImg_03 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_01_subimg_03.jpg") 0 0 no-repeat;
}
.employees_01 .subImg_04 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_01_subimg_04.jpg") 0 0 no-repeat;
}
.employees_01 .thumbnailBlock.active_01 {
	background-color: #05c4f4;
}
#ContentsArea.employees_01 #MainContentsArea .thumbnailBlock.active_01 span {
	color: #fff;
}

/* =============================
	employees_02
============================== */

.employees_02 .mainImgArea {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_02_main.jpg") 0 0 no-repeat;
	height: 310px;
	padding: 30px 0 0 40px;
}
.employees_02 .subImg_01 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_02_subimg_01.jpg") 0 0 no-repeat;
}
.employees_02 .subImg_02 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_02_subimg_02.jpg") 0 0 no-repeat;
}
.employees_02 .subImg_03 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_02_subimg_03.jpg") 0 0 no-repeat;
}
.employees_02 .subImg_04 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_02_subimg_04.jpg") 0 0 no-repeat;
}
.employees_02 .thumbnailBlock.active_02 {
	background-color: #05c4f4;
}
#ContentsArea.employees_02 #MainContentsArea .thumbnailBlock.active_02 span {
	color: #fff;
}
.employees_02 .subImgArea.subImg_03 {
	padding: 215px 0 0 50px;
}

/* =============================
	employees_03
============================== */

.employees_03 .mainImgArea {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_03_main.jpg") 0 0 no-repeat;
	height: 310px;
	padding: 30px 0 0 40px;
}
.employees_03 .subImg_01 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_03_subimg_01.jpg") 0 0 no-repeat;
}
.employees_03 .subImg_02 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_03_subimg_02.jpg") 0 0 no-repeat;
}
.employees_03 .subImg_03 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_03_subimg_03.jpg") 0 0 no-repeat;
}
.employees_03 .subImg_04 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_03_subimg_04.jpg") 0 0 no-repeat;
}
.employees_03 .thumbnailBlock.active_03 {
	background-color: #05c4f4;
}
#ContentsArea.employees_03 #MainContentsArea .thumbnailBlock.active_03 span {
	color: #fff;
}
.employees_03 .subImgArea.subImg_02,
.employees_03 .subImgArea.subImg_03 {
	padding: 215px 0 0 50px;
}

/* =============================
	employees_04
============================== */


.employees_04 .mainImgArea {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_04_main.jpg") 0 0 no-repeat;
	height: 310px;
	padding: 30px 0 0 40px;
}
.employees_04 .subImg_01 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_04_subimg_01.jpg") 0 0 no-repeat;
}
.employees_04 .subImg_02 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_04_subimg_02.jpg") 0 0 no-repeat;
}
.employees_04 .subImg_03 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_04_subimg_03.jpg") 0 0 no-repeat;
}
.employees_04 .subImg_04 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_04_subimg_04.jpg") 0 0 no-repeat;
}
.employees_04 .thumbnailBlock.active_04 {
	background-color: #05c4f4;
}
#ContentsArea.employees_04 #MainContentsArea .thumbnailBlock.active_04 span {
	color: #fff;
}

/* =============================
	employees_05
============================== */

.employees_05 .mainImgArea {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_05_main.jpg") 0 0 no-repeat;
	height: 310px;
	padding: 30px 0 0 40px;
}
.employees_05 .subImg_01 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_05_subimg_01.jpg") 0 0 no-repeat;
}
.employees_05 .subImg_02 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_05_subimg_02.jpg") 0 0 no-repeat;
}
.employees_05 .subImg_03 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_05_subimg_03.jpg") 0 0 no-repeat;
}
.employees_05 .subImg_04 {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/employees/images/employees_05_subimg_04.jpg") 0 0 no-repeat;
}
.employees_05 .thumbnailBlock.active_05 {
	background-color: #05c4f4;
}
#ContentsArea.employees_05 #MainContentsArea .thumbnailBlock.active_05 span {
	color: #fff;
}
.employees_05 .subImgArea.subImg_02,
.employees_05 .subImgArea.subImg_04 {
	height: 65px;
	padding: 215px 0 0 50px;
}


