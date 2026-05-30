(function ($) {
  var youtubeLink = $(".js-brand-MovieModal");
  var youtubeId = youtubeLink.attr("href").split("?v=")[1];
  if(!youtubeId.length) return;
  // popup movie
  youtubeLink.unbind().click(function (e) {
    e.preventDefault();
    var obj = $(".brand-MovieModal").clone();
    obj
      .appendTo($(".brand-Wrapper"))
      .fadeIn()
      .find(".brand-MovieModal__close a")
      .click(function () {
        obj.fadeOut(function () {
          obj.remove();
        });
        return false;
      });
    obj
      .find(".brand-MovieModal__youtube > div")
      .append(
        $.parseHTML(
          '<iframe src="https://www.youtube.com/embed/' +
            youtubeId +
            '?autoplay=1&showinfo=0" frameborder="0" allowfullscreen></iframe>'
        )
      );
  });
})($brand);
