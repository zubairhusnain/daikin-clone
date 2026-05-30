/*SXAコンポーネント用スタイル：サイドナビ用*/
.sxa-flex {
  display: flex;
  overflow: visible;
}

.sxa-flex .g-contents {
  padding-left: 30px;
  width: 732px; /*コンテンツ幅指定しないとサイドナビが侵食される*/
  float: none;
}

.sxa-flex .g-aside {
  margin-right: 0;
  float: none;
}

@media only screen and (max-width: 768px) {
  .sxa-flex .g-aside {
    display: none;
  }
}

.scWebEditInput {
  display: inline !important;
}

.hero {
    position: relative;
    min-height: 320px;
    margin: 0 -15px 20px;
    padding: 0 15px;
    background: no-repeat 50% 50% / cover;
}

    .hero .g-ttl-1 {
        display: inline-block;
        margin-top: 83px;
        padding: 0 20px;
        background-color: rgba(0, 154, 207, 0.8);
        color: #fff;
    }
    
    .hero .g-container {
        overflow: visible;
    }
    
body.win .hero .g-ttl-1 {
    padding-top: 3px;
}

@media all and (-ms-high-contrast: none) {
    body.win .hero .g-ttl-1 {
        padding-top: 3px;
    }
}

@media only screen and (max-width: 768px) {
    .hero {
        min-height: 0;
        margin-bottom: 80px;
        padding: 0;
    }

        .hero .g-container {
            position: relative;
            width: 100%;
            padding-top: 220px;
            overflow: visible;
        }

        .hero .g-ttl-1 {
            position: absolute;
            top: 100%;
            left: 0;
            display: block;
            width: 100%;
            margin: 0;
            padding: 10px 15px 9px;
            background-color: rgba(0, 154, 207, 1);
            font-size: 20px;
        }
}

@media only screen and (max-width: 480px) {
    .hero .g-container {
        padding-top: 135px;
    }
}

@media only screen and (min-width: 769px) {
    .g-mt-neg25 {
        margin-top: -25px;
    }
}

p.g-pdf:hover {
  text-decoration: underline;
}

.g-bg {
    margin-left: 0px;
    margin-right: 0px;
}

.g-modal_el > p {
    word-wrap: break-word;
}


.column-container {
  display: flex;
  flex-wrap: wrap;
}

.column-container > div {
  display: flex;
  flex-direction: column;
}

.column-container img{
  max-width: 100%;
}

.column-ratio-1, .column-ratio-2, .column-ratio-3, .column-ratio-4 {
  box-sizing: border-box;
  padding: 10px;
}

.column-ratio-4 {
  flex: 4;
}
.column-ratio-3 {
  flex: 3;
}
.column-ratio-2 {
  flex: 2;
}
.column-ratio-1 {
  flex: 1;
}

@media screen and (max-width: 480px) {
  .column-ratio-1, .column-ratio-2, .column-ratio-3, .column-ratio-4 {
    flex: 1 0 100%;
    max-width: 100%;
  }
}

.text-align-right-content {
  text-align: right;
}

.sxa-overflow {
  overflow: visible !important;
}

.sxa-gs-color{
  color: #666 !important;
}

/* min-height指定 */

.sxa-min-height-48 {
  min-height: 48px;
}

.sxa-min-height-36 {
  min-height: 36px;
}

.sxa-min-height-24 {
  min-height: 24px;
}

.sxa-min-height-22 {
  min-height: 22px;
}

.sxa-min-height-14 {
  min-height: 14px;
}
/* table-rowにはmin-heightが効かないので対策 */

.sxa-table-row:before{
  content: "";
  display: inline-block;
  height: 100%;
}


/* pdfアイコンが2つ表示される件の対応 */

.g-pdf span.scWebEditInput:after {
    content: none !important;
}

/* GS TOP 改修用*/
.ContentsInnerArea > .g-grid_el{
    float: none !important;
}
