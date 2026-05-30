@charset "utf-8";
/*reset*/
#BreadcrumbsWrap{
background: none;
}
/*fadeIn--------------------------------*/
#ContentsWrap,#FooterWrap {
-moz-animation:fadeIn 2s ease-out 0s 1 normal;
-o-animation:fadeIn 2s ease-out 0s 1 normal;
-ms-animation:fadeIn 2s ease-out 0s 1 normal;
-webkit-animation:fadeIn 2s ease-out 0s 1 normal;
}
@-moz-keyframes fadeIn{
0%  { opacity: 0;}
100%  { opacity: 1}
}
@-webkit-keyframes fadeIn {
0%  { opacity: 0;}
100%  { opacity: 1}
}
@-o-keyframes fadeIn {
0%  { opacity: 0;}
100%  { opacity: 1}
}
@-ms-keyframes fadeIn {
0%  { opacity: 0;}
100%  { opacity: 1}
}

h2{
	text-transform:uppercase;
}

.careerVisualWrap{
min-width: 960px;
width: 100%;
height: 100%;
margin: 0 auto;
position: relative;

overflow: hidden;
}
.careerVisualWrap .bgImage img{
width: 100%;
}
.careerVisualWrap .bgImage{
position: absolute;
}
.careerVisualWrap .contentArea{
position: absolute;
}
/*btLearnMore--------------------------------*/
.careerVisualWrap .btLearnMore{
width: 309px;
}
.careerVisualWrap .btLearnMore a {
text-indent: 74px;
border:solid 6px #0099cc;
display: block;
font-size:142%;
padding: 20px 10px;
background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/allow_blue.png") no-repeat 10.2em center;
}
.careerVisualWrap .btLearnMore a:visited {
	color: #0099cc;
}
.careerVisualWrap .btLearnMore a:hover{
text-decoration: none;
color: #fff;
background: #0099cc;
background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/allow_white.png") no-repeat 10.2em center #0099cc;
}

/*btLearnMoreWhite--------------------------------*/
.careerVisualWrap .btLearnMoreWhite{
width: 309px;
}
.careerVisualWrap .btLearnMoreWhite a{
text-indent: 74px;
border:solid 6px #fff;
color: #fff;
display: block;
font-size:142%;
padding: 20px 10px;
background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/allow_white.png") no-repeat 10.2em center;
}
.careerVisualWrap .btLearnMoreWhite a:hover{
text-decoration: none;
color: #0099cc;
background: #fff;
background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/common/images/allow_blue.png") no-repeat 10.2em center #fff;
}

/*comingSoon--------------------------------*/

.careerVisualWrap .btLearnMore.comingSoon a,
.careerVisualWrap .btLearnMore.comingSoon a:hover {
color: #777;
border:solid 6px #ccc;
background-image: none;
background-color: #fff;
cursor: default;
}



/*pageCarousel--------------------------------*/
.pageCarousel{
position: fixed;
right: 20px;
top:40%;
text-align: center;
z-index: 100;
}
.pageCarousel .pageCarouselInner{

}
.pageCarousel li{
cursor: pointer;
}
/*careerNavigationv--------------------------------*/
.careerNavigation{
position: absolute;
top:40px;
left: 50%;
margin-left: -480px;
z-index: 100;
}

/*segment common--------------------------------*/
.careerVisualWrap .contentArea .lead{
text-align: justify;
}


/*segment1--------------------------------*/
.careerVisualWrap.segment1 .contentArea{
width: 800px;
left:50%;
margin-left: -400px;
top:30%;
}
.careerVisualWrap.segment1 .contentArea h1{
	text-align: center;
	margin-bottom: 30px;
}
.careerVisualWrap.segment1 .contentArea .lead{
width: 800px;
color: #000;
text-align: justify;
}
.careerVisualWrap.segment1 .contentArea .gen-TextLarge3 {
font-size: 107% !important;
}

/*information*/
.information {
position: absolute;
width: 100%;
bottom: 0;
background: #fff;
padding-top: 10px;
}

.information .informationInner{
max-width: 980px;
margin: 0 auto;
}
.information .informationInner p{
margin-bottom: 8px;
}
.information .gen-TextBold{
margin-right: 20px;
}

/*segment2--------------------------------*/
.careerVisualWrap.segment2 .contentArea{
width: 730px;
left:50%;
margin-left: -365px;
top:50%;
margin-top: -165px;
}
.careerVisualWrap.segment2 .contentArea .copy{
color: #0099cc;
font-size: 60px;
font-style: italic;
font-weight: bold;
line-height: 1;
letter-spacing: -1px;
}
.careerVisualWrap.segment2 .btLearnMore{
margin: 0 auto;
margin-top: 50px;
}


/*segment3--------------------------------*/
.careerVisualWrap.segment3 .contentArea{
width: 450px;
left:50%;
top:50%;
margin-top: -187px;
}
.careerVisualWrap.segment3 .contentArea .copy{
color: #0099cc;
font-size: 60px;
font-style: italic;
font-weight: bold;
line-height: 1;
letter-spacing: -1px;
}

/*segment4--------------------------------*/
.careerVisualWrap.segment4 .contentArea{
width: 980px;
left: 50%;
margin-left: -490px;
top: 50%;
margin-top: -239px;
}
.careerVisualWrap.segment4 .contentArea .copy{
text-align: center;
color: #fff;
font-size: 60px;
font-style: italic;
font-weight: bold;
line-height: 1;
letter-spacing: -1px;
}
.careerVisualWrap.segment4 .contentArea .lead{
color: #fff;
text-align: center;
}
.careerVisualWrap.segment4 .contentArea .employees{
margin: 40px auto 0;
width: 660px;
}
.careerVisualWrap.segment4 .contentArea .employees li{
display: inline-block;
vertical-align: middle;
/display: inline;
/zoom: 1;
margin: 0 13px;
}
.careerVisualWrap.segment4 .contentArea .employees li a:hover{
opacity: 0.7;
}
.careerVisualWrap.segment4 .contentArea .btLearnMoreWhite{
margin: 45px auto 0;
}


/*segment5--------------------------------*/

.careerVisualWrap.segment5 .bgWhite{
position: absolute;
background: #fff;
width: 468px;
height: 100%;
left: 50%;
margin-left: -234px;
}
.careerVisualWrap.segment5 .contentArea{
width: 320px;
margin: 0 auto;
top:50%;
left: 50%;
margin-left: -160px;
margin-top: -169px;
}
.careerVisualWrap.segment5 .contentArea .copy{
color: #0099cc;
font-size: 60px;
font-style: italic;
font-weight: bold;
line-height: 1;
letter-spacing: -1px;
}
.careerVisualWrap.segment5 .contentArea .lead{
color: #0099cc;
}
.careerVisualWrap.segment5 .contentArea .btLearnMore{
margin-top: 40px;
color: #0099cc;
}

/*segment6--------------------------------*/
.careerVisualWrap.segment6 .contentArea{
width: 680px;
left: 220px;
top:100px;
}
.careerVisualWrap.segment6 .contentArea .copy{
color: #0099cc;
font-size: 60px;
font-style: italic;
font-weight: bold;
line-height: 1;
letter-spacing: -1px;
}
.careerVisualWrap.segment6 .contentArea .lead{
color: #0099cc;
}

/*ContentsInnerWrap--------------------------------*/
.ContentsInnerWrap{
margin-top: 60px;
}



/*#Top_Uniquely--------------------------------*/
#Top_Uniquely{
	visibility: hidden;
}


/*Pagetop--------------------------------*/
#PagetopCareer{
cursor: pointer;
display: none;
bottom: 30px;
height: 51px;
position: fixed;
right: 0;
width: 31px;
z-index: 1002;

}
/**/
#hiddenArea{
display: none;
}




/*for tablet--------------------------------*/
@media (max-width: 960px) {
.pageCarousel{
	display: none;
}
.careerVisualWrap.segment3 .contentArea{
	left: 48%;
}

}



