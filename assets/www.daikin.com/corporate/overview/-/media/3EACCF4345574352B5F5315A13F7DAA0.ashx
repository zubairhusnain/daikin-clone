.mainVisual {
  position: relative;
}

.mainVisual .g-img {
  vertical-align: top;
  width: 100%;
}

.mainTxtBox {
  position: absolute;
  width: 65%;
  top: 15%;
  right: 3%;
}

.mainTxtBox .messages {
  margin-bottom: 30px;
  font-size: 20px;
  font-weight: bold;
  line-height: 1.3;
  color: #00CDFF;
}

.mainTxtBox .names {
  text-align: right;
  margin: 0;
}

@media screen and (max-width: 900px) {
  .mainTxtBox .messages {
    margin-bottom: 10px;
    font-size: 1.8vw;
  }
  .mainTxtBox .names {
    font-size: 1.4vw;
  }
}

@media screen and (max-width: 768px) {
  .mainTxtBox .messages {
    margin-bottom: 3%;
    font-size: 3vw;
  }
  .mainTxtBox .names {
    font-size: 2.4vw;
  }
}

@media screen and (max-width: 530px) {
  .mainTxtBox {
    position: absolute;
    top: 13.315%;
    right: 10px;
  }
}

@media screen and (max-width: 450px) {
  .mainTxtBox {
    position: absolute;
    top: 6%;
  }
}

@media screen and (max-width: 350px) {
  .mainTxtBox .messages {
    margin-bottom: 0;
    font-size: 10px;
  }
  .mainTxtBox .names {
    font-size: 10px;
  }
}
