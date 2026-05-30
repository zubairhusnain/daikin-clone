@charset "utf-8";


/*

	reset.css

*/




/*
html5doctor.com Reset Stylesheet
v1.6.1
Last Updated: 2010-09-17
Author: Richard Clark - http://richclarkdesign.com
Twitter: @rich_clark
*/


.pkg-LightBoxContent html,
.pkg-LightBoxContent body,
.pkg-LightBoxContent span,
.pkg-LightBoxContent object,
.pkg-LightBoxContent iframe,
.pkg-LightBoxContent h1,
.pkg-LightBoxContent h2,
.pkg-LightBoxContent h3,
.pkg-LightBoxContent h4,
.pkg-LightBoxContent h5,
.pkg-LightBoxContent h6,
.pkg-LightBoxContent p,
.pkg-LightBoxContent blockquote,
.pkg-LightBoxContent pre,
.pkg-LightBoxContent abbr,
.pkg-LightBoxContent address,
.pkg-LightBoxContent cite,
.pkg-LightBoxContent code,
.pkg-LightBoxContent del,
.pkg-LightBoxContent dfn,
.pkg-LightBoxContent em,
.pkg-LightBoxContent img,
.pkg-LightBoxContent ins,
.pkg-LightBoxContent kbd,
.pkg-LightBoxContent q,
.pkg-LightBoxContent samp,
.pkg-LightBoxContent small,
.pkg-LightBoxContent strong,
.pkg-LightBoxContent sub,
.pkg-LightBoxContent sup,
.pkg-LightBoxContent var,
.pkg-LightBoxContent b,
.pkg-LightBoxContent i,
.pkg-LightBoxContent dl,
.pkg-LightBoxContent dt,
.pkg-LightBoxContent dd,
.pkg-LightBoxContent ol,
.pkg-LightBoxContent ul,
.pkg-LightBoxContent li,
.pkg-LightBoxContent fieldset,
.pkg-LightBoxContent form,
.pkg-LightBoxContent label,
.pkg-LightBoxContent legend,
.pkg-LightBoxContent table,
.pkg-LightBoxContent caption,
.pkg-LightBoxContent tbody,
.pkg-LightBoxContent tfoot,
.pkg-LightBoxContent thead,
.pkg-LightBoxContent tr,
.pkg-LightBoxContent th,
.pkg-LightBoxContent td,
.pkg-LightBoxContent article,
.pkg-LightBoxContent aside,
.pkg-LightBoxContent canvas,
.pkg-LightBoxContent details,
.pkg-LightBoxContent figcaption,
.pkg-LightBoxContent figure,
.pkg-LightBoxContent footer,
.pkg-LightBoxContent header,
.pkg-LightBoxContent hgroup,
.pkg-LightBoxContent menu,
.pkg-LightBoxContent nav,
.pkg-LightBoxContent section,
.pkg-LightBoxContent summary,
.pkg-LightBoxContent time,
.pkg-LightBoxContent mark,
.pkg-LightBoxContent audio,
.pkg-LightBoxContent video {
	margin:0;
	padding:0;
	border:0;
	outline:0;
	font-size:100%;
	vertical-align:baseline;
	background:transparent;
}
.pkg-LightBoxContent body {
	line-height:1;
}
.pkg-LightBoxContent article,
.pkg-LightBoxContent aside,
.pkg-LightBoxContent details,
.pkg-LightBoxContent figcaption,
.pkg-LightBoxContent figure,
.pkg-LightBoxContent footer,
.pkg-LightBoxContent header,
.pkg-LightBoxContent hgroup,
.pkg-LightBoxContent menu,
.pkg-LightBoxContent nav,
.pkg-LightBoxContent section {
	display:block;
}
.pkg-LightBoxContent ul {
	list-style:none;
}
.pkg-LightBoxContent blockquote,
.pkg-LightBoxContent q {
	quotes:none;
}
.pkg-LightBoxContent blockquote:before,
.pkg-LightBoxContent blockquote:after,
.pkg-LightBoxContent q:before,
.pkg-LightBoxContent q:after {
	content:'';
	content:none;
}
.pkg-LightBoxContent em {
	font-style: normal;
}
/*
.pkg-LightBoxContent a {
	margin:0;
	padding:0;
	font-size:100%;
	vertical-align:baseline;
	background:transparent;
	text-decoration: none;
}
*/
.pkg-LightBoxContent img {
	vertical-align: bottom;
}

/* change colours to suit your needs */
.pkg-LightBoxContent ins {
	background-color:#ff9;
	color:#000;
	text-decoration:none;
}

/* change colours to suit your needs */
.pkg-LightBoxContent mark {
	background-color:#ff9;
	color:#000;
	font-style:italic;
	font-weight:bold;
}
.pkg-LightBoxContent del {
	text-decoration: line-through;
}
.pkg-LightBoxContent abbr[title],
.pkg-LightBoxContent dfn[title] {
	border-bottom:1px dotted;
	cursor:help;
}
.pkg-LightBoxContent table {
	border-collapse:collapse;
	border-spacing:0;
}

/* change border colour to suit your needs */
.pkg-LightBoxContent hr {
	display:block;
	height:1px;
	border:0;
	border-top:1px solid #cccccc;
	margin:1em 0;
	padding:0;
}
.pkg-LightBoxContent input,
.pkg-LightBoxContent select {
	vertical-align:middle;
}



/*

	base.css

*/


.pkg-LightBoxContent {
	line-height: 1.57;
	background: #fff;
	font-size: 12px; /* 12px */
	text-align: left;
	margin-top: -1px;
	padding-top: 1px;
}

html.is-ModalOpen > body {
	height: 100%;
	overflow: hidden;
}

.pkg-LightBoxContent ul,
.pkg-LightBoxContent ol {
	list-style: none;
}

.pkg-LightBoxContent address,
.pkg-LightBoxContent em,
.pkg-LightBoxContent strong {
	font-style: normal;
}

.pkg-LightBoxContent img {
	border: none;
	vertical-align: top;
}

.pkg-LightBoxContent input ,
.pkg-LightBoxContent select ,
.pkg-LightBoxContent textarea {
	font-family: helvetica, arial, sans-serif;
}

.pkg-LightBoxContent a,
.pkg-LightBoxContent a:link {
	color: #009acf;
	text-decoration: none;
}
.pkg-LightBoxContent a:visited {
	color: #464f9a;
}
.pkg-LightBoxContent a:hover,
.pkg-LightBoxContent a:active,
.pkg-LightBoxContent a:focus {
	color: #009acf;
	text-decoration: underline;
}

.pkg-LightBoxContent p {
	/*margin-top: -.35em;*/
	margin-bottom: 17px;
}
.pkg-LightBoxContent .dl-Box p ,
.pkg-LightBoxContent .gen-dl-Compact p {
	margin-bottom: 14px;
}

.pkg-LightBoxContent dl {
	margin-bottom: 17px;
}

.pkg-LightBoxContent dl dd {
	margin-bottom: 7px;
}

.pkg-LightBoxContent small {
	font-size: 100%;
}



/*

	contents.css

*/



/* ---------- ---------- ---------- 
	::index::

 A. Contents Layout
  -font-size adjustment
 B. Breadcrumbs
 C. KeyVisual
  -01. KeyVisual--Over
  -02. KeyVisual--Wide
 D. MainContentsArea
 E. SubContentsArea
  -01. Widget

 X. Modules
  -01. Heading
  -02. Section
  -03. Grid
  -04. GridColumnCount
  -05. Block
  -06. Box
  -07. Text
  -08. Definition List
  -09. List
  -10. Mkr
  -11. Button
  -12. Tab
  -13. Table
  -14. Image
  -00. General Items

 XX. Function Modules
  -01. TabNav
  -02. TabViewer
  -03. Flex
  -04. Tooltip
  -05. Colorbox (Modal)
  -06. SlideImg (Rollup / Carousel)
  -07. Pagetop

---------- ---------- ---------- */


/* A. Contents Layout
---------- ---------- ---------- */
.pkg-LightBoxContent #pkg-ContentsWrap {
	position: relative;
	width: 100%;
	min-width: 960px;
	font-size: 117%; /* 14px */
	background-position: 50% 0;
	background-repeat: no-repeat;
	background-size: auto;
	z-index: 99;
}

/*-----------------------------------------------
	#ContentsWrap font-size adjustment
	(base font size 14px )

	10px  72%      16px  115%     22px  158%
	11px  79%      17px  122%     23px  165%
	12px  86%      18px  129%     24px  172%
	13px  93%      19px  136%     25px  179%
	14px  100%     20px  143%     26px  186%
	15px  108%     21px  150%

-----------------------------------------------*/

.pkg-LightBoxContent #pkg-ContentsArea:after {
	content: "";
	display: block;
	clear: both;
}

.pkg-LightBoxContent #pkg-ContentsArea {
	position: relative;
	width: 960px;
	margin: 0 auto 0;
	padding-bottom: 40px;
	z-index: 1;
}


/* * A-01. ContentsArea_Double
---------- ---------- */
.pkg-LightBoxContent .pkg-ContentsArea_Double #pkg-ContentsArea {
	margin-top:40px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Double.pkg-KeyVisual--Over #pkg-ContentsArea {
	margin-top: 280px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Double.KeyVisual--Wide #pkg-ContentsArea {
	margin-top: 0;
	padding-top: 350px;
}


/* A-02. ContentsArea_Single
---------- ---------- */
.pkg-LightBoxContent .pkg-ContentsArea_Single #pkg-ContentsArea {
	margin-top:40px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single.pkg-KeyVisual--Over #pkg-ContentsArea {
	margin-top: 280px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single.pkg-KeyVisual--Wide #pkg-ContentsArea {
	margin-top: 0;
	padding-top: 350px;
}


/* A-03. ContentsInner
---------- ---------- */
.pkg-LightBoxContent #pkg-ContentsInner {
	width: 100%;
}
.pkg-LightBoxContent .pkg-ContentsInnerWrap {
	width: 100%;
}
.pkg-LightBoxContent .pkg-ContentsInnerContainer {
    margin: 0 auto;
    max-width: 1400px;
    min-width: 960px;
}
.pkg-LightBoxContent .pkg-ContentsInnerArea:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent .pkg-ContentsInnerArea {
	width: 960px;
	margin: 0 auto;
	padding-bottom: 40px;
	overflow: hidden;
}



/* B. Breadcrumbs
---------- ---------- ---------- */
.pkg-LightBoxContent #pkg-BreadcrumbsWrap {
	position: relative;
	width: 100%;
	background-color: rgb(255,255,255);
	background-color: rgba(255,255,255,0.8);
	z-index: 10;
}
.pkg-LightBoxContent #pkg-BreadcrumbsArea {
	width: 960px;
	margin: 0 auto;
	padding: 12px 0 11px;
	font-size: 79%; /* 11px */
}
.pkg-LightBoxContent #pkg-BreadcrumbsArea ul {
	margin-bottom: 0 !important;
}
.pkg-LightBoxContent #pkg-BreadcrumbsArea ul li {
	margin-bottom: 0 !important;
}
.pkg-LightBoxContent .pkg-KeyVisual--Wide #pkg-BreadcrumbsWrap {
	position: absolute;
	top: 0;
	right: 0;
	left: 0;
}



/* C. KeyVisualArea
---------- ---------- ---------- */
.pkg-LightBoxContent #pkg-KeyVisualWrap {
	margin: 0 auto;
	position: absolute;
	top: 0;
	right: 0;
	left: 0;
	min-width: 960px;
	width: 100%;
	max-width: 1400px;
	background-position: 50% 0;
	background-repeat: no-repeat;
	background-color: #09c;
	z-index: 1;
}
.pkg-LightBoxContent .pkg-KeyVisual--Wide #pkg-KeyVisualWrap {
	z-index: 2;
}
.pkg-LightBoxContent #pkg-KeyVisualArea:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent #pkg-KeyVisualArea {
	position: relative;
	z-index: 5;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text {
	float: left;
}
.pkg-LightBoxContent .pkg-KeyVisualArea--ThumbBnr1 .pkg-KeyVisualArea__Text {
	width: 765px;
}
.pkg-LightBoxContent .pkg-KeyVisualArea--ThumbBnr2 .pkg-KeyVisualArea__Text {
	width: 575px;
}
.pkg-LightBoxContent .pkg-KeyVisualArea--ThumbBnr3 .pkg-KeyVisualArea__Text {
	width: 385px;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text h1 {
	margin-bottom: 10px;
	color: #FFF;
	font-weight: bold;
	font-size: 250%; /* 35px */
	line-height: 1.18;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch {
	color: #FFF;
	font-weight: bold;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch > dl > dt {
	font-size: 172%; /* 24px */
	font-weight: bold;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch > dl > dd {
	font-size: 115%; /* 16px */
	font-weight: normal;
	line-height: 1.5;
}
.pkg-LightBoxContent .pkg-KeyVisualPrintBackground {
	display: none;
	position: absolute;
	width: 100%;
	top: 0;
	left: 0;
	right: 0;
	text-align: center;
	z-index: -10;
}

.pkg-LightBoxContent .pkg-KeyVisualPrintBackground .pkg-BackgroundInner {
	width: 980px;
	margin: 0 auto;
	text-align: center;
}

.pkg-LightBoxContent .pkg-KeyVisualPrintBackground .pkg-BackgroundInner img { margin-left: -210px; }/* Position Adjustment for KeyVisual Width 1400px */




/* C-01. KeyVisual--Over
---------- ---------- */
.pkg-LightBoxContent .pkg-KeyVisual--Over #pkg-KeyVisualWrap {
	height: 480px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Double.pkg-KeyVisual--Over #pkg-KeyVisualArea {
	width: 960px;
	height: 190px;
	padding-top: 130px;
	margin: 0 auto;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single.pkg-KeyVisual--Over #pkg-KeyVisualArea {
	width: 960px;
	height: 160px;
	padding-top: 160px;
	margin: 0 auto;
}
.pkg-LightBoxContent .pkg-KeyVisual--Over .pkg-KeyVisualArea__Text .pkg-Inner {
	display: inline-block;
	float: left;
	clear: both;
	padding: 5px 10px;
	line-height: 1;
	background-color: rgb(0,153,204);
	background-color: rgba(0,153,204,0.8);
}
.pkg-LightBoxContent .pkg-KeyVisual--Over .pkg-KeyVisualArea__Text .pkg-Inner.pkg-gen-TextItalic {
	padding-right: 20px;
}
.pkg-LightBoxContent .pkg-KeyVisual--Over .pkg-KeyVisualArea__Text .pkg-Inner__SubText {
	font-size: 51%; /*18px*/
	line-height: 1;
}


/* C-02. KeyVisual--Wide
---------- ---------- */
.pkg-LightBoxContent .pkg-KeyVisual--Wide #pkg-KeyVisualWrap {
	height: 310px;
}
.pkg-LightBoxContent .pkg-KeyVisual--Wide #pkg-KeyVisualArea {
	width: 960px;
	height: 200px;
	padding-top: 110px;
	margin: 0 auto;
}



/* A. Contents Layout
---------- ---------- ---------- */
.pkg-LightBoxContent #ContentsWrap {
	position: relative;
	width: 100%;
	min-width: 960px;
	font-size: 117%; /* 14px */
	background-position: 50% 0;
	background-repeat: no-repeat;
	background-size: auto;
	z-index: 99;
}

/*-----------------------------------------------
	#ContentsWrap font-size adjustment
	(base font size 14px )

	10px 72%   16px 115%   22px 158%
	11px 79%   17px 122%   23px 165%
	12px 86%   18px 129%   24px 172%
	13px 93%   19px 136%   25px 179%
	14px 100%   20px 143%   26px 186%
	15px 108%   21px 150%

-----------------------------------------------*/

.pkg-LightBoxContent #ContentsArea:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent #ContentsArea {
	position: relative;
	width: 960px;
	margin: 0 auto 0;
	padding-bottom: 40px;
	z-index: 1;
}



/* B. Breadcrumbs
---------- ---------- ---------- */
.pkg-LightBoxContent #BreadcrumbsWrap {
	position: relative;
	width: 100%;
	background-color: rgb(255,255,255);
	background-color: rgba(255,255,255,0.8);
	z-index: 10;
}
.pkg-LightBoxContent #BreadcrumbsArea {
	width: 960px;
	margin: 0 auto;
	padding: 12px 0 11px;
	font-size: 79%; /* 11px */
}
.pkg-LightBoxContent #BreadcrumbsArea ul {
	margin-bottom: 0;
}
.pkg-LightBoxContent #BreadcrumbsArea ul li {
	margin-bottom: 0;
}



/* C. KeyVisualArea
---------- ---------- ---------- */
.pkg-LightBoxContent #KeyVisualWrap {
	margin: 0 auto;
	position: absolute;
	top: 0;
	right: 0;
	left: 0;
	min-width: 960px;
	width: 100%;
	max-width: 1400px;
	background-position: 50% 0;
	background-repeat: no-repeat;
	background-color: #09c;
	z-index: 1;
}
.pkg-LightBoxContent .pkg-KeyVisual--Wide #KeyVisualWrap {
	z-index: 2;
}
.pkg-LightBoxContent #KeyVisualArea:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent #KeyVisualArea {
	position: relative;
	z-index: 5;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text {
	float: left;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text h1 {
	margin-bottom: 10px;
	color: #FFF;
	font-weight: bold;
	font-size: 250%; /* 35px */
	line-height: 1.18;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch {
	color: #FFF;
	font-weight: bold;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch > dl > dt {
	font-size: 172%; /* 24px */
	font-weight: bold;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Text__Catch > dl > dd {
	font-size: 115%; /* 16px */
	font-weight: normal;
	line-height: 1.5;
}
.pkg-LightBoxContent .pkg-KeyVisualArea__Notice a:hover,
.pkg-LightBoxContent .pkg-KeyVisualArea__Notice a:focus {
	color: #0099cc;
}
.pkg-LightBoxContent .pkg-KeyVisualPrintBackground {
	display: none;
	position: absolute;
	width: 100%;
	top: 0;
	left: 0;
	right: 0;
	text-align: center;
	z-index: -10;
}

.pkg-LightBoxContent .pkg-KeyVisualPrintBackground .pkg-BackgroundInner {
	width: 980px;
	margin: 0 auto;
	text-align: center;
}

.pkg-LightBoxContent .pkg-KeyVisualPrintBackground .pkg-BackgroundInner img { margin-left: -210px; }/* Position Adjustment for KeyVisual Width 1400px */





/* D. MainContentsArea
---------- ---------- ---------- */
.pkg-LightBoxContent #MainContentsArea:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent #MainContentsArea {
	background-color: #FFF;
}





/* X. Modules
---------- ---------- ---------- */
/* X-01. Heading
---------- ---------- */
.pkg-LightBoxContent h1, 
.pkg-LightBoxContent h2, 
.pkg-LightBoxContent h3, 
.pkg-LightBoxContent h4, 
.pkg-LightBoxContent h5 {
	color: #000;
	font-weight: bold;
}
.pkg-LightBoxContent h1 {
	margin-bottom: 20px;
	font-size: 214%; /* 30px */
	line-height: 1.2;
	text-transform: uppercase;
}
.pkg-LightBoxContent h2 {
	margin-bottom: 13px;
	font-size: 158%; /* 22px */
	line-height: 1.27;
	text-transform: uppercase;
}
.pkg-LightBoxContent h3 {
	margin-bottom: 6px;
	font-size: 108%; /* 15px */
	line-height: 1.53;	
}
.pkg-LightBoxContent .gen-TopLine h3:last-child {
	margin-bottom: 15px;
}
.pkg-LightBoxContent h4 {
	margin-bottom:11px;
	padding-left: 6px;
	color: #000;
	border-left: 4px solid #00c6f7;
}
.pkg-LightBoxContent h4.BorderNone {
	padding-left: 0;
	border-left: none;
}
.pkg-LightBoxContent h5 {
	margin-bottom: 11px;
	padding-left: 6px;
	color: #4C4C4C;
	border-left: 4px solid #a5b0b8;
}
.pkg-LightBoxContent h5.BorderNone {
	padding-left: 0;
	border-left: none;
}

.pkg-LightBoxContent h2 a, 
.pkg-LightBoxContent h2 a:link, 
.pkg-LightBoxContent h2 a:visited,
.pkg-LightBoxContent h3 a, 
.pkg-LightBoxContent h3 a:link, 
.pkg-LightBoxContent h3 a:visited,
.pkg-LightBoxContent h4 a, 
.pkg-LightBoxContent h4 a:link, 
.pkg-LightBoxContent h4 a:visited,
.pkg-LightBoxContent h5 a, 
.pkg-LightBoxContent h5 a:link, 
.pkg-LightBoxContent h5 a:visited {
	color: #000;
}
.pkg-LightBoxContent h2 a:hover, 
.pkg-LightBoxContent h2 a:focus,
.pkg-LightBoxContent h3 a:hover, 
.pkg-LightBoxContent h3 a:focus,
.pkg-LightBoxContent h4 a:hover, 
.pkg-LightBoxContent h4 a:focus,
.pkg-LightBoxContent h5 a:hover, 
.pkg-LightBoxContent h5 a:focus {
	color: #0099CC;
	text-decoration: none;
}

/* Heading (KeyVisual)
---------- */
.pkg-LightBoxContent .pkg-KeyVisual h2 {
	margin-bottom: 15px;
	font-size: 214%; /* 30px */
	line-height: 1.2;
}
.pkg-LightBoxContent .pkg-KeyVisual h3 {
	margin-bottom: 7px;
	font-size: 129%; /* 18px */
	line-height: 1.33;	
}
.pkg-LightBoxContent .pkg-KeyVisual h4 {
	margin-bottom: 7px;
	font-size: 108%; /* 15px */
	line-height: 1.53;	
}
.pkg-LightBoxContent .pkg-KeyVisual h5 {
	margin-bottom: 8px;
}

/* SubTitle
---------- */
.pkg-LightBoxContent .pkg-HlSubTitle {
	margin-bottom: 3px;
	color: #999;
	font-size: 143%; /* 20px */
	font-weight: bold;
	line-height: 1.3;
}

/* SubTitle (KeyVisual)
---------- */
.pkg-LightBoxContent .pkg-KeyVisual .pkg-H3SubTitle {
	margin-bottom: 3px;
	line-height: 1.3;
	font-size: 114%; /* 16px */
	font-weight: bold;
	color: #666;
}

/* SubText
---------- */
.pkg-LightBoxContent .pkg-HlSubText {
	margin: 7px 0 5px;
	color: #000;
	font-size: 122%; /* 17px */
	line-height: 1.3;
}

/* LeadText
---------- */
.pkg-LightBoxContent .pkg-HlLeadText {
	margin-top: -15px;
	color: #000;
	font-size: 122%; /* 17px */
	line-height: 1.3;
}


/* X-02. Section 
---------- ---------- */
.pkg-LightBoxContent .pkg-Section:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent .pkg-Section {
	padding-bottom:23px;
	overflow: hidden;
}
.pkg-LightBoxContent .pkg-Section > .pkg-Section:last-child {
	padding-bottom:0;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLine {
	padding-top: 34px;
	border-top: 4px solid #00CDFF;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLineGray {
	margin-top:20px;
	padding-top: 34px;
	border-top: 4px solid #d2d6d9;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLineLightGray {
	padding-top: 20px;
	border-top: 3px solid #edf1f5;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLineLightGrayWide {
	padding-top: 34px;
	border-top: 3px solid #edf1f5;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLineGrayThin {
	padding-top: 20px;
	border-top: 1px solid #ccc;
}
.pkg-LightBoxContent .pkg-Section--TopSolidLineGrayThinWide {
	padding-top: 34px;
	border-top: 1px solid #ccc;
}


/* X-03. Grid 
---------- ---------- */
.pkg-LightBoxContent .pkg-Grid:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent .pkg-Grid {
	margin: 0 -30px 0 0;
	letter-spacing: -.40em;
}
.pkg-LightBoxContent .pkg-Grid__Col {
	display: inline-block;
	margin: 0 30px 17px 0;
	letter-spacing: normal;
	vertical-align: top;
}
.pkg-LightBoxContent .pkg-Grid.pkg-Gird--WideMargin .pkg-Grid__Col {
	margin-bottom: 30px;
}
.pkg-LightBoxContent .pkg-Grid__Col p:last-child,
.pkg-LightBoxContent .pkg-Grid__Col dl:last-child,
.pkg-LightBoxContent .pkg-Grid__Col dl:last-child dd:last-child,
.pkg-LightBoxContent .pkg-Grid__Col ul:last-child,
.pkg-LightBoxContent .pkg-Grid__Col ul:last-child li:last-child,
.pkg-LightBoxContent .pkg-Grid__Col .pkg-Block--ImgAndTxt .pkg-Block__Img p:last-child {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-Block--GridLine .pkg-Grid__Col p:last-child,
.pkg-LightBoxContent .pkg-Block--GridLine .pkg-Grid__Col dl:last-child,
.pkg-LightBoxContent .pkg-Block--GridLine .pkg-Grid__Col dl:last-child dd:last-child,
.pkg-LightBoxContent .pkg-Block--GridLine .pkg-Grid__Col ul:last-child,
.pkg-LightBoxContent .pkg-Block--GridLine .pkg-Grid__Col ul:last-child li:last-child,
.pkg-LightBoxContent .pkg-Block--GridLineBold .pkg-Grid__Col p:last-child,
.pkg-LightBoxContent .pkg-Block--GridLineBold .pkg-Grid__Col dl:last-child,
.pkg-LightBoxContent .pkg-Block--GridLineBold .pkg-Grid__Col dl:last-child dd:last-child,
.pkg-LightBoxContent .pkg-Block--GridLineBold .pkg-Grid__Col ul:last-child,
.pkg-LightBoxContent .pkg-Block--GridLineBold .pkg-Grid__Col ul:last-child li:last-child {
	margin-bottom: 17px;
}
.pkg-LightBoxContent .pkg-Flex .pkg-Grid__Col {
	display: block;
	float: left;
}
.pkg-LightBoxContent .pkg-Grid__FullCol {
	display: inline-block;
	margin: 0 0 13px 0;
	letter-spacing: normal;
	vertical-align: top;
}
.pkg-LightBoxContent .pkg-Grid__Col--SolidLine {
	padding-top: 20px;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
.pkg-LightBoxContent li.pkg-Grid__Col--SolidLine {
	margin: -1px 30px 0 0;
	padding-bottom: 17px;
}
.pkg-LightBoxContent li.pkg-Grid__Col--SolidLine:last-child {
	margin-bottom: 17px;
}
.pkg-LightBoxContent .pkg-Grid__Col--SolidLineBold {
	padding-top: 15px;
	border-top: 3px solid #f0f4f7;
	border-bottom: 3px solid #f0f4f7;
}
.pkg-LightBoxContent .pkg-Grid__Col--TopSolidLine {
	padding-top: 20px;
	border-top: 1px solid #ccc;
}
.pkg-LightBoxContent .pkg-Grid__Col--TopSolidLineBold {
	padding-top: 20px;
	border-top: 3px solid #f0f4f7;
}
.pkg-LightBoxContent .pkg-Grid__Col--BtmSolidLine {
	padding-bottom: 20px;
	border-bottom: 1px solid #ccc;
}
.pkg-LightBoxContent .pkg-Grid__Col--BtmSolidLineBold {
	padding-bottom: 20px;
	border-bottom: 3px solid #f0f4f7;
}


/* Grid (ContentsArea_Single)
---------- */
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol2 .pkg-Grid__Col--Size1 {
	width: 465px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size1 {
	width: 300px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size2 {
	width: 630px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol4 .pkg-Grid__Col--Size1 {
	width: 217px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol4 .pkg-Grid__Col--Size2 {
	width: 465px;
}

/* Grid__FullCol */
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol2 .pkg-Grid__FullCol.pkg-Grid__Col--Size1 {
	width: 480px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol3 .pkg-Grid__FullCol.pkg-Grid__Col--Size1 {
	width: 320px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Grid--TypeCol6 .pkg-Grid__FullCol.pkg-Grid__Col--Size1 {
	width: 160px;
}

/* Grid (ContentsArea_Single / Box) 
---------- */
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Box .pkg-Grid--TypeCol2 .pkg-Grid__Col--Size1 {
	width: 445px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Box .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size1 {
	width: 286px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .pkg-Box .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size2 {
	width: 604px;
}


/* X-04. GridColumnCount
---------- ---------- */
.pkg-LightBoxContent .pkg-GridColumnCount.pkg-GridColumnCount--TypeCol2 {
	-moz-column-count: 2;
	-webkit-column-count: 2;
	column-count: 2;
	-moz-column-gap: 30px;
	-webkit-column-gap: 30px;
	column-gap: 30px;
}
.pkg-LightBoxContent .pkg-GridColumnCount.pkg-GridColumnCount--TypeCol3 {
	-moz-column-count: 3;
	-webkit-column-count: 3;
	column-count: 3;
	-moz-column-gap: 30px;
	-webkit-column-gap: 30px;
	column-gap: 30px;
}


/* X-05. Block 
---------- ---------- */
.pkg-LightBoxContent .pkg-Block:after {
	content: "";
	display: block;
	clear: both;
}

/* Block--ImgAndTxt */
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img {
	display: inline;
}
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img--Left {
	float: left;
	margin-right: 30px;
}
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img--Right {
	float: right;
	margin-left: 30px;
}
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img .pkg-Img {
	margin-top: 0 !important;
	margin-bottom:15px;
}
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Img .pkg-ImgCaption {
	margin:-10px 0 20px;
} 
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Content {
	overflow: hidden;
}
.pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Content--Wrap {
	overflow: visible;
}

/* Block--Position */
.pkg-LightBoxContent .pkg-Block--Position {
	position: relative;
}
.pkg-LightBoxContent .pkg-Block--Position img.pkg-BgImg {
	position: relative;
}
.pkg-LightBoxContent .pkg-Block--Position .pkg-Block__Text {
	position: absolute;
	color: #000;
}

/* Block--Pager */
.pkg-LightBoxContent .Block--Pager {
	margin:40px 0 17px ;
	letter-spacing: -.40em;
}
.pkg-LightBoxContent .Block--Pager ul {
	text-align: center;
	overflow: hidden;
}
.pkg-LightBoxContent .Block--Pager li {
	display: inline-block;
	margin-left: -1px;
	font-weight: bold;
	letter-spacing: normal;
}
.pkg-LightBoxContent .Block--Pager li a {
	position: relative;
    display: block;
	padding: 6px 20px 5px;
	color: #0099cc;
	border: 1px solid #d2d6d9;
}
.pkg-LightBoxContent .Block--Pager li.is-Current a {
	color: #FFF;
	background: #00C6F7;
}
.pkg-LightBoxContent .Block--Pager li.is-Current a:hover {
	text-decoration: none;
}
.pkg-LightBoxContent .Block--Pager li.Pager__Prev {
	text-align: right;
}
.pkg-LightBoxContent .Block--Pager li.Pager__Next {
	text-align: left;
}
.pkg-LightBoxContent .Block--Pager li.Pager__Prev a,
.pkg-LightBoxContent .Block--Pager li.Pager__Next a {
	border:none;
}
.pkg-LightBoxContent .Block--Pager li.Pager__Next a i {
	margin-left: 4px;
}
/* Pager4 */
.pkg-LightBoxContent .ContentsArea_Double .Block--Pager.Pager4 li.Pager__Prev,
.pkg-LightBoxContent .ContentsArea_Double .Block--Pager.Pager4 li.Pager__Next {
	width: 250px;
}
.pkg-LightBoxContent .pkg-ContentsArea_Single .Block--Pager.Pager4 li.Pager__Prev,
.pkg-LightBoxContent .pkg-ContentsArea_Single .Block--Pager.Pager4 li.Pager__Next {
	width: 379px;
}

/* Block--Summary */
.pkg-LightBoxContent .pkg-Block--Summary .pkg-Box--ColorBox .pkg-Box__Body {
	min-height: 148px;
	padding: 25px 20px;
}
.pkg-LightBoxContent .pkg-Block--Summary .pkg-Box--ColorBox .pkg-Box__Title,
.Block--Summary .Box--ColorBox .Box__Text {
	color: #000;
}
.pkg-LightBoxContent .pkg-Block--Summary .pkg-Box--ColorBox .pkg-Box__Text {
	font-size: 115%;
}


/* X-06. Box 
---------- ---------- */
.pkg-LightBoxContent .pkg-Box {
	margin-bottom: 17px;
}
.pkg-LightBoxContent .pkg-Grid__Col .pkg-Box {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-Box__Title {
	margin: 0 0 11px 0;
	font-weight: bold;
	font-size: 129%; /* 18px */
	line-height: 1.55;
}
.pkg-LightBoxContent .pkg-Box__Title a,
.pkg-LightBoxContent .pkg-Box__Title a:link {
	color: #000;
}
.pkg-LightBoxContent .pkg-Box__Title a:visited {
	color: #464f9a;
}
.pkg-LightBoxContent .pkg-Box__Title a:hover,
.pkg-LightBoxContent .pkg-Box__Title a:active,
.pkg-LightBoxContent .pkg-Box__Title a:focus {
	color: #0099cc;
	text-decoration: none;
}
.pkg-LightBoxContent .pkg-Box .pkg-Box__Title {
	margin-bottom: 6px;
	color:#000;
	text-transform: uppercase;
}
.pkg-LightBoxContent .pkg-Box__Body:after {
	content: "";
	display: block;
	clear: both;
}

.pkg-LightBoxContent .pkg-Box > dl,
.pkg-LightBoxContent .pkg-Box dd.Box__Body,
.pkg-LightBoxContent .pkg-Box__Body p:last-child,
.pkg-LightBoxContent .pkg-Box__Body dl:last-child,
.pkg-LightBoxContent .pkg-Box__Body dl:last-child dd:last-child,
.pkg-LightBoxContent .pkg-Box__Body ul:last-child,
.pkg-LightBoxContent .pkg-Box__Body ol:last-child,
.pkg-LightBoxContent .pkg-Box__Body ul:last-child li:last-child,
.pkg-LightBoxContent .pkg-Box__Body ol:last-child li:last-child,
.pkg-LightBoxContent .pkg-Box__Body .pkg-Grid:last-child {
	margin-bottom: 0;
}

.pkg-LightBoxContent .pkg-Box__Body.pkg-gen-PaddingNone .pkg-Block__Img p {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-Box__Body.pkg-gen-PaddingNone .pkg-Block__Img--Left {
	margin-right: 0;
}
.pkg-LightBoxContent .pkg-Box__Body.pkg-gen-PaddingNone .pkg-Block__Img--Right {
	margin-left: 0;
}
.pkg-LightBoxContent .pkg-Box__Body.pkg-gen-PaddingNone .pkg-Block__Content {
	padding: 16px 20px;
}
.pkg-LightBoxContent .pkg-Box--ColorBlackBox .pkg-Box__Body.pkg-gen-PaddingNone .pkg-Block__Content {
	padding: 22px 25px;
}

/* Box--ColorBox */
.pkg-LightBoxContent .pkg-Box--ColorBox .pkg-Box__Body {
	padding: 16px 20px;
	background: #edf2f5;
}
.pkg-LightBoxContent .pkg-gen-BgBlack .pkg-Box--ColorBox .pkg-Box__Body {
	background: #19191a;
}

/* Box--ColorBlackBox */
.pkg-LightBoxContent .pkg-Box--ColorBlackBox .pkg-Box__Body .pkg-Box__Title {
	color: #FFF;
}
.pkg-LightBoxContent .pkg-Box--ColorBlackBox .pkg-Box__Body {
	padding: 16px 20px;
	color: #FFF;
	background: #2C3033;
}
.pkg-LightBoxContent .pkg-Box--ColorBlackBox .pkg-Box__Body a,
.pkg-LightBoxContent .pkg-Box--ColorBlackBox .pkg-Box__Body a:link {
	color: #FFF;
}

/* Box--BorderBox */
.pkg-LightBoxContent .pkg-Box--BorderBox .pkg-Box__Body {
	padding: 15px 19px;
	border: 1px solid #d2d6d9;
	background: #FFF;
}
.pkg-LightBoxContent .pkg-gen-BgBlack .pkg-Box--BorderBox .pkg-Box__Body {
	border: 1px solid #19191a;
	background: #000;
}
.pkg-LightBoxContent .pkg-TabSet .pkg-Box--BorderBox .pkg-Box__Body {
	border-top: none;
}

/* Box--BorderBlueBox */
.pkg-LightBoxContent .pkg-Box--BorderBlueBox .pkg-Box__Title{
	color: #014260;
}
.pkg-LightBoxContent .pkg-Box--BorderBlueBox .pkg-Box__Body {
	padding: 15px 19px;
	color: #014260;
	border: 1px solid #a6e9ff;
	background: #FFF;
}

/* Box--TopLineColorBox */
.pkg-LightBoxContent .pkg-Box--TopLineColorBox .pkg-Box__Body {
	padding: 16px 20px;
	border-top: 4px solid #000;
	background: #edf2f5;
}

/* Box--ColorGrayBox */
.pkg-LightBoxContent .pkg-Box--ColorGrayBox .pkg-Box__Title.pkg-Box__TitleBg {
	margin-bottom: 0;
	padding: 6px 15px;
	color: #FFF;
	background: #697881;
}
.pkg-LightBoxContent .pkg-Box--ColorGrayBox .pkg-Box__Body {
	padding: 16px 15px;
	color: #000;
	background: #c5d0d7;
}

/* Box--ColorBlueBox */
.pkg-LightBoxContent .pkg-Box--ColorBlueBox .pkg-Box__Title.pkg-Box__TitleBg {
	margin-bottom: 0;
	padding: 6px 15px;
	color: #FFF;
	background: #01649a;
}
.pkg-LightBoxContent .pkg-Box--ColorBlueBox .pkg-Box__Body {
	padding: 16px 15px;
	color: #000;
	background: #54b2e6;
}

/* Box--Blank */
.pkg-LightBoxContent .pkg-Box--Blank .pkg-Box__Body {
	padding: 16px 20px;
}

/* Box--CategoryNav */
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav li.pkg-is-Current {
	background: #00c6f7;
}
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav li a {
	display: block;
	padding: 6px 0 6px 23px;
	text-indent: -14px;
}
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav li.pkg-is-Current a {
	padding-right: 6px;
	color: #FFF;
	font-weight: bold;
}
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav li i {
	display: inline-block;
	width: 7px;
	height: 10px;
	margin-right: 7px;
	background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_sprite.png");
	background-repeat: no-repeat;
	background-position: -20px -20px;
	vertical-align: baseline;
}
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav li.pkg-is-Current i {
	background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_sprite.png");
	background-position: -20px -60px;
}
.pkg-LightBoxContent .pkg-Box--CategoryNav .pkg-CategoryNav .pkg-Grid__Col {
	margin-bottom: 0;
}


/* X-07. Text
---------- ---------- */
.pkg-LightBoxContent strong {
	font-weight:bold;
}
.pkg-LightBoxContent sup {
	font-size: 72%;
	font-style: normal;
	vertical-align: super;
}
.pkg-LightBoxContent sub {
	font-size: 72%;
	font-style: normal;
	vertical-align: sub;
}
.pkg-LightBoxContent blockquote:before {
	content: "";
	display: block;
	padding-top: 30px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_blockquote_before.png") no-repeat top left;
}
.pkg-LightBoxContent blockquote:after {
	content: "";
	display: block;
	padding-bottom: 30px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_blockquote_after.png") no-repeat bottom right;
}
.pkg-LightBoxContent blockquote p:last-child, 
.pkg-LightBoxContent blockquote dl:last-child, 
.pkg-LightBoxContent blockquote dl:last-child dd:last-child, 
.pkg-LightBoxContent blockquote ul:last-child, 
.pkg-LightBoxContent blockquote ul:last-child li:last-child {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-ImgCaption {
	margin: -10px 0 17px;
    color: #666;
    font-size: 86%; /* 12px */
    line-height: 1.3;
}
.pkg-LightBoxContent .pkg-TableCaption {
	margin-top: -14px;
}



/* X-08. Definition List
---------- ---------- */
.pkg-LightBoxContent dl dt.pkg-Title {
	margin-bottom: 5px;
	font-weight: bold;
}

/* DlType--DlTable */
.pkg-LightBoxContent .pkg-DlType--DlTable {
	border-top: 1px solid #bababa;
}
.pkg-LightBoxContent .pkg-DlType--DlTable > dd p:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd ul:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd ul:last-child li:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd ol:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd ol:last-child li:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd dl:last-child,
.pkg-LightBoxContent .pkg-DlType--DlTable > dd dl:last-child dd:last-child {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-DlType--DlTable > dt {
	clear: both;
	float: left;
	width: 160px;
	padding: 13px 15px 0 0;
	margin-top: -1px;
	color: #999;
	line-height: 1;
	font-size: 186%; /* 26px */
	font-weight: bold;
 	border-top: 1px solid #bababa;
}
.pkg-LightBoxContent .pkg-DlType--DlTable > dd {
	margin: 0 0 0 175px;
	padding: 15px 15px 15px 0px;
	border-bottom: 1px solid #bababa;
}
.pkg-LightBoxContent .pkg-DlType--DlTable > dd:last-child {
	margin: 0;
	padding: 15px 15px 15px 175px;
}

/* DlType--DtBgColor */
.pkg-LightBoxContent .pkg-DlType--DtBgColor > dt {
	padding: 15px;
	font-weight: bold;
	background: #f0f4f7;
}
.pkg-LightBoxContent .pkg-Flex .pkg-DlType--DtBgColor > dt {
	padding: 0;
}
.pkg-LightBoxContent .pkg-Flex .pkg-DlType--DtBgColor > dt .pkg-Flex__Toggle {
	padding: 15px 15px 15px 35px;
}
.pkg-LightBoxContent .pkg-DlType--DtBgColor > dd {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-List .pkg-DlType--DtBgColor {
	margin-bottom: 0;
}

/* DlType--Inline */
.pkg-LightBoxContent .pkg-DlType--Inline:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent .pkg-DlType--Inline > dt {
	clear: left;
	float: left;
	margin-right: 0.5em;
}
.pkg-LightBoxContent .pkg-DlType--Inline > dt.pkg-Title {
	margin-bottom: 0;
}

/* DlType--TextOrdered1em */
.pkg-LightBoxContent .pkg-DlType--TextOrdered1em > dt > .TextMkr ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered1em > dd > .TextMkr {
	float: left;
	width: 1em;
}
.pkg-LightBoxContent .pkg-DlType--TextOrdered1em > dt > span ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered1em > dd > .pkg-List__Body {
	display: block;
	overflow: hidden;
}

/* DlType--TextOrdered2em */
.pkg-LightBoxContent .pkg-DlType--TextOrdered2em > dt > .TextMkr ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered2em > dd > .TextMkr {
	float: left;
	width: 2em;
}
.pkg-LightBoxContent .pkg-DlType--TextOrdered2em > dt > span ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered2em > dd > .pkg-List__Body {
	display: block;
	overflow: hidden;
}

/* DlType--TextOrdered3em */
.pkg-LightBoxContent .pkg-DlType--TextOrdered3em > dt > .TextMkr ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered3em > dd > .TextMkr {
	float: left;
	width: 3em;
}
.pkg-LightBoxContent .pkg-DlType--TextOrdered3em > dt > span ,
.pkg-LightBoxContent .pkg-DlType--TextOrdered3em > dd > .pkg-List__Body {
	display: block;
	overflow: hidden;
}

/* X-09. List
---------- ---------- */
.pkg-LightBoxContent .pkg-List {
	margin-bottom: 15px;
}
.pkg-LightBoxContent .pkg-List .pkg-List {
	margin-bottom: 0;
}
.pkg-LightBoxContent .pkg-List li {
	margin-bottom: 5px;
}

.pkg-LightBoxContent .pkg-List li li {
	margin-top: 5px;
}
.pkg-LightBoxContent .pkg-List--Horizontal li {
	display: inline-block;
}
/* List--Line */
.pkg-LightBoxContent .pkg-List--Line {
	border-top: 1px solid #bababa;
}
.pkg-LightBoxContent .pkg-List--Line > li {
	margin-bottom: 0;
	border-bottom: 1px solid #bababa;
}

/* List--Link */
.pkg-LightBoxContent .pkg-List--Link > li {
	padding-left: 14px;
	text-indent: -14px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Link {
	margin-right: -35px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Link li {
	margin-right: 35px;
}

/* List--Dot */
.pkg-LightBoxContent .pkg-List--Dot > li {
    padding-left: 14px;
    text-indent: -14px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Dot {
	margin-right: -35px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Dot li {
	margin-right: 35px;
}

/* List--Hyphen */
.pkg-LightBoxContent .pkg-List--Hyphen > li {
    padding-left: 12px;
    text-indent: -12px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Hyphen {
	margin-right: -35px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Hyphen li {
	margin-right: 35px;
}

/* List--Anchor */
.pkg-LightBoxContent .Section + .pkg-List--Anchor {
	margin-top: -22px;
}
.pkg-LightBoxContent .pkg-List--Anchor > li {
    padding-left: 13px;
    text-indent: -13px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Anchor {
	margin-right: -25px;
}
.pkg-LightBoxContent .pkg-Box .pkg-List--Horizontal.pkg-List--Anchor {
	margin-bottom: -5px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Anchor li {
	margin-right: 25px;
}

/* List--Pict */
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Pict {
	margin-right: -15px;
}
.pkg-LightBoxContent .pkg-List--Pict > li {
	margin: 0 0 12px 0;
}
.pkg-LightBoxContent .pkg-List--Pict > li li {
	margin: 0 0 5px 0;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Pict li {
	margin: 0 15px 12px 0;
}
.pkg-LightBoxContent .pkg-List--Pict span {
	margin-left: 7px;
	padding-top:3px;
	vertical-align: middle;
}
.pkg-LightBoxContent .pkg-List--Pict ul {
	display: inline-block;
	margin-left: 7px;
	vertical-align: top;
}
.pkg-LightBoxContent .pkg-List--Pict a:hover,
.pkg-LightBoxContent .pkg-List--Pict a:focus {
	text-decoration: none;
}
.pkg-LightBoxContent .pkg-List--Pict a:hover span,
.pkg-LightBoxContent .pkg-List--Pict a:focus span {
	text-decoration: underline;
}

/* List--Partition */
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Partition li {
	margin-right: 5px;
	padding-left: 15px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_partition.png") no-repeat 0 50%;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--Partition li:first-child {
	padding-left: 0;
	background: none;
}

/* List--TextButton */
.pkg-LightBoxContent .pkg-List--TextButton li {
	margin-bottom: 13px;
}
.pkg-LightBoxContent .pkg-List--TextButton a {
	display: inline-block;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--TextButton {
	margin-right: -10px;
}
.pkg-LightBoxContent .pkg-List--Horizontal.pkg-List--TextButton li {
	margin-right: 10px;
}

/* List--Text */
.pkg-LightBoxContent .pkg-List--Text > li > i,
.pkg-LightBoxContent .pkg-List--Text > li small > i {
	float: left;
	display: inline;
	margin-right:3px;
}
.pkg-LightBoxContent .pkg-List--Text > li > div,
.pkg-LightBoxContent .pkg-List--Text > li small > div  {
	overflow: hidden;
}

/* List--Text1em */
.pkg-LightBoxContent .pkg-List--Text1em > li {
	padding-left: 1em;
	text-indent: -1.3em;
}
.pkg-LightBoxContent .pkg-List--Text1em > li > .TextMkr,
.pkg-LightBoxContent .pkg-List--Text1em > li > a > .TextMkr {
	display: inline-block;
	width: 1em;
	text-align: right;
}
.pkg-LightBoxContent .pkg-List--Text1em.gen-TextNotes > li {
	text-indent: -0.8em;
}

/* List--Text2em */
.pkg-LightBoxContent .pkg-List--Text2em > li {
	padding-left: 2em;
	text-indent: -2.3em;
}
.pkg-LightBoxContent .pkg-List--Text2em > li > .TextMkr,
.pkg-LightBoxContent .pkg-List--Text2em > li > a > .TextMkr {
	display: inline-block;
	width: 2em;
	text-align: right;
}
.pkg-LightBoxContent .pkg-List--Text2em.gen-TextNotes > li {
	text-indent: -1.5em;
}

/* List--Text3em */
.pkg-List--Text3em > li {
	padding-left: 3.5em;
	text-indent: -3.2em;
}
.pkg-List--Text3em > li > .TextMkr,
.pkg-List--Text3em > li > a > .TextMkr {
	display: inline-block;
	width: 3em;
	text-align: right;
}

/* List--Text4em */
.pkg-List--Text4em > li {
	padding-left: 4em;
	text-indent: -4em;
}
.pkg-List--Text4em > li > .TextMkr,
.pkg-List--Text4em > li > a > .TextMkr {
	display: inline-block;
	width: 4em;
	text-align: right;
}

/* List--TextOrdered */
/* 1em */
.pkg-LightBoxContent .pkg-List--TextOrdered1em i.TextMkr {
	float: left;
	width: 1em;
}
.pkg-LightBoxContent .pkg-List--TextOrdered1em .pkg-List__Body {
	overflow: hidden;
}
/* 2em */
.pkg-LightBoxContent .pkg-List--TextOrdered2em i.TextMkr {
	float: left;
	width: 2em;
}
.pkg-LightBoxContent .pkg-List--TextOrdered2em .pkg-List__Body {
	overflow: hidden;
}
/* 3em */
.pkg-LightBoxContent .pkg-List--TextOrdered3em i.TextMkr {
	float: left;
	width: 3em;
}
.pkg-LightBoxContent .pkg-List--TextOrdered3em .pkg-List__Body {
	overflow: hidden;
}



/* X-10. Mkr
---------- ---------- */
.pkg-Mkr {
	display: inline-block;
	background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_sprite.png") !important;
	background-repeat: no-repeat;
	vertical-align: baseline;
}
.pkg-Mkr--Medium {
	width: 10px;
	height: 10px;
}
.pkg-Mkr--Large {
	width: 14px;
	height: 14px;
}
.pkg-Mkr--xLarge {
	width: 20px;
	height: 16px;
}
.pkg-TextMkr {
	font-style: normal;
}

/* ArwBlue
---------- */
a .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
a:link .pkg-Mkr--Medium.pkg-Mkr--ArwBlue {
	margin-right: 4px;
	background-position: -20px -20px;
}
h2 a .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
h2 a:link .pkg-Mkr--Medium.pkg-Mkr--ArwBlue {
	position:relative;
	top: -3px;
	margin-right: 4px;
	background-position: -20px -20px;
}
a:hover .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
a:active .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
a:focus .pkg-Mkr--Medium.pkg-Mkr--ArwBlue {
	background-position: -20px -20px;
}
a:visited .pkg-Mkr--Medium.pkg-Mkr--ArwBlue {
	background-position: -20px -40px;
}

/* ArwBlueLt
---------- */
.pkg-Mkr--Medium.pkg-Mkr--ArwBlueLt {
	margin-right: 4px;
	background-position: -40px -20px;
}
a:hover .pkg-Mkr--Medium.pkg-Mkr--ArwBlueLt,
a:active .pkg-Mkr--Medium.pkg-Mkr--ArwBlueLt,
a:focus .pkg-Mkr--Medium.pkg-Mkr--ArwBlueLt {
	background-position: -40px -20px;
}
a:visited .pkg-Mkr--Medium.pkg-Mkr--ArwBlueLt {
	background-position: -40px -40px;
}

/* ArwBlueThin
---------- */
.pkg-Mkr--Medium.pkg-Mkr--ArwBlueThin {
	margin-right: 4px;
	background-position: -60px 0;
}
a:hover .pkg-Mkr--Medium.pkg-Mkr--ArwBlueThin,
a:focus .pkg-Mkr--Medium.pkg-Mkr--ArwBlueThin {
	background-position: -60px 0;
}
a:visited .pkg-Mkr--Medium.pkg-Mkr--ArwBlueThin {
	background-position: -60px 0;
}

/* ArwLightBlue
---------- */
.pkg-Mkr--Medium.pkg-Mkr--ArwLightBlue {
	margin-right: 4px !important;
	background-position: -20px 0 !important;
}
.pkg-Mkr--Large.pkg-Mkr--ArwLightBlue {
	background-position: -40px 0;
}

/* Dot
---------- */
.pkg-Mkr--Dot {
	margin-right: 4px;
 	background-position: 0 0;
}
.pkg-Mkr--DotWhite {
	margin-right: 4px;
 	background-position: 0 -20px;
}

/* Hyphen
---------- */
.pkg-Mkr--Hyphen {
	margin-right: 2px;
	background-position: -100px -20px;
}

/* Anchor
---------- */
.pkg-Mkr--Anchor {
	margin-right: 3px;
	background-position: -120px 0;
}



/* X-11. Button
---------- ---------- */
/* TextButton
--------- */
.pkg-TextButton {
	display: inline-block  !important;
	color: #FFF !important;
	font-weight: bold !important;
	background-color: #000;
}
.pkg-TextButton .pkg-Icon {
	margin-right: 0;
}
.pkg-TextButton .pkg-Mkr--Medium.pkg-Mkr--ArwLightBlue,
.pkg-TextButtonBlue .pkg-Mkr--Medium.pkg-Mkr--ArwLightBlue {
	margin-right: 0 !important;
}
.pkg-TextButton:link,
.pkg-TextButton:visited {
	color: #FFF;
	text-decoration: none;
}
.pkg-TextButton:hover,
.pkg-TextButton:active,
.pkg-TextButton:focus {
	color: #FFF;
	text-decoration: none !important;
	background-color: #596066;
}

/* TextButtonBlue
--------- */
.pkg-TextButtonBlue {
	display: inline-block;
	color: #FFF;
	font-weight: bold;
	background-color: #0080ab;
}
.pkg-TextButtonBlue .Icon {
	margin-right: 0;
}
.pkg-TextButtonBlue:link,
.pkg-TextButtonBlue:visited {
	color: #FFF;
	text-decoration: none;
}
.pkg-TextButtonBlue:hover,
.pkg-TextButtonBlue:active,
.pkg-TextButtonBlue:focus {
	color: #FFF;
	text-decoration: none;
	background-color: #596066;
}

/* TextButton--Medium */
.pkg-TextButton--Medium {
	padding: 2px 10px;
	font-size: 93%; /* 13px */
} 
.pkg-TextButton--Medium .pkg-Mkr--Medium {
    width: 7px;
    height: 10px;
}
.pkg-TextButton--Medium .pkg-Mkr {
    margin-left: 5px !important;
}
a.pkg-TextButton--Medium:hover .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
a.pkg-TextButton--Medium:focus .pkg-Mkr--Medium.pkg-Mkr--ArwBlue,
a.pkg-TextButton--Medium:visited .pkg-Mkr--Medium.pkg-Mkr--ArwBlue {
	background-position: -20px -20px !important;
}

/* TextButton--Large */
.pkg-TextButton--Large {
	padding: 5px 18px;
	font-size: 115%; /* 16px */
} 
.pkg-TextButton--Large .Mkr--Large {
    width: 8px;
    height: 13px;
}
.pkg-TextButton--Large .Mkr {
    margin-left: 10px;
}
a.pkg-TextButton--Large:hover .pkg-Mkr--Large.pkg-Mkr--ArwLightBlue,
a.pkg-TextButton--Large:focus .pkg-Mkr--Large.pkg-Mkr--ArwLightBlue,
a.pkg-TextButton--Large:visited .pkg-Mkr--Large.pkg-Mkr--ArwLightBlue {
	background-position: -40px 0;
}

/* TextButton / input[type="buttom"]
---------- */
.pkg-TextButton__InputButton {
	position: relative;
	padding: inherit;
	color: #fff;
	font-weight: inherit;
	font-family: inherit;
	font-size: inherit;
	vertical-align: baseline;
	border: none;
	background-color: transparent;
	z-index: 2;
}
.pkg-TextButton__InputButton + .pkg-Mkr {
	margin: 0;
	position: relative;
	z-index: 1;
}

/* TextButton--Medium */
.pkg-TextButton--Medium > .pkg-TextButton__InputButton {
	margin: -2px -10px;
	padding-right: 22px;
}
.pkg-TextButton--Medium > .pkg-TextButton__InputButton + .pkg-Mkr {
	margin-right: -7px;
	left: -7px;
}

/* TextButton--Large */
.pkg-TextButton--Large > .pkg-TextButton__InputButton {
	margin: -5px -18px;
	padding-right: 36px;
}
.TextButton--Large > .pkg-TextButton__InputButton + .pkg-Mkr {
	margin-right: -8px;
	left: -8px;
}

/* :focus */
.pkg-TextButton__InputButton:focus {
	background-color: #666;
}
.pkg-TextButton__InputButton:focus + .pkg-Mkr {
	z-index: 2;
}
/* :active */
.pkg-TextButton__InputButton:active {
	background-color: #aaa;
}
.pkg-TextButton__InputButton:active + .pkg-Mkr {
	z-index: 2;
}
/* disabled */
.pkg-TextButton__InputButton[disabled] {
	color: #999;
	background-color: #ddd !important;
}



/* X-13. pkg-Table
---------- ---------- */
.pkg-LightBoxContent  .pkg-Table {
	width: 100%;
	margin-bottom: 17px;
	border-width: 1px 0;
	border-style: solid;
	border-color: #c6c9cc;
	border-collapse: collapse;
}
.pkg-LightBoxContent  .pkg-Table col {
	border-left: solid 1px #c6c9cc;
}
.pkg-LightBoxContent  .pkg-Table col:first-child {
	border-left-width: 0;
}
.pkg-LightBoxContent  .pkg-Table tr th ,
.pkg-LightBoxContent  .pkg-Table tr td {
	padding: 10px 15px 11px;
	border-top: solid 1px #c6c9cc;
	vertical-align: top;
}
.pkg-LightBoxContent  .pkg-Table th {
	color: #000;
	text-align: left;
	font-weight: bold;
	background-color: #f0f4f7;
}

table td p:last-child,
table td dl:last-child,
table td dl:last-child dd:last-child,
table td ul:last-child,
table td ol:last-child,
table td ul:last-child li:last-child,
table td ol:last-child li:last-child {
	margin-bottom: 0;
}

/*.pkg-Table--Bordere.pkg-Table
---------- */
.pkg-LightBoxContent  .pkg-Table--Bordere.pkg-Table {
	border-width: 1px;
}

/*.pkg-Table--ColorBlu.pkg-Table
---------- */
.pkg-LightBoxContent  .pkg-Table--ColorBlu.pkg-Table {
	border-top-width: 0;
}
.pkg-LightBoxContent  .pkg-Table--ColorBlu.pkg-Table thead th {
	border-color: #fff;
	border-left-width: 1px;
	border-left-style: solid;
	color: #fff;
	background-color: #288fc8;
}
.pkg-LightBoxContent  .pkg-Table--ColorBlu.pkg-Table thead + tbody tr:first-child th,
.pkg-LightBoxContent  .pkg-Table--ColorBlu.pkg-Table thead + tbody tr:first-child td {
	border-top-width: 0;
}
.pkg-LightBoxContent  .pkg-Table--ColorBlu.pkg-Table thead th:first-child {
	border-left-width: 0;
	border-right: solid 1px #fff;
}

/*.pkg-Table--Gl (for Global Locations)
---------- */
.pkg-LightBoxContent  .pkg-Table--Gl tr th {
	vertical-align: top;
}
.pkg-LightBoxContent  .pkg-Table--Gl .pkg-Url {
	display: block;
	font-weight: normal;
	font-size: 86%; /* 12px */
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td {
	padding-bottom: 20px;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl {
	margin-bottom: 20px;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl:last-child {
	margin-bottom: 0;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl dt:after {
	content: "";
	display: block;
	clear: both;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl dt {
	margin-bottom: 2px;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl dt span {
	float: left;
	padding:0 10px;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl dt .pkg-Office {
	margin-left: -10px;
	color: #000;
	font-weight: bold;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td > dl dt .pkg-Business {
	margin-left:-1px;
	color: #009900;
	font-weight: bold;
	text-transform: uppercase;
	border-right: 1px solid #bababa;
	border-left: 1px solid #bababa;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td dl dd {
	margin-bottom: 6px;
	line-height: 1.3;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td .pkg-Email {
	font-weight: bold;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td .pkg-Tel {
	font-weight: bold;
	color: #555;
}
.pkg-LightBoxContent  .pkg-Table--Gl tr td span:first-child img.pkg-Icon {
	margin-left: 0;
}



/* X-14. Image
---------- ---------- */
.pkg-LightBoxContent  .pkg-Img {
	margin-bottom: 13px;
	text-align: center;
}
.pkg-LightBoxContent  a.pkg-HoverImg {
	display :block;
	background: #FFF;
}
.pkg-LightBoxContent  a.pkg-HoverImg:hover > img {
	opacity: 0.8;
}
.pkg-LightBoxContent  img.pkg-Icon {
	margin:-2px 5px 0 !important;
	vertical-align: middle;
}


/* X-00. General Items
---------- ---------- */
.pkg-LightBoxContent  .clearfix:after {
	content: "";
	display: block;
	clear: both;
}

.pkg-LightBoxContent  .pkg-Reader {
	width: 0;
	height: 0;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.pkg-LightBoxContent  .gen-AlignCenter {text-align: center !important;}
.pkg-LightBoxContent  .gen-AlignRight {text-align: right !important;}
.pkg-LightBoxContent  .gen-AlignLeft {text-align: left !important;}

.pkg-LightBoxContent  .gen-MarginNone {margin: 0 !important;}
.pkg-LightBoxContent  .gen-MarginTopNone {margin-top: 0 !important;}
.pkg-LightBoxContent  .gen-MarginRightNone {margin-right: 0 !important;}
.pkg-LightBoxContent  .gen-MarginBottomNone {margin-bottom: 0 !important;}
.pkg-LightBoxContent  .gen-MarginLeftNone {margin-left: 0 !important;}

.pkg-LightBoxContent  .gen-PaddingNone {padding: 0 !important;}
.pkg-LightBoxContent  .gen-PaddingTopNone {padding-top: 0 !important;}
.pkg-LightBoxContent  .gen-PaddingRightNone {padding-right: 0 !important;}
.pkg-LightBoxContent  .gen-PaddingBottomNone {padding-bottom: 0 !important;}
.pkg-LightBoxContent  .gen-PaddingLeftNone {padding-left: 0 !important;}

.pkg-LightBoxContent  .gen-FloatNone {float: none !important;}
.pkg-LightBoxContent  .gen-FloatRight {float: right !important;}
.pkg-LightBoxContent  .gen-FloatLeft {float: left !important;}

.pkg-LightBoxContent  .gen-TopLine {
	padding-top: 15px !important;
	border-top: 1px solid #d2d6d9 !important;
}
.pkg-LightBoxContent  .gen-TopLineWhite {
	padding-top: 15px !important;
	border-top: 1px solid #FFF !important;
}
.pkg-LightBoxContent  .gen-TopLineBold {
	padding-top: 15px !important;
	border-top: 4px solid #d2d6d9!important;
}
.pkg-LightBoxContent  .gen-TopLineBoldWhite {
	padding-top: 15px !important;
	border-top: 4px solid #FFF!important;
}
.pkg-LightBoxContent  .gen-BtmLine {
	padding-bottom: 15px !important;
	border-bottom: 1px solid #d2d6d9;
}
.pkg-LightBoxContent  .gen-BtmLineBold {
	padding-bottom: 15px !important;
	border-bottom: 4px solid #d2d6d9 !important;
}

.pkg-LightBoxContent  .gen-BgBlack {
	color: #FFF;
	background-color: #000;
}
.pkg-LightBoxContent  .gen-BgBlack a, .gen-BgBlack a:link,
.pkg-LightBoxContent  .gen-BgBlack h1, .gen-BgBlack h2, .gen-BgBlack h3, .gen-BgBlack h4, .gen-BgBlack h5 {
	color: #FFF;
}
.pkg-LightBoxContent  .gen-BgWhite {
	background-color: #FFF;
}
.pkg-LightBoxContent  .gen-BgGray {
	background-color: #EDF2F5;
}
.pkg-LightBoxContent  .gen-BgBlue {
	background-color: #00C6F7;
}
.pkg-LightBoxContent  .gen-BgColorNone {
	background-color: transparent;
}
.pkg-LightBoxContent  .gen-BgNone {
	background: none;
}

.pkg-LightBoxContent  .gen-TextNormal {
	font-weight: normal !important;
	font-style: normal !important;
}
.pkg-LightBoxContent  .gen-TextBold {
	font-weight: bold !important;
}
.pkg-LightBoxContent  .gen-TextItalic {
	margin-right: 0.2em !important;
	font-style: italic !important;
}
.pkg-LightBoxContent  .gen-TextItalic sup,
.pkg-LightBoxContent  .gen-TextItalic sub {
	margin-left: 0.2em !important;
}
.pkg-LightBoxContent  .gen-TextUppercase {
	text-transform: uppercase !important;
}
.pkg-LightBoxContent  .gen-TextResetUppercase {
	text-transform: none !important;
}
.pkg-LightBoxContent  .gen-TextNotes {
	color: #666 !important;
	font-size: 86% !important; /* 12px */
}
.pkg-LightBoxContent  .gen-TextCaption {
	margin-top: 5px !important;
	color: #666 !important;
	font-size: 86% !important; /* 12px */
	line-height: 1.3 !important;
}

.pkg-LightBoxContent  .gen-TextColorGray {
	color: #666 !important;
}
.pkg-LightBoxContent  .gen-TextColorBlack {
	color: #000 !important;
}
.pkg-LightBoxContent  .gen-TextColorWhite {
	color: #FFF !important;
}
.pkg-LightBoxContent  .gen-TextColorBlue {
	color: #0099cc !important;
}
.pkg-LightBoxContent  .gen-TextColorGreen {
	color: #6a9f2c !important;
}
.pkg-LightBoxContent  .gen-TextColorRed {
	color: #D13232 !important;
}
.pkg-LightBoxContent  .gen-TextShadow {
	text-shadow: 0px 2px 2px rgb(100, 100, 100);
	text-shadow: 0px 2px 2px rgba(100, 100, 100, 1);
}
a.gen-TextLinkBlack,
a.gen-TextLinkBlack:link {
	color: #000 !important;
}
a.gen-TextLinkBlack:visited {
	color: #464f9a !important;
}
a.gen-TextLinkBlack:hover,
a.gen-TextLinkBlack:active,
a.gen-TextLinkBlack:focus {
	color: #0099cc !important;
	text-decoration: none !important;
}

.pkg-LightBoxContent  .gen-TextLarge1 { font-size: 108% !important;}
.pkg-LightBoxContent  .gen-TextLarge2 { font-size: 115% !important;}
.pkg-LightBoxContent  .gen-TextLarge3 { font-size: 122% !important;}
.pkg-LightBoxContent  .gen-TextLarge4 { font-size: 129% !important;}
.pkg-LightBoxContent  .gen-TextLarge5 { font-size: 136% !important;}

.pkg-LightBoxContent  .gen-TextSmall1 { font-size: 93% !important;}
.pkg-LightBoxContent  .gen-TextSmall2 { font-size: 86% !important;}
.pkg-LightBoxContent  .gen-TextSmall3 { font-size: 79% !important;}
.pkg-LightBoxContent  .gen-TextSmall4 { font-size: 72% !important;}
.pkg-LightBoxContent  .gen-TextSmall5 { font-size: 65% !important;}


/* XX-04 Tooltip
---------- ---------- */
/* pkg-Tooltip--TypeContent
---------- */
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeContent {
	margin: 0 0 17px;
	position: relative;
	padding: 17px 20px;
	background: #edf1f5;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Title {
	margin-bottom: 6px;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 129%;
	line-height: 1.55;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image {
	margin-right: -20px;
	margin-left: -20px;
	position: relative;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent a.pkg-Btn {
	display: block;
	width: 23px;
	height: 23px;
	overflow: hidden;
	background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/mkr_tooltip.png");
	background-repeat: no-repeat;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent a.pkg-Btn.pkg-Btn--Blue {
	background-position: 0 0;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent a.pkg-Btn.pkg-Btn--Green {
	background-position: -23px 0 ;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent a.pkg-Btn:hover.pkg-Btn--Blue  {
	background-position: 0 -23px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent a.pkg-Btn:hover.pkg-Btn--Green  {
	background-position: -23px -23px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_01 {
	position: absolute;
	top: 20px;
	left: 148px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_02 {
	position: absolute;
	top: 32px;
	left: 276px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_03 {
	position: absolute;
	top: 14px;
	left: 385px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_04 {
	position: absolute;
	top: 254px;
	left: 203px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_05 {
	position: absolute;
	top: 248px;
	left: 311px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_06 {
	position: absolute;
	top: 233px;
	left: 398px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Image .pkg-Btn_07 {
	position: absolute;
	top: 193px;
	left: 425px;
}
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent .pkg-Tooltip__Content {
	display: none;
}
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent .pkg-Tooltip__Content.is-Show,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent .pkg-Tooltip__Content {
	display: block;
	width: 638px;
	padding: 10px 12px;
	color: #303131;
	background: #FFF;
}
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_01,
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_02,
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_03 {
	margin: 0 20px;
	min-height: 42px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_01,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_02,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_03 {
	margin: 0 0 2px;
	min-height: 42px;
}
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_04,
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_05,
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_06,
.pkg-LightBoxContent  .JS .pkg-Tooltip--TypeContent #TooltipType01_07 {
	margin-bottom: 0;
	min-height: 63px;
}
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_04,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_05,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_06,
.pkg-LightBoxContent  .pkg-Tooltip--TypeContent #TooltipType01_07 {
	margin-bottom:2px;
	min-height: 63px;
}

/* pkg-Tooltip--TypeBalloon
---------- */
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon {
	position: relative;
}
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon .pkg-BgImg {
	position: relative;
}
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon ul.pkg-Tooltip__List li {
	position: absolute;
}
.JS .pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon .pkg-Tooltip__Content {
	display: none;
}
.JS .pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon .pkg-Tooltip__Content.is-Show,
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon .pkg-Tooltip__Content {
	position: absolute;
	display: block;
}
.pkg-LightBoxContent  .pkg-Tooltip.pkg-Tooltip--TypeBalloon .pkg-Tooltip__Content--Box {
	width: 240px;
	padding: 10px 15px;
	-webkit-box-shadow: 0 0 10px #d2d2d2;
	-moz-box-shadow: 0 0 10px #d2d2d2;
	box-shadow: 0 0 10px #d2d2d2;
	background: #FFF;
}


/* XX-05. Colorbox (Modal)
---------- ---------- */
#ModalOverlay {
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	background: #000;
	z-index: 2000;
}
#ModalboxWrapper {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	z-index: 2001;
	-webkit-overflow-scrolling: touch;
}
#colorbox {
	position: absolute;
	top: 0;
	left: 0;
	outline: 0;
	z-index: 2002;
}
#ModalWrapper {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2003;
}
#ModalMiddleLeft,
#ModalBottomLeft {
	clear: left;
}
#ModalContent {
	position: relative;
	margin: 0 30px;
	background: #fff;
	overflow: visible;
}
#ModalLoadedContent {
	overflow: auto;
	-webkit-overflow-scrolling: touch;
}
#colorbox,
#ModalContent,
#ModalLoadedContent {
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
}
#ModalTitle {
	display: none;
	position: absolute;
	margin: 0;
	width: 100%;
	color: #999;
	text-align: center;
}
#ModalLoadingOverlay,
#ModalLoadingGraphic {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#ModalLoadingOverlay {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/loading_background.png") no-repeat center center;
}
#ModalLoadingGraphic {
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal_responsive/loading.gif") no-repeat center center;
}
.ModalPhoto {
	display: block;
	float: left;
	max-width: none;
	margin: auto;
	border: 0;
	-ms-interpolation-mode: bicubic;
}
.ModalIframe {
	display: block;
	width: 100%;
	height: 100%;
	border: 0;
	background: #fff;
}
#ModalError {
	padding: 50px;
	border: 1px solid #ccc;
}
#ModalCurrent {
	position: absolute;
	top: 80px;
	right: 0;
	width: 39px;
	height: 39px;
	text-align: center;
	line-height: 3.4;
	color: #fff;
	background-color: #000;
}
#ModalPrevious, #ModalNext, #ModalSlideshow, #ModalClose, #ModalPrint {
	position: absolute;
	overflow: visible;
	border: none;
	color: #fff;
	text-indent:-9999px;
	cursor: pointer;
}
#ModalPrevious:active, #ModalNext:active, #ModalSlideshow:active, #ModalClose:active, #ModalPrint:active {
	outline:0;
}
#ModalPrevious {
	position: fixed;
	top: 50%;
	width: 30px;
	height: 71px;
	margin-top: -35px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_modal_arw_left.png") 0 0 no-repeat;
}
#ModalNext {
	position: fixed;
	top: 50%;
	width: 30px;
	height: 71px;
	margin-top: -35px;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_modal_arw_right.png") 0 0 no-repeat;
}
#ModalClose {
	width: 39px;
	height: 39px;
	top: 0;
	right: 0;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_close.png") 0 0 no-repeat;
}
#ModalPrint {
	width: 39px;
	height: 39px;
	bottom: 0;
	right: 0;
	background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_print.png") 0 0 no-repeat;
}

.pkg-LightBoxContent:after {
	content: "";
	display: block;
	visibility: hidden;
}
.pkg-LightBoxContent {
	margin: 0 auto;
	width: 760px;
	font-size: 14px; /* 14px */
}
.pkg-LightBoxContent {
	padding: 50px 0 10px;
}
.pkg-LightBoxContent .pkg-Grid--TypeCol2 .pkg-Grid__Col--Size1 {
	width: 365px;
}
.pkg-LightBoxContent .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size1 {
	width: 233px;
}
.pkg-LightBoxContent .pkg-Grid--TypeCol3 .pkg-Grid__Col--Size2 {
	width: 496px;
}
.pkg-LightBoxContent h1 {
	font-size: 143%; /* 20px*/
	margin-bottom: 13px;
	line-height: 1.4;
	text-transform: none;
}
.pkg-LightBoxContent h2 {
	font-size: 108%; /* 15px*/
	margin-bottom: 7px;
	line-height: 1.33;
	text-transform: none;
}


.g-modal .set-responsiveWebDesign {
  overflow-y: hidden;
}
.g-modal-prev .set-responsiveWebDesign .g-modal_prev,
.g-modal-next .set-responsiveWebDesign .g-modal_next {
  position: absolute;
  display: block;
}
.set-responsiveWebDesign .g-modal_if {
  display: none;
}
.set-responsiveWebDesign .g-modal_wrapper {
  position: fixed;
  left: 0;
  top: 0;
  z-index: 1000;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.7);
  filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#77000000,EndColorStr=#77000000);;
  overflow-y: scroll;
}
.set-responsiveWebDesign .g-modal_outer {
  display: table;
  width: 100%;
  height: 100%;
}
.set-responsiveWebDesign .g-modal_inner {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}
.set-responsiveWebDesign .g-modal_box {
  width: 600px;
  height: 450px;
  max-width: 860px;
  display: inline-block;
  background: #fff url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal_responsive/loading.gif") no-repeat 50% 50%;
  background-attachment: fixed;
  text-align: left;
  position: relative;
}
.set-responsiveWebDesign .g-modal-init .g-modal_box {
  height: auto !important;
  background-image: none;
}
.set-responsiveWebDesign .g-modal_body {
  padding: 70px 50px;
}
.set-responsiveWebDesign .g-modal_btn {
  margin: auto;
  display: none;
  background-color: #777;
  color: #fff;
  cursor: pointer;
  position: absolute;
  width: 40px;
  height: 40px;
}
.set-responsiveWebDesign .g-modal_btn:before {
  display: inline-block;
  overflow: hidden;
  vertical-align: middle;
  font-family: "icon";
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  line-height: 1;
  letter-spacing: 0;
  text-transform: none;
  pointer-events: none;
  speak: none;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  margin: auto;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 1em;
  height: 1em;
}
.set-responsiveWebDesign .g-modal_close {
  display: block;
  width: 39px;
  height: 39px;
  top: 0;
  right: 0;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_close.png") 0 0 no-repeat;
}
.set-responsiveWebDesign .g-modal_close:before {
  font-size: 22px;
}
.set-responsiveWebDesign .g-modal_print {
  display: block;
  width: 39px;
  height: 39px;
  bottom: 0;
  right: 0;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_print.png") 0 0 no-repeat;
}
.set-responsiveWebDesign .g-modal_print:before {
  font-size: 28px;
}
.set-responsiveWebDesign .g-modal_pagination {
  position: absolute;
  display: inline-block;
  text-align: center;
  width: 39px;
  height: 39px;
  top: 50px;
  right: 0;
  background: #000;
  line-height: 39px;
  color: #fff;
}
.set-responsiveWebDesign .g-modal-multi .g-modal_pagination {
  display: block;
}
.set-responsiveWebDesign .g-modal_ctrl {
  position: fixed;
  width: 100%;
  left: 0;
  top: 50%;
}
.set-responsiveWebDesign .g-modal_ctrlInner {
  position: relative;
}
.set-responsiveWebDesign .g-modal_prev,
.set-responsiveWebDesign .g-modal_next {
  position: absolute;
  top: 50%;
  left: 50%;
}
.set-responsiveWebDesign .g-modal_prev:before,
.set-responsiveWebDesign .g-modal_next:before {
  font-size: 24px;
}
.set-responsiveWebDesign .g-modal_prev {
  margin: -20px 0 0 -460px;
  position: fixed;
  top: 50%;
  width: 30px;
  height: 71px;
  margin-top: -35px;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_modal_arw_left.png") 0 0 no-repeat;
}
.set-responsiveWebDesign .g-modal_next {
  margin: -20px 0 0 430px;
  position: fixed;
  top: 50%;
  width: 30px;
  height: 71px;
  margin-top: -35px;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/pkg_common/images/modal/btn_modal_arw_right.png") 0 0 no-repeat;
}
.set-responsiveWebDesign .g-modal_el {
  margin: 0 auto;
  max-width: 760px;
  width: 100%;
  -webkit-transition: opacity 0.3s;
  transition: opacity 0.3s;
}
.set-responsiveWebDesign .g-modal .g-modal_wrapper .g-modal_el {
  visibility: hidden;
  opacity: 0;
}
.set-responsiveWebDesign .g-modal-init .g-modal_wrapper .g-modal_el {
  visibility: visible;
  opacity: 1;
}
.set-responsiveWebDesign .g-modal_btn__outer {
  display: none;
  position: fixed;
  top: 50%;
}
.set-responsiveWebDesign .g-modal_ctrlInner {
  display: none !important;
}
@media only screen and (max-width: 920px) {
  .set-responsiveWebDesign .g-modal_prev,
  .set-responsiveWebDesign .g-modal_next {
    margin: -20px 0 0 0;
  }
  .set-responsiveWebDesign .g-modal_prev {
    left: 0;
  }
  .set-responsiveWebDesign .g-modal_next {
    left: auto;
    right: 0;
  }
  .set-responsiveWebDesign .g-modal_btn__outer {
    display: none !important;
  }
  .set-responsiveWebDesign .g-modal_ctrlInner {
    display: block !important;
  }
}
@media only screen and (max-width: 480px) {
  .set-responsiveWebDesign .g-modal_box {
    min-height: 100%;
    height: 100%;
  }
  .set-responsiveWebDesign .g-modal_body {
    padding: 50px 40px;
  }
  .set-responsiveWebDesign .g-modal_ctrlInner {
    margin-right: 0 !important;
  }
  .set-responsiveWebDesign .g-modal_print {
    display: none;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_outer,
  .g-modal-init .set-responsiveWebDesign .g-modal_inner {
    display: inline;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_box {
    position: absolute;
    left: 0;
    top: 0;
    z-index: 11;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_prev,
  .g-modal-init .set-responsiveWebDesign .g-modal_next {
    margin: auto;
    top: 0;
    bottom: 0;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_prev:before,
  .g-modal-init .set-responsiveWebDesign .g-modal_next:before {
    font-size: 18px;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_prev {
    left: 0;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_next {
    left: auto;
    right: 0;
  }
}
.navopen .g-pagetop,
.g-modal .g-pagetop {
  display: none !important;
}
.set-responsiveWebDesign .pkg-LightBoxContent {
  padding-top: 10px;
  margin: 0;
}
.set-responsiveWebDesign .g-modal_box {
  -webkit-transition: height 0.3s, width 0.3s;
  transition: height 0.3s, width 0.3s;
}
.set-responsiveWebDesign .g-modal_hidden_box {
  padding: 70px 50px;
}
.set-responsiveWebDesign .g-modal_box {
  background-image: none;
}
.set-responsiveWebDesign .g-modal_loading {
  width: 100%;
  z-index: 1001 !important;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/modal_responsive/loading.gif") no-repeat 50% 50%;
  position: fixed;
}
.set-responsiveWebDesign .g-modal_body {
  padding: 50px 40px 0;
}
.g-modal .set-responsiveWebDesign #Pagetop {
  display: none !important;
}
.g-modal-init .set-responsiveWebDesign .g-modal_box,
.set-responsiveWebDesign .g-modal_wrapper {
  z-index: 1000 !important;
}
@media screen and (min-width: 770px) {
  .set-responsiveWebDesign .g-modal_body .pkg-Grid--TypeCol2 .pkg-Section:first-child {
    padding-right: 15px;
    padding-left: 15px;
  }
  .set-responsiveWebDesign .g-modal_body .pkg-Grid--TypeCol2 .pkg-Section:first-child img {
    width: 100%;
  }
}
@media only screen and (max-width: 960px) {
  .set-responsiveWebDesign .pkg-LightBoxContent {
    width: auto;
  }
  .set-responsiveWebDesign .pkg-LightBoxContent img {
    width: 100%;
    height: auto;
    max-width: 100%;
  }
}
@media only screen and (max-width: 880px) {
  .g-modal_prev,
  .g-modal_next {
    margin: -20px 0 0 0;
  }
  .g-modal-init .set-responsiveWebDesign .g-modal_next {
    position: absolute;
  }
}
@media screen and (max-width: 960px) {
  .set-responsiveWebDesign .g-modal_pagination {
    position: absolute;
  }
}
@media screen and (max-width: 769px) {
  .set-responsiveWebDesign .g-modal_pagination {
    top: 0;
    right: 50px;
  }
  .set-responsiveWebDesign .g-modal_ctrlInner {
    margin-right: 0 !important;
  }
  .pkg-LightBoxContent h1 {
    font-size: 115%;
    margin-bottom: 10px;
  }
}
@media only screen and (max-width: 480px) {
  .set-responsiveWebDesign .pkg-LightBoxContent h1,
  .set-responsiveWebDesign .pkg-LightBoxContent .pkg-Block--ImgAndTxt .pkg-Block__Content {
    display: inline-block;
  }
  .set-responsiveWebDesign .g-modal_box {
    max-width: 100%;
  }
  .set-responsiveWebDesign .g-modal_close,
  .set-responsiveWebDesign .g-modal_pagination {
    position: fixed;
  }
}
@media screen and (min-width: 482px) {
  .set-responsiveWebDesign .g-modal_body .pkg-Grid.pkg-Grid--TypeCol2,
  .set-responsiveWebDesign .g-modal_hidden_box .pkg-Grid.pkg-Grid--TypeCol2 {
    display: table;
    box-sizing: border-box;
    width: 100%;
  }
  .set-responsiveWebDesign .g-modal_body .pkg-Grid.pkg-Grid--TypeCol2 .pkg-Grid__Col,
  .set-responsiveWebDesign .g-modal_hidden_box .pkg-Grid.pkg-Grid--TypeCol2 .pkg-Grid__Col {
    display: table-cell;
  }
  .set-responsiveWebDesign .g-modal_body .pkg-Grid.pkg-Grid--TypeCol2 .pkg-Grid__Col--Size1,
  .set-responsiveWebDesign .g-modal_hidden_box .pkg-Grid.pkg-Grid--TypeCol2 .pkg-Grid__Col--Size1 {
    width: 50%;
  }
}
