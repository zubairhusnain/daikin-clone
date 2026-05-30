(window.webpackJsonp = window.webpackJsonp || []).push([
  ["airIdeal"],
  {
    114: function (i, t, e) {
      "use strict";
      e.d(t, "a", function () {
        return n;
      });
      class n {
        constructor() {
          (this.userAgent = navigator.userAgent),
            (this.$window = null),
            (this.currentWindowWidth = 0),
            (this.windowWidth = 0),
            (this.windowHeight = 0),
            (this.functions = []),
            (this.length = 0),
            (this.fps = 60),
            (this.resizeEvent = null),
            (this.spResizeEvent = null),
            (this.isRunning = !1),
            this.init(),
            this.update(),
            this.add(),
            this.remove();
        }
        init() {
          (this.$window = window),
            this.update(),
            (this.resizeEvent = () => {
              this.isRunning ||
                ((this.isRunning = !0),
                  window.requestAnimationFrame
                    ? window.requestAnimationFrame(() => {
                      this.update(),
                        (this.currentWindowWidth = this.$window.innerWidth);
                    })
                    : setTimeout(() => {
                      this.update(),
                        (this.currentWindowWidth = this.$window.innerWidth);
                    }, 1e3 / this.fps));
            }),
            (this.spResizeEvent = () => {
              this.currentWindowWidth !== this.$window.innerWidth &&
                (this.isRunning ||
                  ((this.currentWindowWidth = this.$window.innerWidth),
                    (this.isRunning = !0),
                    window.requestAnimationFrame(() => {
                      this.update();
                    })));
            }),
            this.userAgent.indexOf("iPhone") >= 0 ||
              this.userAgent.indexOf("iPad") >= 0 ||
              this.userAgent.indexOf("Android") >= 0
              ? ((this.currentWindowWidth = this.$window.innerWidth),
                this.$window.addEventListener("resize", this.spResizeEvent),
                this.$window.addEventListener(
                  "orientationchange",
                  this.spResizeEvent
                ))
              : (this.$window.addEventListener("resize", this.resizeEvent),
                this.$window.addEventListener(
                  "orientationchange",
                  this.resizeEvent
                ));
        }
        add(i) {
          this.functions.push(i), (this.length = this.functions.length);
        }
        remove(i) {
          this.functions.splice(i, 1), (this.length = this.functions.length);
        }
        update() {
          (this.windowWidth = this.$window.innerWidth),
            (this.windowHeight = this.$window.innerHeight);
          for (var i = 0; i < this.length; i++) {
            (0, this.functions[i])();
          }
          this.isRunning = !1;
        }
      }
    },
    116: function (i, t, e) {
      "use strict";
      e.r(t),
        e.d(t, "default", function () {
          return h;
        });
      var n = e(110),
        s = e.n(n),
        r = e(111),
        o = e.n(r),
        d = e(114);
      function h() {
        var i = document.querySelector("#js-air-ideal"),
          t = document.querySelectorAll(".js-video"),
          e = new d.a();
        e.add(() => {
          var t = document.querySelector("#HeaderWrap")
            , e = document.querySelector("#GlobalNavWrap")
            , s = t.clientHeight + e.clientHeight
            , r = window.innerHeight - s + "px";
          i.style.height = r;
        }),
          e.init();
        new IntersectionObserver(
          function (i) {
            i.forEach((i) => {
              i.intersectionRatio > 0.5
                ? i.target.classList.remove("-is-hidden")
                : i.target.classList.add("-is-hidden");
            });
          },
          { root: null, rootMargin: "0px", threshold: 0.5 }
        ).observe(i),
          s.a.init({
            reset: !1,
            elemCushion: 0.25,
            callback: function (i, e) {
              "visible" === e
                ? "ideal-Image" === i.className &&
                t.forEach((i) => {
                  i.play();
                })
                : "noreset" === e &&
                "ideal-Image" === i.className &&
                t.forEach((i) => {
                  i.pause();
                });
            },
          });
        var n = document.querySelector("#js-scroll-down");
        window.addEventListener("scroll", () => {
          var i = !1,
            t = window.scrollY || window.pageYOffset;
          i ||
            window.requestAnimationFrame(() => {
              t > 50
                ? n.classList.add("-is-scroll-down")
                : n.classList.remove("-is-scroll-down"),
                (i = !0);
            }),
            (i = !1);
        });
        for (
          var r = new o.a(
            { duration: 2e3, easing: "easeOutQuad" },
            {
              easeOutQuad: function (i, t, e, n) {
                return (i /= n / 2) < 1
                  ? (e / 2) * i * i * i + t
                  : (e / 2) * ((i -= 2) * i * i + 2) + t;
              },
            }
          ),
          h = document.querySelectorAll(".js-trigger"),
          a = 0;
          a < h.length;
          a++
        )
          r.registerTrigger(h[a]);
      }
    },
  },
]);
