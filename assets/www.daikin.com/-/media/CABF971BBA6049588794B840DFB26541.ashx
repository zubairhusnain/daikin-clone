.g-main {
  padding: 0 !important;
}

.brand-ContentsArea_inner {
  padding-top: 42px;
  padding-bottom: 70px;
}

@media screen and (max-width: 768px) {
  .brand-ContentsArea_inner {
    padding-top: 27px;
  }
}

.category-Hero {
  position: relative;
}

.category-Hero_inner {
  background: 50% 0 no-repeat;
  background-size: cover;
  min-height: 340px;
}

@media screen and (max-width: 768px) {
  .category-Hero_inner {
    min-height: 220px;
  }
}

@media screen and (max-width: 480px) {
  .category-Hero_inner {
    min-height: 135px;
  }
}

.category-Hero_hd {
  font-size: calc(30 / var(--font-size-root) * 1rem);
  position: absolute;
  top: 83px;
  left: 50%;
  transform: translateX(-480px);
  color: #fff;
  line-height: 1.57;
}

@media screen and (max-width: 768px) {
  .category-Hero_hd {
    font-size: calc(20 / var(--font-size-root) * 1rem);
    position: static;
    width: 100%;
    box-sizing: border-box;
    background-color: #009acf;
    transform: initial;
  }
}

@media only screen and (min-width: 768.1px) and (max-width: 1000px) {
  .category-Hero_hd {
    left: 0;
    transform: translateX(15px);
  }
}

@media print {
  .category-Hero_hd {
    left: 0;
    transform: initial;
  }
}

.category-Hero_hd span {
  font-weight: bold;
  display: block;
  float: left;
  padding: 0 20px;
  background-color: #009acf;
  background-color: rgba(0, 154, 207, 0.8);
}

@media screen and (max-width: 768px) {
  .category-Hero_hd span {
    float: none;
    padding: 10px 15px 9px;
  }
}

.category-Hero_hd span + span {
  clear: both;
}

.category-Lead {
  font-size: calc(22 / var(--font-size-root) * 1rem);
  margin-bottom: 20px;
  line-height: 1.57;
  color: #000;
  font-weight: bold;
}

@media screen and (max-width: 768px) {
  .category-Lead {
    margin-bottom: 17px;
  }
}

.category-Text {
  font-size: calc(17 / var(--font-size-root) * 1rem);
  margin-bottom: 32px;
  line-height: 1.57;
}

@media screen and (max-width: 768px) {
  .category-Text {
    font-size: calc(14 / var(--font-size-root) * 1rem);
    margin-bottom: 20px;
  }
}

.category-Nav {
  display: grid;
  gap: 40px 30px;
  grid-template-columns: 1fr 1fr;
}

@media screen and (max-width: 480px) {
  .category-Nav {
    grid-template-columns: 1fr;
  }
}

.category-Nav_title {
  font-size: calc(15 / var(--font-size-root) * 1rem);
  line-height: 1.57;
  color: var(--color-heading);
  font-weight: bold;
  margin-bottom: 9px;
}

.category-Nav_img {
  margin-bottom: 17px;
}

.category-Nav_img img {
  width: 100%;
  max-width: 100%;
}

.category-Nav_text {
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
  margin-bottom: 20px;
}

.category-Button {
  display: inline-block;
  color: #fff !important;
  background: var(--color-button-bg);
  font-weight: bold;
  text-align: center;
  padding: 12px;
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
  padding-top: 10px;
  padding-bottom: 11px;
}

.category-Button:hover, .category-Button:focus {
  background: var(--color-button-bg-hover);
}

.category-Button:before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_blue.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
}

@media screen and (max-width: 480px) {
  .category-Button {
    display: block;
  }
}

.category-LinkList {
  font-size: calc(14 / var(--font-size-root) * 1rem);
  line-height: 1.57;
  font-weight: bold;
  display: grid;
  grid-template-columns: 1fr;
  gap: 10px;
}

.category-LinkList a {
  color: var(--color-link-text);
}

.category-LinkList a:visited {
  color: var(--color-link-text-visited-com);
}

.category-LinkList a:hover, .category-LinkList a:focus, .category-LinkList a:active {
  color: var(--color-link-text);
  text-decoration: underline;
}

.category-LinkList a::before {
  content: "";
  position: relative;
  display: inline-block;
  background: url("/daikin-clone/daikin_offline/assets/www.daikin.com/-/media/Project/Daikin/daikin_com/air/common/images/icon/icon_link_arrow_10_blue.svg") 0 0 no-repeat;
  width: 10px;
  height: 10px;
  margin-right: 4px;
  top: -0.05em;
}
