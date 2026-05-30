a:active,
a:focus {
  text-decoration: none;
}

@media only screen and (max-width: 768px) {
  a:hover {
    text-decoration: none;
  }
}

@media only screen and (max-width: 768px) {
  .g-page-dept .g-main.no-sidebar {
    padding-top: 36px;
  }
}

@media only screen and (max-width: 768px) {
  .g-hnav {
    z-index: 12;
  }
}

.g-fnav .g-fnav_accBtn-on.g-fnav_noChild {
  border-bottom: none;
}

@media only screen and (max-width: 959px) {
  .g-fnav .g-fnav_noChild a {
    display: block;
  }
}

.g-navbox.g-col2 ul {
  margin: 0;
}

.g-navbox.g-col2 li {
  width: 50%;
  box-sizing: border-box;
}

@media only screen and (max-width: 959px) {
  .g-navbox.g-col2 li {
    width: auto;
  }
}

@media only screen and (max-width: 768px) {
  .g-sidebar.g-sidebar-on {
    z-index: 11;
  }
}

.g-sidebar_accBody {
  display: none;
}

.g-sidebar_accBody.g-sidebar-cur {
  display: block;
}

@media only screen and (min-width: 769px) {
  .g-sidebar_accBody:not(.g-sidebar-cur) {
    display: none !important;
  }
}

.g-sidebar_hd {
  position: relative;
  text-transform: uppercase;
}

.g-sidebar_hd div:hover {
  color: #09c;
}

.g-sidebar_hd a {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

@media only screen and (max-width: 768px) {
  .g-sidebar_hd div:hover {
    color: #333;
  }
  .g-sidebar_hd a {
    display: none;
  }
}

@media only screen and (max-width: 959px) {
  .g-sidebar_lv1 .g-sidebar_lv1_hd.g-sidebar-cur {
    background-color: #00c6f7;
  }
  .g-sidebar_lv1 .g-sidebar_lv1_hd.g-sidebar-cur.g-sidebar_accBtn:after {
    background-position: -80px -120px;
  }
  .g-sidebar_lv1 .g-sidebar_lv1_hd.g-sidebar-cur.g-sidebar_accBtn:after.g-sidebar_accBtn-on:after {
    background-position: -80px -140px;
  }
}

.g-aside .g-section {
  padding-bottom: 0;
}

.g-aside .g-section .g-link {
  color: #333;
}

.g-aside .g-section .g-link:hover {
  color: #09c;
  text-decoration: none;
}

.g-aside .g-section .g-hline_el {
  display: block;
}

.g-aside .g-section-recommend {
  background: #edf2f5;
  border-top: 4px solid #000;
}

.g-aside .g-section-recommend_ttl {
  margin: 0;
  padding: 10px 20px 0;
  font-size: 16px;
  font-weight: bold;
  color: #333;
}

.g-aside .g-section-recommend_ttl + .g-column {
  padding-top: 10px;
}

@media only screen and (max-width: 480px) {
  .g-aside .g-section-recommend_ttl {
    padding: 10px 10px 0;
  }
}

.g-ttl-2 .g-info_label-a {
  margin-top: 6px;
  vertical-align: top;
}

.g-link.g-prev::before {
  top: -.1em !important;
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
      transform: rotate(180deg);
}

.g-btns li {
  margin-bottom: 7px;
}

@media only screen and (min-width: 481px) {
  .g-btns li {
    display: table;
  }
  .g-btns a {
    display: table-cell;
    height: 48px;
    padding: 6px 12px 4px;
    line-height: 1.3;
    vertical-align: middle;
  }
}

.g-nlist.g-index {
  margin-bottom: 17px;
}

.g-nlist.g-index li,
.g-nlist.g-index a {
  color: #09c;
}

.g-nlist.g-index li {
  margin-bottom: 5px;
}

.g-nlist.g-index .g-nlist {
  margin-top: 5px;
  list-style: none;
}

.g-nlist.g-index .g-nlist li {
  margin-left: 1.6em;
  text-indent: -1.6em;
  color: #000;
}

.g-nlist.g-index a:hover {
  text-decoration: underline;
}

.g-blist-hyphen {
  margin: 0;
  padding: 0;
  list-style: none;
}

.g-blist-hyphen li {
  margin-left: 2em;
  text-indent: -1.1em;
}

.g-blist-hyphen li::before {
  content: '-';
  margin-right: 10px;
}

.g-table_el th,
.g-table_el td {
  vertical-align: middle;
}

.g-table_el .g-talign-c {
  text-align: center;
}

.g-table-financial th,
.g-table-financial td {
  padding: 10px 10px 11px;
}

.g-table-fixed.g-table-col2 .g-table_el {
  width: 692px;
}

@media only screen and (max-width: 768px) {
  .g-table-fixed.g-table-col2 .g-table_el {
    width: 728px;
  }
}

.th-link {
  margin-top: 5px;
  font-size: 11px;
}

@media only screen and (max-width: 768px) {
  .liquid .g-media_left {
    width: 40%;
    margin-right: 0;
    padding-right: 30px;
  }
  .liquid .g-media_body {
    width: 60%;
  }
}

@media only screen and (max-width: 480px) {
  .sp-not-break {
    word-break: keep-all;
  }
}

.italic {
  display: inline-block;
  margin-right: 0.2em;
  font-style: italic;
}

.img-border {
  display: block;
  border: 1px solid #d0d5d9;
}

.g-media_left .img-border {
  width: calc(100% - 2px);
}

.j-telephone a {
  color: #09c;
  text-decoration: underline;
}

.j-telephone a:hover {
  text-decoration: none;
}

.hero-message {
  position: relative;
  margin-bottom: 17px;
  overflow: hidden;
}

.hero-message .g-img {
  vertical-align: top;
  margin-bottom: 0;
}

.hero-message_box {
  position: absolute;
  left: 0;
  bottom: -1px;
  padding: 2px 7px;
  background: #fdf3e7;
}

.hero-message_names {
  margin: 0;
}

@media screen and (max-width: 350px) {
  .hero-message_names {
    font-size: 12px;
  }
}

.anchor-pos {
  margin-top: -80px;
  padding-top: 80px;
}

.anchor-pos.-init {
  margin-top: -125px;
  padding-top: 125px;
}

@media screen and (max-width: 960px) {
  .anchor-pos {
    margin-top: 0;
    padding-top: 0;
  }
  .anchor-pos.-init {
    margin-top: 0;
    padding-top: 0;
  }
}

.g-modal_wrapper {
  z-index: 1000;
}
