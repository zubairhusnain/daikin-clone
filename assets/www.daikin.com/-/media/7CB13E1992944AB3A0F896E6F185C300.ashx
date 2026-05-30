@charset "utf-8";


.careerNavi {
	margin: 0 0 50px;
}
.careerNavi ul {
	overflow: hidden;
}
.careerNavi ul li {
	float: left;
}
.careerNavi ul li a {
	width: 140px;
	height: 40px;
	color: #009acf;
	display: block;
	line-height: 1.1;
	padding: 10px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/nav_line.gif") 100% center no-repeat #f6f6f6;
	font-size: 92%;
	text-transform: uppercase;
	text-align: center;
}
.careerNavi ul li a span {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/right_arrow.png") 100% center no-repeat;
	display: inline-block;
	padding-right: 20px;
}
.careerNavi ul li.navManagement a span,
.careerNavi ul li.navHuman a span,
.careerNavi ul li.navEmployees a span {
	margin-top: 7px;
	text-align: left;
}

.careerNavi ul li.navInternships a span,
.careerNavi ul li.navCareer a span,
.careerNavi ul li.navOpportunities a span {
	margin-top: 12px;
}

.careerNavi ul li.navEmployees a span {
	padding-right: 18px;
	margin-top: 12px;
}
/*.careerNavi ul li.navInternships a {
	background-image: none;
}*/
.careerNavi ul li.navOpportunities a {
	background-image: none;
}



.careerNavi ul li a:hover {
	filter: alpha(opacity=70);
	-moz-opacity:0.7;
	opacity:0.7;
	text-decoration: none;
}
.careerNavi .blueLine {
	width: 160px;
	height: 5px;
	background: #05c4f4;
	display: none;
}
