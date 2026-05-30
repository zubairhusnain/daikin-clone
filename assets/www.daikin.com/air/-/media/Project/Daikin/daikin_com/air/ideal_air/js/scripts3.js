!(function (e) {
  function t(t) {
    for (
      var n, a, u = t[0], s = t[1], c = t[2], d = 0, f = [];
      d < u.length;
      d++
    )
      (a = u[d]),
        Object.prototype.hasOwnProperty.call(o, a) && o[a] && f.push(o[a][0]),
        (o[a] = 0);
    for (n in s) Object.prototype.hasOwnProperty.call(s, n) && (e[n] = s[n]);
    for (l && l(t); f.length;) f.shift()();
    return i.push.apply(i, c || []), r();
  }
  function r() {
    for (var e, t = 0; t < i.length; t++) {
      for (var r = i[t], n = !0, u = 1; u < r.length; u++) {
        var s = r[u];
        0 !== o[s] && (n = !1);
      }
      n && (i.splice(t--, 1), (e = a((a.s = r[0]))));
    }
    return e;
  }
  var n = {},
    o = { main: 0 },
    i = [];
  function a(t) {
    if (n[t]) return n[t].exports;
    var r = (n[t] = { i: t, l: !1, exports: {} });
    return e[t].call(r.exports, r, r.exports, a), (r.l = !0), r.exports;
  }
  (a.e = function (e) {
    var t = [],
      r = o[e];
    if (0 !== r)
      if (r) t.push(r[2]);
      else {
        var n = new Promise(function (t, n) {
          r = o[e] = [t, n];
        });
        t.push((r[2] = n));
        var i,
          u = document.createElement("script");
        (u.charset = "utf-8"),
          (u.timeout = 120),
          a.nc && u.setAttribute("nonce", a.nc),
          (u.src = (function (e) {
            return (
              a.p +
              "" +
              ({
                fadeInSlider: "fadeInSlider",
                airIdeal: "airIdeal",
                topMainVisual: "topMainVisual",
              }[e] || e) +
              "nomodulebundle js"
            );
          })(e));
        var s = new Error();
        i = function (t) {
          (u.onerror = u.onload = null), clearTimeout(c);
          var r = o[e];
          if (0 !== r) {
            if (r) {
              var n = t && ("load" === t.type ? "missing" : t.type),
                i = t && t.target && t.target.src;
              (s.message =
                "Loading chunk " + e + " failed.\n(" + n + ": " + i + ")"),
                (s.name = "ChunkLoadError"),
                (s.type = n),
                (s.request = i),
                r[1](s);
            }
            o[e] = void 0;
          }
        };
        var c = setTimeout(function () {
          i({ type: "timeout", target: u });
        }, 12e4);
        (u.onerror = u.onload = i), document.head.appendChild(u);
      }
    return Promise.all(t);
  }),
    (a.m = e),
    (a.c = n),
    (a.d = function (e, t, r) {
      a.o(e, t) || Object.defineProperty(e, t, { enumerable: !0, get: r });
    }),
    (a.r = function (e) {
      "undefined" != typeof Symbol &&
        Symbol.toStringTag &&
        Object.defineProperty(e, Symbol.toStringTag, { value: "Module" }),
        Object.defineProperty(e, "__esModule", { value: !0 });
    }),
    (a.t = function (e, t) {
      if ((1 & t && (e = a(e)), 8 & t)) return e;
      if (4 & t && "object" == typeof e && e && e.__esModule) return e;
      var r = Object.create(null);
      if (
        (a.r(r),
          Object.defineProperty(r, "default", { enumerable: !0, value: e }),
          2 & t && "string" != typeof e)
      )
        for (var n in e)
          a.d(
            r,
            n,
            function (t) {
              return e[t];
            }.bind(null, n)
          );
      return r;
    }),
    (a.n = function (e) {
      var t =
        e && e.__esModule
          ? function () {
            return e.default;
          }
          : function () {
            return e;
          };
      return a.d(t, "a", t), t;
    }),
    (a.o = function (e, t) {
      return Object.prototype.hasOwnProperty.call(e, t);
    }),
    (a.p = "/-/media/Project/Daikin/daikin_com/air/js/"),
    (a.oe = function (e) {
      throw (console.error(e), e);
    });
  var u = (window.webpackJsonp = window.webpackJsonp || []),
    s = u.push.bind(u);
  (u.push = t), (u = u.slice());
  for (var c = 0; c < u.length; c++) t(u[c]);
  var l = s;
  i.push([167, "vendor"]), r();
})({
  167: function (e, t, r) {
    r(168), (e.exports = r(378));
  },
  168: function (e, t, r) {
    "use strict";
    r.r(t);
    r(169), r(152), r(371), r(372), r(373);
  },
  378: function (e, t, r) {
    "use strict";
    r.r(t);
    r(103),
      r(104),
      r(106),
      r(139),
      r(131),
      r(152),
      r(374),
      r(126),
      r(136),
      r(120),
      r(105);
    var n = r(156),
      o = r.n(n),
      i = r(157),
      a = r.n(i);
    function u(e, t) {
      var r = { time: !1, complete: !1 },
        n = 3e3,
        i = document.querySelector(".brand-Wrapper"),
        u = t.filter(Boolean),
        s = new o.a.Circle(e, {
          color: "#0097e0",
          trailColor: "#eee",
          strokeWidth: 1,
          trailWidth: 1,
          easing: "easeInOut",
          duration: 2e3,
        });
      function c() {
        r.time && r.complete && i.classList.add("-is-loaded");
      }
      i.classList.add("-is-start"),
        setTimeout(function () {
          r.time = !0;
        }, n),
        Object.getOwnPropertyNames(r).forEach(function (e) {
          return (function (e, t, r) {
            var n = e[t];
            Object.defineProperty(e, t, {
              get: function () {
                return n;
              },
              set: function (e) {
                var t = n;
                (n = e), r(t, e);
              },
              configurable: !0,
            });
          })(r, e, c);
        });
      var l = new a.a.LoadQueue();
      l.setMaxConnections(6),
        l.on("progress", function (e) {
          var t = e.progress.toFixed(1);
          s.animate(t),
            1 === e.progress &&
            ((r.complete = !0),
              r.time && r.complete && i.classList.add("-is-loaded"));
        }),
        l.loadManifest(u, !1),
        l.load();
    }
    var s = r(155),
      c = r.n(s);
    function l(e, t, r, n, o, i, a) {
      try {
        var u = e[i](a),
          s = u.value;
      } catch (e) {
        return void r(e);
      }
      u.done ? t(s) : Promise.resolve(s).then(n, o);
    }
    function d(e) {
      return function () {
        var t = this,
          r = arguments;
        return new Promise(function (n, o) {
          var i = e.apply(t, r);
          function a(e) {
            l(i, n, o, a, u, "next", e);
          }
          function u(e) {
            l(i, n, o, a, u, "throw", e);
          }
          a(void 0);
        });
      };
    }
    function f(e, t) {
      for (var r = 0; r < t.length; r++) {
        var n = t[r];
        (n.enumerable = n.enumerable || !1),
          (n.configurable = !0),
          "value" in n && (n.writable = !0),
          Object.defineProperty(e, n.key, n);
      }
    }
    new ((function () {
      function e() {
        !(function (e, t) {
          if (!(e instanceof t))
            throw new TypeError("Cannot call a class as a function");
        })(this, e),
          (this.ua = new c.a()),
          (this.uaResult = this.ua.getResult()),
          (this.homeHero = document.querySelector("#js-air-hero")),
          (this.airIdeal = document.querySelector("#js-air-ideal")),
          (this.slider = document.querySelector(".js-slider")),
          (this.IEPositionFixedBugFix = function () {
            event.preventDefault();
            var e = event.wheelDelta,
              t = window.pageYOffset;
            window.scrollTo(0, t - e);
          }),
          this.bind();
      }
      var t, n, o;
      return (
        (t = e),
        (n = [
          {
            key: "bind",
            value: function () {
              if (this.homeHero) {
                (navigator.userAgent.match(/MSIE 10/i) ||
                  navigator.userAgent.match(/Trident\/7\./) ||
                  navigator.userAgent.match(/Edge\/12\./)) &&
                  document
                    .querySelector("body")
                    .addEventListener("mousewheel", this.IEPositionFixedBugFix);
                for (
                  var e = document.querySelectorAll("img"), t = [], n = 0;
                  n < e.length;
                  n++
                )
                  t.push(e[n].src);
                d(
                  regeneratorRuntime.mark(function e() {
                    var n;
                    return regeneratorRuntime.wrap(function (e) {
                      for (; ;)
                        switch ((e.prev = e.next)) {
                          case 0:
                            return (e.next = 2), u("#js-progress", t);
                          case 2:
                            return (
                              (e.next = 4),
                              Promise.all([
                                r.e("vendor"),
                                r.e("topMainVisual"),
                              ]).then(r.bind(null, 382))
                            );
                          case 4:
                            return (n = e.sent), (e.next = 7), n.default();
                          case 7:
                          case "end":
                            return e.stop();
                        }
                    }, e);
                  })
                )();
              }
              if (this.airIdeal) {
                for (
                  var o = document.querySelectorAll("img"),
                  i = document.querySelector("#js-main-video"),
                  a = [],
                  s = 0;
                  s < o.length;
                  s++
                )
                  a.push(o[s].src);
                "mobile" === this.ua.getDevice().type &&
                  a.some(function (e, t) {
                    -1 !== e.indexOf("img_ideal-image-slider-sp") &&
                      a.splice(t, 1);
                  }),
                  a.push(i.currentSrc),
                  d(
                    regeneratorRuntime.mark(function e() {
                      var t;
                      return regeneratorRuntime.wrap(function (e) {
                        for (; ;)
                          switch ((e.prev = e.next)) {
                            case 0:
                              return (e.next = 2), u("#js-progress", a);
                            case 2:
                              return (
                                (e.next = 4),
                                Promise.all([
                                  r.e("vendor"),
                                  r.e("airIdeal"),
                                ]).then(r.bind(null, 383))
                              );
                            case 4:
                              return (t = e.sent), (e.next = 7), t.default();
                            case 7:
                            case "end":
                              return e.stop();
                          }
                      }, e);
                    })
                  )();
              }
              this.slider &&
                d(
                  regeneratorRuntime.mark(function e() {
                    var t;
                    return regeneratorRuntime.wrap(function (e) {
                      for (; ;)
                        switch ((e.prev = e.next)) {
                          case 0:
                            return (
                              (e.next = 2),
                              r.e("fadeInSlider").then(r.bind(null, 384))
                            );
                          case 2:
                            return (t = e.sent), (e.next = 5), t.default();
                          case 5:
                          case "end":
                            return e.stop();
                        }
                    }, e);
                  })
                )();
            },
          },
        ]) && f(t.prototype, n),
        o && f(t, o),
        e
      );
    })())();
  },
});
