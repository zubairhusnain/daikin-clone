(window.webpackJsonp = window.webpackJsonp || []).push([
  ["topMainVisual"],
  {
    114: function (i, t, n) {
      "use strict";
      n.d(t, "a", function () {
        return e;
      });
      class e {
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
    115: function (i, t, n) {
      "use strict";
      n.r(t),
        n.d(t, "default", function () {
          return w;
        });
      n(53), n(112), n(113);
      var e = n(110),
        s = n.n(e),
        d = n(111),
        h = n.n(d),
        r = n(47),
        o = n.n(r),
        a = n(114);
      function w() {
        var i = new o.a().getResult(),
          t = new a.a(),
          n = document.querySelectorAll(".air-main-bg__item");
        t.add(function () {
          var t = [...n],
            e = null;
          (e =
            "Android" === i.os.name || "iOS" === i.os.name
              ? screen.height + "px"
              : window.outerHeight + "px"),
            t.forEach((i) => {
              i.style.height = e;
            });
        }),
          s.a.init({
            reset: !1,
            elemCushion: 0.35,
            callback: function (i, t) {
              var e = i.className;
              "visible" === t &&
                (e.includes("air-main-visual")
                  ? (n[1].classList.add("-is-visible"),
                    n[2].classList.remove("-is-visible"))
                  : e.includes("air-ideal") &&
                    (n[1].classList.remove("-is-visible"),
                    n[2].classList.add("-is-visible")));
            },
          });
        t.add(() => {
          var i = window.matchMedia(
              "(min-width:481px) and (max-width:768px)"
            ).matches,
            t = document.querySelector("#ideal"),
            n = window.innerHeight + "px";
          t.style.height = i ? n : "auto";
        });
        for (
          var d = new h.a(
              { duration: 2e3, easing: "easeOutQuad" },
              {
                easeOutQuad: function (i, t, n, e) {
                  return (i /= e / 2) < 1
                    ? (n / 2) * i * i * i + t
                    : (n / 2) * ((i -= 2) * i * i + 2) + t;
                },
              }
            ),
            r = document.getElementsByClassName("js-trigger"),
            w = 0;
          w < r.length;
          w++
        )
          d.registerTrigger(r[w]);
        t.init();
      }
    },
  },
]);
