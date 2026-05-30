.press {
  padding-bottom: 20px;
}

/* aside */
.press-sidebar .press-form {
  margin: 19px 0 15px;
  padding: 0 10px;
}

.press-sidebar .press-form_date {
  display: block;
  margin-top: 10px;
}

.press-sidebar .press-form_checkbox > li {
  float: none;
  width: 100%;
}

.press-sidebar .press-form_checkbox > li:first-child {
  margin-top: 0;
}

.press-sidebar_hd div {
  font-size: 14px;
}

/* form */
.press-form {
  padding: 30px;
  overflow: visible;
}

.press-form_ttl {
  font-size: 13px;
  font-weight: bold;
  margin-bottom: 10px;
}

.press-form_input[type="text"] {
  margin: 0;
  padding: 7px 8px 6px;
  width: 100%;
}

.press-form_date {
  line-height: 1;
  display: inline-block;
}

.press-form_date > span {
  font-size: 13px;
  vertical-align: middle;
}

.press-form_select > select {
  font-size: 13px;
  display: inline-block;
  background: #fff url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/press/images/ic_select.png") no-repeat 100% 50%;
  vertical-align: middle;
  padding: 3px 5px 2px;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  cursor: pointer;
}

.press-form_select > select::-ms-expand {
  display: none;
}

.press-form_select > select[name="dateFromYear"], .press-form_select > select[name="dateToYear"] {
  width: 80px;
}

.press-form_select > select[name="dateFromMonth"], .press-form_select > select[name="dateToMonth"] {
  width: 60px;
}

.press-form_checkbox {
  margin-left: -30px;
  overflow: hidden;
}

.press-form_checkbox > li {
  font-size: 13px;
  width: 33.333%;
  float: left;
  margin-top: 10px;
  padding-left: 30px;
  box-sizing: border-box;
  position: relative;
}

.press-form_checkbox > li > input {
  margin: auto;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 40px;
}

.press-form_checkbox > li > input:checked + .press-form_label {
  background: #fff;
}

.press-form_checkbox > li > input:checked + .press-form_label .press-form_label-on {
  display: inherit;
}

.press-form_checkbox > li > input:checked + .press-form_label .press-form_label-off {
  display: none;
}

.press-form_label {
  line-height: 1.3;
  display: table;
  background: -webkit-linear-gradient(#fff, #f2f2f2);
  background: linear-gradient(#fff, #f2f2f2);
  width: 100%;
  padding: 0 5px 0 32px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  cursor: pointer;
}

.press-form_label > i,
.press-form_label > span {
  display: table-cell;
  vertical-align: middle;
}

.press-form_label > i {
  width: 30px;
  padding: 8px 0;
}

.press-form_label-on {
  display: none;
}

.press-btn {
  white-space: nowrap;
  margin: auto;
  width: 100%;
  border: none;
  cursor: pointer;
}

.press-btn:hover {
  background-color: #666 !important;
}

.press-btn > i {
  color: #fff;
  font-size: 15px;
  margin-right: 0;
  margin-left: 10px;
}

/* main */
.press-body.is-hidden {
  visibility: hidden;
}

.press-tab-nav {
  display: none;
}

/* pbox */
.press-status {
  margin-bottom: 35px;
}

.press-status ._totalhits {
  font-weight: bold;
}

.press-status br {
  display: none;
}

.press-result ._record {
  margin-top: 40px;
  padding-bottom: 20px;
  border-bottom: 1px solid #d2d6d9;
  overflow: hidden;
}

.press-result ._record:first-child {
  margin-top: 0;
}

.press-result ._info {
  line-height: 22px;
  margin-bottom: 15px;
  overflow: hidden;
}

.press-result ._date {
  font-size: 12px;
  display: inline-block;
  text-align: right;
  float: right;
  margin: 0;
}

.press-result ._title {
  margin: 0;
}

.press-result ._title > a {
  color: #09c;
  font-size: 16px;
  display: inline-block;
  text-indent: -14px;
  padding-left: 14px;
}

.press-result ._title > a:before {
  content: "";
  position: relative;
  display: inline-block;
  vertical-align: middle;
  top: -2px;
  left: 0;
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dil_common/images/mkr_sprite.png");
  background-repeat: no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
  background-position: -20px -20px;
}

.press-result ._nearby {
  margin: 10px 0 0;
}

.press-result ._nearby > em {
  font-style: normal;
  font-weight: bold;
  background: #eafafd;
}

.press-result ._url {
  margin: 5px 0 0;
}

.press-result ._url > a {
  color: #666;
  font-size: 12px;
  line-height: 1.35;
  display: inline-block;
  word-break: break-all;
}

.press-result-index {
  margin-top: 40px;
}

.press-result-index ._date {
  font-size: 18px;
  font-weight: bold;
  display: block;
  text-align: left;
  float: none;
  margin-bottom: 15px;
}

.press-pagenav {
  font-size: 0;
  font-weight: bold;
  text-align: center;
  margin-top: 40px;
}

.press-pagenav a {
  color: #09c;
}

.press-pagenav > span {
  font-size: 14px;
  display: inline-block;
}

.press-pagenav ._prev,
.press-pagenav ._next {
  display: inline-block;
}

.press-pagenav ._prev > a,
.press-pagenav ._next > a {
  display: inline-block;
}

.press-pagenav ._prev > a:before,
.press-pagenav ._next > a:after {
  content: "";
  display: inline-block;
  vertical-align: baseline;
  background-image: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/dil_common/images/mkr_sprite.png");
  background-repeat: no-repeat;
  width: 10px;
  height: 10px;
}

.press-pagenav ._prev {
  margin-right: 15px;
}

.press-pagenav ._prev > a:before {
  margin-right: 4px;
  background-position: -40px -20px;
}

.press-pagenav ._prev + ._page {
  border-left-width: 1px;
}

.press-pagenav ._next {
  margin-left: 15px;
}

.press-pagenav ._next > a:after {
  margin-left: 4px;
  background-position: -20px -20px;
}

.press-pagenav ._page {
  background-color: #fff;
  display: inline-block;
  text-align: center;
  width: 50px;
  height: 35px;
  line-height: 35px;
  margin-left: -1px;
  border: 1px solid #d2d6d9;
}

.press-pagenav ._page > a {
  color: #09c;
  display: block;
}

.press-pagenav ._page.is-hidden {
  display: none;
}

.press-pagenav ._cur {
  color: #fff;
  background: #9ca6ab;
}

.press-pagenav-top {
  display: none;
}

@media only screen and (max-width: 900px) {
  .press-form_checkbox {
    margin-left: -20px;
    overflow: hidden;
  }
  .press-form_checkbox > li {
    padding-left: 20px;
  }
  .press-form_checkbox > li > input {
    left: 30px;
  }
}

/* body */
.press-type {
  color: #737373;
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 25px;
}

.press-info {
  margin-bottom: 15px;
}

.press-date {
  display: inline-block;
  vertical-align: top;
  margin: 0;
}

.press-hd {
  margin-bottom: 20px;
}

.press-hd_subttl {
  font-size: 16px;
  margin: 0;
}

.press-hd_ttl {
  font-size: 24px;
  font-weight: bold;
  margin: 5px 0;
}

@media only screen and (max-width: 768px) {
  .press-sidebar {
    display: none;
  }
  .press-form {
    margin: 0;
    padding: 10px;
  }
  .press-form_date {
    display: block;
    margin-top: 10px;
  }
  .press-form_select > select {
    padding: 7px 8px 6px;
  }
  .press-form_select > select[name="dateFromYear"], .press-form_select > select[name="dateToYear"] {
    width: 100px;
  }
  .press-form_select > select[name="dateFromMonth"], .press-form_select > select[name="dateToMonth"] {
    width: 100px;
  }
  .press-form_checkbox {
    margin-left: 0;
    overflow: hidden;
  }
  .press-form_checkbox > li {
    width: 100%;
    padding: 0;
  }
  .press-form_checkbox > li:first-child {
    margin-top: 0;
  }
  .press-form_checkbox > li > input {
    left: 10px;
  }
  .press-status {
    margin-bottom: 17px;
  }
  .press-status br {
    display: inherit;
  }
  .press-result ._record {
    margin-top: 15px;
  }
  .press-result ._title {
    line-height: 1.35;
  }
  .press-result ._nearby {
    line-height: 1.5;
  }
  .press-result-index {
    margin-top: 20px;
  }
  .press-result-index ._date {
    font-size: 16px;
  }
  .press-pagenav {
    margin-top: 20px;
  }
  .press-pagenav ._prev,
  .press-pagenav ._next {
    display: block;
  }
  .press-pagenav ._prev {
    text-align: left;
    margin: 0 0 12px;
  }
  .press-pagenav ._next {
    text-align: right;
    margin: 12px 0 0;
  }
  .press-pagenav-top {
    display: block;
    margin-bottom: 20px;
  }
}

.is-hidden {
  display: none;
}
