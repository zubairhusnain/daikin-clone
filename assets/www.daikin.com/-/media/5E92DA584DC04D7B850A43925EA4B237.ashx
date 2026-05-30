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

#Top_Info > .ContentsInnerArea {
    padding: 0;
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
