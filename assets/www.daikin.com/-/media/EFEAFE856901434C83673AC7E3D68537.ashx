.g-ttl-press {
  color: #737373;
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 25px;
}

.g-meta {
  margin-bottom: 15px;
}

.g-meta_date, .g-meta_category {
  display: inline-block;
  vertical-align: middle;
}

.g-meta_date {
  margin: 0 10px 0 0;
}

.g-category {
  font-size: 0;
  margin: -10px 0 0 -10px;
}

.g-category_el {
  display: inline-block;
  margin: 10px 0 0 10px;
}

.g-category_label {
  font-size: 11px;
  text-align: left;
  vertical-align: top;
  display: inline-block;
  background: #eef2f5;
  width: auto;
  padding-right: 10px;
  overflow: hidden;
}

.g-category_label > img {
  float: left;
  padding-right: 10px;
}

.g-category_label > span {
  line-height: 22px;
  display: inline-block;
  vertical-align: middle;
}

.g-headline {
  margin-bottom: 20px;
}

.g-headline_ttl {
  font-size: 24px;
  font-weight: bold;
  margin: 5px 0;
}

.g-headline_sub {
  font-size: 16px;
  margin: 0;
}

.g-ttl-sub {
  display: inline-block;
  padding-left: 1em;
  font-size: 14px;
  font-weight: normal;
}

.g-section-lv2 {
  border: none;
}

.g-hr-press {
  margin: 25px 0;
}

.g-signature {
  font-size: 12px;
  text-align: right;
  margin-top: 20px;
}

.g-bold {
  font-weight: bold;
}

.g-table_el .g-talign-r {
  text-align: right;
}

.g-table_el th.g-talign-c {
  text-align: center;
}

.g-table_el .g-table-gray {
  background: #f3f3f3;
}

.g-table_el .g-table-blue {
  background: #eafafd;
}

.g-table_el .g-table-orange {
  background: #fdf4e6;
}

.g-flist {
  margin-bottom: 17px;
}

.g-flist_item {
  display: table-row;
}

.g-flist_mark {
  display: table-cell;
  padding-right: 5px;
  white-space: nowrap;
}

.g-flist_text {
  display: table-cell;
}

.g-media-auto .g-media_left img {
  max-width: 100%;
  width: auto;
}

.g-media-auto .g-media_caption {
  margin-top: 5px;
  font-size: 12px;
}

.download {
  position: relative;
  padding: 30px 30px 15px;
  background: #edf2f5;
}

.download_img {
  height: 105px;
  overflow: hidden;
  background: #fff;
}

.download_img img {
  position: relative;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  width: 100%;
}

.download_img img.is-vertical {
  width: auto;
  height: 100%;
}

.download_img img.is-fit {
  width: auto;
  max-height: 100%;
}

.download_size {
  padding-left: .5em;
  color: #000;
}

.download_name, .download_size,
.no-touchevents .g-hover:hover .download_name,
.no-touchevents .g-hover:hover .download_size {
  display: inline-block;
  vertical-align: top;
}

.download-contract {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  display: none;
  width: 100%;
  min-height: 100%;
  padding: 35px 35px 0;
  background-color: rgba(0, 0, 0, 0.75);
}

.download-contract_text {
  color: #fff;
}

.download-contract_btn {
  overflow: hidden;
  text-align: center;
}

.g-link.g-prev::before {
  top: -.1em !important;
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
      transform: rotate(180deg);
}

@media only screen and (max-width: 768px) {
  .g-page-dept .g-main {
    padding-top: 25px;
  }
}

@media only screen and (max-width: 480px) {
  .g-ttl-sub {
    display: block;
    padding-left: 0;
  }
}
