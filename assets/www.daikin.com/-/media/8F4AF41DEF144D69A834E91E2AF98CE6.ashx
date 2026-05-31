.g-main * {
  box-sizing: border-box;
}

@media only screen and (max-width: 768px) {
  .g-page-dept .g-main {
    padding-top: 0;
  }
}

.hero {
  position: relative;
  min-height: 320px;
  margin: 0 -15px 20px;
  padding: 0 15px;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/main.jpg") no-repeat 50% 50%/cover;
}

.hero .g-ttl-1 {
  display: inline-block;
  margin-top: 83px;
  padding: 0 20px;
  background-color: rgba(0, 154, 207, 0.8);
  color: #fff;
}

.hero .g-breadcrumbs {
  top: 0;
  left: 0;
  z-index: 1;
  margin: 0;
  background: none;
}

.hero .g-breadcrumbs li,
.hero .g-breadcrumbs a {
  color: #000;
}

.hero .g-breadcrumbs a {
  text-decoration: underline;
}

.hero .g-breadcrumbs a:hover {
  text-decoration: none;
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
    background-color: #009acf;
    font-size: 20px;
  }
}

@media only screen and (max-width: 480px) {
  .hero .g-container {
    padding-top: 135px;
  }
}

.g-ttl-2 {
  margin-top: 10px;
}

@media only screen and (max-width: 480px) {
  .g-ttl-2.sp-border {
    margin-top: 40px;
    padding-top: 34px;
    border-top: 4px solid #00CDFF;
  }
}

.panel-link .g-grid_el {
  margin-bottom: 13px;
}

.panel-link .g-hover:hover {
  opacity: 0.7;
}

.panel-link .g-media-v {
  position: relative;
}

.panel-link .g-media_left {
  position: relative;
  z-index: 0;
  margin-bottom: 0;
}

.panel-link .g-media_body {
  position: absolute;
  bottom: 0;
  left: 0;
  z-index: 1;
  width: 100%;
  min-height: 50%;
}

.panel-link .g-media_body.g-media_body-management {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/New-management-jpeg.jpeg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-financial {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/financial.jpg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-esg {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/esg.jpg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-stock {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/stock.jpg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-library {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/library.jpg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-calendar {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/calendar.jpg") no-repeat 0 100%/cover;
}

.panel-link .g-media_body.g-media_body-personal {
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/investor/images/personal.jpg") no-repeat 0 100%/cover;
}

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
  background-color: rgba(255, 255, 255, 0.8);
}

.panel-link .g-media_body_inner {
  position: relative;
  z-index: 1;
  height: 100%;
  padding: 15px 20px 0;
}

.no-touchevents .panel-link .g-hover:hover img {
  opacity: 1;
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

@media only screen and (max-width: 480px) {
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
  .panel-link .g-media_body::before, .panel-link .g-media_body::after {
    display: none;
  }
  .panel-link .g-media_body.g-media_body-management {
    background: #d5e6f7;
  }
  .panel-link .g-media_body.g-media_body-financial {
    background: #dfe6df;
  }
  .panel-link .g-media_body.g-media_body-esg {
    background: #ede8e6;
  }
  .panel-link .g-media_body.g-media_body-stock {
    background: #e3e7fa;
  }
  .panel-link .g-media_body.g-media_body-library {
    background: #f2f2df;
  }
  .panel-link .g-media_body.g-media_body-calendar {
    background: #e1f7f7;
  }
  .panel-link .g-media_body.g-media_body-personal {
    background: #e6ebf0;
  }
  .panel-link .g-media_body_inner .g-media_text,
  .panel-link a:hover .g-media_body_inner .g-media_text {
    display: none;
  }
  .panel-link .g-media_body_inner {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
        -ms-flex-align: center;
            align-items: center;
    padding: 0 20px;
  }
}

.g-media_left-calender {
  position: relative;
}

.g-media_left-calender .g-p {
  position: absolute;
  top: 12%;
  left: 9%;
  z-index: 1;
  margin: 0;
  color: #fff;
}

@media only screen and (max-width: 990px) {
  .g-media_left-calender .g-p {
    font-size: 1.4vw;
  }
}

@media only screen and (max-width: 768px) {
  .g-media_left-calender .g-p {
    font-size: 3vw;
  }
}

.g-column-aside {
  padding: 20px 10px 20px 25px;
  background-color: #ebf7fd;
}

.g-column-aside .g-hover {
  text-decoration: none;
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

.g-column-aside .g-hline_el {
  display: block;
}

@media only screen and (max-width: 768px) {
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
  .g-column-aside .g-hline_el {
    display: inline-block;
  }
}

.img-border {
  display: block;
  border: 1px solid #d0d5d9;
}

.g-media_left .img-border {
  width: calc(100% - 2px);
}

@media only screen and (max-width: 768px) {
  .g-grid-4 > .jira-logo.g-grid_el {
    padding-top: 20px;
  }
}
