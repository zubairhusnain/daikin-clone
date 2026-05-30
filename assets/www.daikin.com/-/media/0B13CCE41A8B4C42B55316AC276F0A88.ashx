@charset "utf-8";


/* ---------- ---------- ---------- 
	::index::

 A. Modules

---------- ---------- ---------- */


/* A. Modules
---------- ---------- ---------- */
.Section ul:after {
  content: "";
  display: block;
  clear: both;
}
.Section ul li {
  position: relative;
  margin-bottom: 30px;
}
.Section ul li img {
  position: relative;
}
.Section ul li div {
  position: absolute;
  bottom: 0;
  width: 100%;
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.6);
}
.Section ul li div dl {
  margin-bottom: 0;
  padding: 10px 20px 5px;
  color: #FFF;
  line-height: 1.5;
}
.Section ul li div dl dt {
  font-size: 129%; /* 18px */
  font-weight: bold;
  text-shadow: 0px 2px 2px rgba(54, 56, 58, 1);
}
.Section ul li div dl dd {
  font-size: 86%; /* 12px */
}