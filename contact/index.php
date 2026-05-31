<?php
declare(strict_types=1);
require_once __DIR__ . '/../base-url.php';
require_once __DIR__ . '/../includes/dk-contact-form.php';

$formState = ['ok' => false, 'message' => '', 'values' => []];
if (strtoupper($_SERVER['REQUEST_METHOD'] ?? 'GET') === 'POST') {
    $formState = dk_contact_form_handle($_POST);
}
$dkContactForm = dk_contact_form_render($formState);

dk_start_output_rewrite();
?>
<!DOCTYPE html><html class="js JS no-touchevents no-applicationcache geolocation history svg postmessage websockets localstorage sessionstorage no-websqldatabase webworkers hashchange audio canvas canvastext video webgl cssgradients multiplebgs opacity rgba inlinesvg hsla supports svgclippaths smil fontface generatedcontent textshadow cssanimations backgroundsize borderimage borderradius boxshadow csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox cssreflections csstransforms csstransforms3d csstransitions indexeddb mac chrome indexeddb-deletedatabase" lang="en"><!--<![endif]--><head>
<link rel="stylesheet" href="/daikin-clone/daikin_offline/offline-layout-fix.css">
<base href="/daikin-clone/daikin_offline/">
<link href="assets/www.daikin.com/-/media/Base-Themes/Core-Libraries/styles/pre-optimized-min.css" rel="stylesheet">    
    


<title>Contact | Daikin Global</title>


<link rel="canonical" href="//www.daikin.com/contact">














   <meta name="robots" content="index,follow,noodp">  <meta charset="UTF-8">  <meta name="viewport" content="width=device-width,initial-scale=1">  <meta http-equiv="X-UA-Compatible" content="IE=edge">  <title>Contact | Daikin Global</title>  <meta name="description" content="">  <meta name="keywords" content="Contact, Contacts, Daikin, Daikin Industries">    <meta property="og:title" content="Contact | Daikin Global">  <meta property="og:description" content="">  <meta property="og:image" content="-/media/37B7DBA0AE334FF3BEAF68A4A20DBF2E.ashx">





<link rel="shortcut icon" href="assets/www.daikin.com/-/media/1A5E85D35779484483F5D1886952DD06.ashx">
<link type="image/png" rel="icon" href="assets/www.daikin.com/-/media/9AC5B36DF1E24623A2ED4B18C8629108.ashx" sizes="192x192">
<link type="image/png" rel="icon" href="assets/www.daikin.com/-/media/C1A3DD742C824C368B1D17BC8B1CFBE8.ashx" sizes="96x96">
<link rel="apple-touch-icon" href="assets/www.daikin.com/-/media/886A9E020B6E4927AB68AE27964D52F6.ashx" sizes="180x180">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/8E910A0E604B47B2B612F42C7C745C12.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/84898DA54ED94B4490F4194099F7B7AD.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/B7BDE8A00CF24291A9B4E10705A06B20.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/2C4E8B5F8184403BA45E4A6E82D105A6.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/D517B81E3EDA4596AA0C1FD88B097754.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/367AA882E2BB484A9940744F78929905.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/1B19A0FB637A4E7DA17E1FD76240C4B7.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/9707797D3FAB418897531D86598B3C64.ashx">
<link type="text/css" rel="stylesheet" href="assets/www.daikin.com/-/media/A642235C80914D2FA4EFB7476A2ABCF4.ashx">
<!--[if lt IE 9]><script src="assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dg_common/js/html5shiv-printshiv.js" charset="utf-8"><script src="assets/www.daikin.com/-/media/CA23A41690DB4A2FA2AF10DB54EF75AA.ashx" charset="utf-8"></script><![endif]-->
  <link rel="stylesheet" href="assets/www.daikin.com/-/media/E90001F8F4E34B2EB127EB9300139871.ashx"><meta property="og:url" content="https://www.daikin.com/contact">
  </head>
<body class="set-responsiveWebDesign default-device bodyclass">
    






    

    




    <div id="g-wrapper" class="g-wrapper">





    <div id="MegaMenu_Overlay">




</div>




<!--probo_noindex-->
<!-- Google Tag Manager (noscript) -->

<!-- End Google Tag Manager (noscript) -->

<!-- Google Tag Manager (noscript) -->

<!-- End Google Tag Manager (noscript) -->

<!-- Google Tag Manager (noscript) -->

<!-- End Google Tag Manager (noscript) -->

<noscript>
<div id="NoScriptMessageWrap">
<p>To use all available functions on this website, JavaScript must be enabled in your browser.</p>
<!-- / #NoScriptMessageWrap --></div>
</noscript>

<div class="BlockSkip"><a href="#ContentsWrap">Skip to main content</a></div>
<div id="HeaderShrinking" style="width: 100%; position: fixed;"><div id="HeaderWrap">
<div id="HeaderArea">
<p class="Logo"><a href="/"><img src="assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dg_common/images/logo_daikin-png.png" alt="DAIKIN"></a></p>
<p class="Region">GLOBAL</p>
<div class="HeaderLinks">
<ul>
<li><a href="/contact/">Contact</a></li>
<li id="GlobalNavBtn" class="Menu"><a href="javascript:void(0);"><span>Menu</span></a></li>
</ul>
<!-- / .HeaderLinks --></div>
<!-- / #HeaderArea --></div>
<!-- / #HeaderWrap --></div><div id="GlobalNavWrap">
<div id="GlobalNavArea"><div id="Gnav_Overlay"></div>
<ul>
    <li><a href="/air/">PERFECTING THE AIR</a></li>
    <li><a href="/corporate/">ABOUT DAIKIN</a></li>
    <li><a href="/products/">PRODUCTS &amp; SERVICES</a></li>
    <li><a href="/investor/">INVESTOR RELATIONS</a></li>
    <li><a href="/sustainability/">SUSTAINABILITY</a></li>
    <li><a href="/careers/">CAREERS</a></li>
    <li class="js-Disable"><a href="/news/">NEWS</a></li>
</ul>
<!-- / #GlobalNavArea -->
</div>
<div class="MegaMenuWrap">
<div class="MegaMenuArea">
<!-- 202303add -->
<div class="MegaMenu_Content MegaMenu_Brand">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/air/"><em class="Mkr"></em>PERFECTING THE AIR TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a class="kerning-short" href="/air/elements/"><em class="Mkr"></em>The POWER TO CREATE THE AIR OF THE FUTURE</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/air/ideal_air/"><em class="Mkr"></em>THE IDEAL AIR BY DAIKIN</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_About -->
</div>
<!-- /202303add -->
<!-- 202303change -->
<div class="MegaMenu_Content MegaMenu_About">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/corporate/"><em class="Mkr"></em>ABOUT DAIKIN TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/corporate/overview/"><em class="Mkr"></em>Corporate Information</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/corporate/overview/message/"> <em class="Mkr"></em>Message from Management</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_About -->
</div>
<!-- /202303change -->
<div class="MegaMenu_Content MegaMenu_Products">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/products/"><em class="Mkr"></em>PRODUCTS &amp; SERVICES TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/products/ac/"> <em class="Mkr"></em>Air Conditioning &amp; Refrigeration</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/products/ac/lineup/split_multi_split/"> <em class="Mkr"></em>Split/Multi-Split</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_Products -->
</div>
<div class="MegaMenu_Content MegaMenu_Investor">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/investor/"><em class="Mkr"></em>INVESTOR RELATIONS TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/investor/management/"> <em class="Mkr"></em>Management Overview</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/investor/financial/"> <em class="Mkr"></em>Financial Data</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_Csr -->
</div>
<div class="MegaMenu_Content MegaMenu_Investor">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/sustainability/"><em class="Mkr"></em>SUSTAINABILITY TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/sustainability/about/"> <em class="Mkr"></em>INTRODUCTION</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/sustainability/management/"> <em class="Mkr"></em>MANAGEMENT</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_Csr -->
</div>
<div class="MegaMenu_Content MegaMenu_Careers">
<div class="MegaMenu_ContentInner">
<div class="Category_Content">
<ul class="List List--Link Grid Grid--TypeCol3"><li class="Grid__Col Grid__Col--Size1"><a href="/careers/"><em class="Mkr"></em>CAREERS TOP</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/careers/management/"> <em class="Mkr"></em>PEOPLE-CENTERED MANAGEMENT</a></li><li class="Grid__Col Grid__Col--Size1"><a href="/careers/human/"> <em class="Mkr"></em>DESIRED HUMAN RESOURCES</a></li></ul>
<!-- / .Category_Content -->
</div>
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_Careers -->
</div>
<div class="MegaMenu_Content MegaMenu_News">
<div class="MegaMenu_ContentInner">
<!-- / .MegaMenu_ContentInner -->
</div>
<!-- / .MegaMenu_News -->
</div>
<!-- / .MegaMenuArea -->
</div>
<!-- / .MegaMenuWrap -->
</div>
<!-- / #GlobalNavWrap -->
</div></div><div id="HeaderSubstitution" style="display: block;"></div>


<!--/probo_noindex-->


<!--probo_noindex-->
<!-- PC: #GlobalNavWrap, SP:#GlobalNavWrapSp -->

<!-- SP:#GlobalNavWrapSp -->
<div id="GlobalNavWrapSp">
<div id="GlobalNavAreaSp">
<dl>
    <dt><a href="">PERFECTING THE AIR</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/air/"><em class="Mkr"></em>PERFECTING THE AIR TOP</a></li><li><a class="kerning-short" href="/air/elements/"><em class="Mkr"></em>The POWER TO CREATE THE AIR OF THE FUTURE</a></li><li><a href="/air/ideal_air/"><em class="Mkr"></em>THE IDEAL AIR BY DAIKIN</a></li></ul>
    </dd>
    <!-- section -->
        <dt><a href="">ABOUT DAIKIN</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/corporate/"><em class="Mkr"></em>ABOUT DAIKIN TOP</a></li><li><a href="/corporate/overview/"><em class="Mkr"></em>Corporate Information</a></li><li><a href="/corporate/overview/message/"> <em class="Mkr"></em>Message from Management</a></li></ul>
    </dd>
    <!-- section -->
        <dt><a href="">PRODUCTS &amp; SERVICES</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/products/"><em class="Mkr"></em>PRODUCTS &amp; SERVICES TOP</a></li><li><a href="/products/ac/"> <em class="Mkr"></em>Air Conditioning &amp; Refrigeration</a></li><li><a href="/products/ac/lineup/split_multi_split/"> <em class="Mkr"></em>Split/Multi-Split</a></li></ul>
    </dd>
    <!-- section -->
        <dt><a href="/investor/">INVESTOR RELATIONS</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/investor/"><em class="Mkr"></em>INVESTOR RELATIONS TOP</a></li><li><a href="/investor/management/"> <em class="Mkr"></em>Management Overview</a></li><li><a href="/investor/financial/"> <em class="Mkr"></em>Financial Data</a></li></ul>
    </dd>
    <!-- section -->
        <dt><a href="">SUSTAINABILITY</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/sustainability/"><em class="Mkr"></em>SUSTAINABILITY TOP</a></li><li><a href="/sustainability/about/"> <em class="Mkr"></em>INTRODUCTION</a></li><li><a href="/sustainability/management/"> <em class="Mkr"></em>MANAGEMENT</a></li></ul>
    </dd>
    <!-- section -->
        <dt><a href="">CAREERS</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/careers/"><em class="Mkr"></em>CAREERS TOP</a></li><li><a href="/careers/management/"> <em class="Mkr"></em>PEOPLE-CENTERED MANAGEMENT</a></li><li><a href="/careers/human/"> <em class="Mkr"></em>DESIRED HUMAN RESOURCES</a></li></ul>
    </dd>
</dl>
<ul class="GrobalNav_list"><li class="GrobalNav_list--global"><a href="/news/">NEWS</a></li><li><a href="/contact/">CONTACT</a></li></ul>













<!-- / #GlobalNavArea -->
</div>
<!-- / #GlobalNavWrapSp -->
</div>
<!--/probo_noindex-->





<div id="g-main" class="g-main no-sidebar">
<div class="g-breadcrumbs-p">
<ol>
    <li><a href="/contact/">Home</a></li>
    <li>Contact</li>
</ol>
</div>
<div class="g-container dk-contact-page-main">
<h1 class="g-ttl-1">Contact</h1>
<?php echo $dkContactForm; ?>
</div>


<!--probo_noindex-->
<div id="FooterWrap">
<div id="FooterArea">
<div class="SiteNav">
<div class="SiteNav__Body">
<div class="SiteNav__Body__Inner">
<dl>
    <!-- 202303add -->
    <dt><a href="/air/"><em class="Mkr"></em>PERFECTING THE AIR</a></dt>
    <dd>
    <ul><li class="dai2"><a href="/air/ideal_air/"><em class="Mkr"></em>The Ideal Air by Daikin</a></li><li class="dai2"><a href="/air/stories/"><em class="Mkr"></em>Perfecting the Air Stories</a></li></ul>
    <ul><li class="dai2"><a href="/air/daikin_brand/"><em class="Mkr"></em>Daikin Brand</a></li></ul>
    
    
    </dd>
    <!-- /202303add -->
    <dt><a href="/corporate/"><em class="Mkr"></em>ABOUT DAIKIN</a></dt>
    <dd>
    <ul><li class="dai2 gen-TextResetUppercase"><a href="/corporate/overview/"><em class="Mkr"></em>Corporate Information</a></li><li class="dai3"><a href="/corporate/overview/message/"> <em class="Mkr"></em>Message from Management</a></li><li class="dai3"><a href="/corporate/overview/philosophy/"> <em class="Mkr"></em>Daikin Group Philosophy</a></li></ul>
    
    </dd>
</dl>
<!-- / .SiteNav__Body__Inner -->
</div>
<div class="SiteNav__Body__Inner">
<dl>
    <dt><a href="/products/"> <em class="Mkr"></em>PRODUCTS &amp; SERVICES</a></dt>
    <dd>
    <ul><li class="dai2 gen-TextResetUppercase"><a href="/products/ac/"> <em class="Mkr"></em>Air Conditioning &amp; Refrigeration</a></li><li class="dai3"><a href="/products/ac/lineup/split_multi_split/"> <em class="Mkr"></em>Split/Multi-Split</a></li><li class="dai3"><a href="/products/ac/lineup/duct_unitary/"> <em class="Mkr"></em>Unitary</a></li></ul>
    
    
    </dd>
</dl>
<!-- / .SiteNav__Body__Inner -->
</div>
<div class="SiteNav__Body__Inner">
<dl>
    <dt><a href="/investor/"><em class="Mkr"></em>INVESTOR RELATIONS</a></dt>
    <dd>
    <ul><li><a href="/investor/management/"> <em class="Mkr"></em>Management Overview</a></li><li><a href="/investor/financial/"> <em class="Mkr"></em>Financial Data</a></li><li><a href="/investor/esg/"> <em class="Mkr"></em>Non-Financial Information</a></li></ul>
    </dd>
    <dt><a href="/sustainability/"><em class="Mkr"></em>SUSTAINABILITY</a></dt>
    <dd>
    <ul class="GrobalNav_list"><li><a href="/sustainability/about/"> <em class="Mkr"></em>Introduction</a></li><li><a href="/sustainability/management/"> <em class="Mkr"></em>Management</a></li><li><a href="/sustainability/environment/"> <em class="Mkr"></em>Environment</a></li></ul>
    </dd>
</dl>
<!-- / .SiteNav__Body__Inner -->
</div>
<div class="SiteNav__Body__Inner">
<dl>
    <dt><a href="/careers/"><em class="Mkr"></em>CAREERS</a></dt>
    <dd>
    <ul><li><a href="/careers/management/"> <em class="Mkr"></em>People-Centered Management</a></li><li><a href="/careers/human/"> <em class="Mkr"></em>Desired Human Resources</a></li><li><a href="/careers/employees/"> <em class="Mkr"></em>Global Activities of Daikin Employees</a></li></ul>
    </dd>
    <dt>LATEST NEWS</dt>
    <dd>
    <ul><li class="dai4"><a href="/news/"><em></em>News</a></li><li class="dai4"><a href="/press/"><em></em>Press Releases</a></li></ul>
    </dd>
</dl>
<p class="SiteNav_Separate"><a href="/contact/"><em></em>CONTACT</a></p>
<!-- / .SiteNav__Body__Inner -->
</div>
<!-- / .SiteNav__Body -->
</div>
<!-- / .SiteNav -->
</div>
<!-- / #FooterArea -->
</div>
<div class="FooterBtm">
<div class="FooterBtm_Inner">
<p class="Copyright">©DAIKIN INDUSTRIES, Ltd., 2026</p>
<div class="FooterLink">
<ul>
    <li><a href="/privacy/">Privacy Policy</a></li>
    <li><a href="/terms/">Terms of Use</a></li>
    <li><a href="/cookie/">About Cookies</a></li>
</ul>
<!-- / .FooterLink -->
</div>
</div>
<!-- / .FooterBtm -->
</div>
<!-- / #FooterWrap -->
</div>
<div id="Pagetop" style="display: none;"><a href="#HeaderWrap"><img src="assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dg_common/images/img_pagetop_sp-png.png" alt="Go To Page Top" class="Pagetop-showSp"></a></div>
<!--/probo_noindex--></div>



    


    




<script src="assets/www.daikin.com/-/media/12E7D1E0EE0F4799B669AB52068F8882.ashx"></script>
<script src="assets/www.daikin.com/-/media/D91AD01E61914F1792C936E6756A73F3.ashx"></script>
<script src="assets/www.daikin.com/-/media/477CD24733A94E68A5367AFF590A4620.ashx"></script>
<script src="assets/www.daikin.com/-/media/7EB5D3C993564954A460FD940208DC42.ashx"></script>
<script src="assets/www.daikin.com/-/media/FD116560F4B94C87BC983CCD18733310.ashx"></script>
<script src="assets/www.daikin.com/-/media/79A3A8A1B3CA4EA4A24DA204657C8577.ashx"></script>
<script src="assets/www.daikin.com/-/media/5402A9E85EBF41A6B9662E6ABF66E64E.ashx"></script>
<script src="assets/www.daikin.com/-/media/BC57C8BAFA944EC2949D2C4AB9C97E35.ashx"></script>
<script src="assets/www.daikin.com/-/media/Base-Themes/Core-Libraries/scripts/pre-optimized-min.js"></script><script src="assets/www.daikin.com/-/media/Base-Themes/Resolve-Conflicts/Scripts/pre-optimized-min.js"></script>    <!-- /#wrapper -->

<div id="ModalOverlay" style="display: none;"></div><div id="ModalboxWrapper" style="display: none;"><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="ModalWrapper"><div><div id="ModalTopLeft" style="float: left;"></div><div id="ModalTopCenter" style="float: left;"></div><div id="ModalTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="ModalMiddleLeft" style="float: left;"></div><div id="ModalContent" style="float: left;"><div id="ModalTitle" style="float: left;"></div><div id="ModalCurrent" style="float: left;"></div><button type="button" id="ModalPrevious"></button><button type="button" id="ModalNext"></button><button id="ModalSlideshow"></button><div id="ModalLoadingOverlay" style="float: left;"></div><div id="ModalLoadingGraphic" style="float: left;"></div></div><div id="ModalMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="ModalBottomLeft" style="float: left;"></div><div id="ModalBottomCenter" style="float: left;"></div><div id="ModalBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></div><div style="visibility: hidden; position: absolute; top: 0px;">S</div>


<script src="offline-header-fix.js"></script>
<script src="offline-menu-fix.js"></script>
<script src="offline-media-fix.js"></script>
</body></html>