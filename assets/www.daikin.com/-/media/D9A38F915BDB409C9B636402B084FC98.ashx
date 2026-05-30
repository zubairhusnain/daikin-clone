.hero {
  position: relative;
  min-height: 320px;
  margin: 0 -15px 20px;
  padding: 0 15px;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/sustainability/images/index_ttl_bg.jpg") no-repeat 50% 0 / cover;
}
.hero .g-breadcrumbs-p {
  position: absolute;
  top: 15px;
  left: 0;
  margin: 0;
  padding: 0 15px;
}
.hero .g-breadcrumbs-p ol {
  font-size: 10px;
  font-weight: normal;
}
.hero .g-breadcrumbs-p a {
  color: #000;
  text-decoration: underline;
}
.hero .g-breadcrumbs-p a:hover {
  text-decoration: none;
}
.hero .g-ttl-1 {
  display: inline-block;
  margin-top: 83px;
  padding: 0 20px;
  background-color: rgba(0, 154, 207, 0.8);
  color: #fff;
}
body.win .hero .g-ttl-1 {
  padding-top: 3px;
}
@media all and (-ms-high-contrast: none){
  body.win .hero .g-ttl-1 {
    padding-top: 3px;
  }
}
.g-ttl-2 {
  margin-top: 10px;
}
.panel-link .g-grid_el {
  margin-bottom: 13px;
}
.panel-link .g-hover:hover {
  opacity: 0.7;
}
.no-touchevents .panel-link .g-hover:hover img {
  opacity: 1;
}
.panel-link .g-media-v {
  position: relative;
}
.panel-link .g-media_left {
  position: relative;
  z-index: 0;
  margin-bottom: 0;
}
.panel-link .g-media_left .sp-img {
  display: none;
}
.panel-link .g-media_body {
  position: absolute;
  bottom: 0;
  left: 0;
  z-index: 1;
  width: 100%;
  min-height: 50%;
}
/*
.panel-link .g-media_body.g-media_body-glance {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/overview/images/glance.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-summary {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/corporate/overview/images/summary.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-company {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/company.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-environment {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/environment_sp.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-newvaluecreation {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/newvaluecreation.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-customer {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/customer_sp.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-employee {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/employee_sp.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-management {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/management.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-human_rights {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/human_rights.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-supplier {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/supplier.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-engagement {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/engagement.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-community {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/community.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-valuewithair {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/valuewithair.jpg") repeat 50% 100% / cover;
}
.panel-link .g-media_body.g-media_body-collaboration {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/collaboration.jpg") repeat 50% 100% / cover;
}
*/

.panel-link .g-media_body::before {
  content: '';
  background: inherit;
  -webkit-filter: blur(5px) saturate(2);
  -moz-filter: blur(5px) saturate(2);
  -o-filter: blur(5px) saturate(2);
  -ms-filter: blur(5px) saturate(2);
  filter: blur(5px) saturate(2);
  position: absolute;
  top: -5px;
  left: -5px;
  right: -5px;
  bottom: -5px;
  z-index: -1;
}
.panel-link .g-media_body::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(255,255,255,0.88);
}
.panel-link .g-media_body_inner {
  position: relative;
  z-index: 1;
  height: 100%;
  padding: 15px 20px 0;
}

.g-column-aside {
  padding: 20px 10px 20px 25px;
  background-color: #ebf7fd;
}
.g-column-aside .g-hover:hover .g-link {
  display: inline-block;
  vertical-align: baseline;
}
.g-column-aside .g-hover .g-p {
  color: #000;
}
.g-column-aside .g-media_left {
  margin-right: 45px;
}
.g-column-aside .g-media_body {
  padding-top: 15px;
}
.g-column-aside .g-grid-2b > .g-grid_el:first-child {
  padding-right: 40px;
}
.g-column-aside .g-p,
.g-column-aside .g-link {
  font-size: 13px;
}
.g-column-aside .g-vline_el {
  margin-bottom: 10px;
}
.g-btn-radius {
  border-radius: 3px;
}
.others img {
  width: auto;
}
.others .g-grid_el {
  margin-top: 20px;
  padding-top: 0;
  padding-right: 30px;
}
.others .g-grid_el:last-child {
  padding-right: 15px;
}
.others .g-ttl-2 {
  margin-top: 0;
}
.g-grid_el.border {
  border-left: 1px solid #ccc;
}
.others .g-vline_el {
  margin-bottom: 25px;
}
.others img {
  max-width: 100%;
}
.others a .g-p-s {
  color: #000;
}
.img-border {
  display: block;
  border: 1px solid #d0d5d9;
}
.report {
  margin-left: 20px;
}
@media only screen and (max-width: 768px) and (min-width: 481px) {
  .panel-link.g-grid-3 > .g-grid_el {
    width: 50%;
  }
  .panel-link.g-grid-sp.g-grid-3 > .g-grid_el:nth-child(odd) {
    clear: left;
  }
  .panel-link.g-grid-sp.g-grid-3 > .g-grid_el:nth-child(3n+1),
  .panel-link.g-grid-sp.g-grid-3 > .g-grid_el-3n {
    clear: none;
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
  .g-page-dept .g-main {
    padding-top: 0;
  }
  .panel-link .g-media_left .pc-img {
    display: none;
  }
  .panel-link .g-media_left .sp-img {
    display: block;
  }
    /*
  .panel-link .g-media_body.g-media_body-environment {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/environment_sp.jpg");
  }
  .panel-link .g-media_body.g-media_body-newvaluecreation {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/newvaluecreation_sp.jpg");
  }
  .panel-link .g-media_body.g-media_body-customer {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/customer_sp.jpg");
  }
  .panel-link .g-media_body.g-media_body-employee {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/employee_sp.jpg");
  }
  .panel-link .g-media_body.g-media_body-collaboration {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/collaboration.jpg");
  }
  .panel-link .g-media_body.g-media_body-valuewithair {
    background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_co_jp/sustainability/images/valuewithair.jpg");
  }
    */
  .g-column-aside {
    padding: 15px;
  }
  .g-column-aside .g-grid_el,
  .g-column-aside .g-grid_el:first-child {
    float: none;
    width: auto;
  }
  .g-column-aside .g-grid-2b > .g-grid_el {
    margin-top: 0;
  }
  .g-column-aside .g-grid-2b > .g-grid_el:first-child {
    padding-right: 15px;
  }
  .g-column-aside .g-media_left {
    margin-right: 15px;
  }
  .g-column-aside .g-media-h.g-media-overflow > .g-media_left {
    margin-bottom: 0;
  }
  .g-column-aside .g-media_body {
    padding-top: 0;
  }
}
@media only screen and (max-width: 480px) {
  .hero .g-container {
    padding-top: 135px;
  }
  .panel-link .g-media_left {
    float: left;
    width: 50%;
  }
  .panel-link .g-media_body {
    left: auto;
    right: 0;
    width: 50%;
    height: 100%;
    min-height: 0;
  }
    
/*共通*/
  .panel-link .g-media_body.g-media_body-bgcolor {
    background: #edf2f5;
  }
    
/*
  .panel-link .g-media_body.g-media_body-glance {
    background: #d7f0f7;
  }
  .panel-link .g-media_body.g-media_body-summary {
    background: #edf2d4
  }
  .panel-link .g-media_body.g-media_body-company {
    background: #dce9f1;
  }
  .panel-link .g-media_body.g-media_body-environment {
    background: #edf2f5;
  }
  .panel-link .g-media_body.g-media_body-newvaluecreation ,
  .panel-link .g-media_body.g-media_body-customer,
  .panel-link .g-media_body.g-media_body-employee,
  .panel-link .g-media_body.g-media_body-management,
  .panel-link .g-media_body.g-media_body-human_rights,
  .panel-link .g-media_body.g-media_body-supplier,
  .panel-link .g-media_body.g-media_body-engagement,
  .panel-link .g-media_body.g-media_body-community,
  .panel-link .g-media_body.g-media_body-collaboration,
  .panel-link .g-media_body.g-media_body-valuewithair {
    background: #edf2f5
  }
*/
    
    
  .panel-link .g-media_body::before,
  .panel-link .g-media_body::after,
  .panel-link .g-media_body_inner .g-media_text,
  .panel-link a:hover .g-media_body_inner .g-media_text {
    display: none;
  }
  .panel-link .g-media_body_inner {
    display: flex;
    align-items: center;
    padding: 0 20px;
  }
  .g-ttl-2.sp-border {
    margin-top: 40px;
    padding-top: 34px;
    border-top: 4px solid #00CDFF;
  }
  .others img {
    width: 100%;
    max-width: none;
  }
  .others .g-grid_el:last-child {
    padding-right: 0;
  }
  .others .g-grid_el.border {
    padding-top: 34px;
    border: none;
    border-top: 1px solid #ccc;
  }
  .report {
    margin: 0;
  }
}
