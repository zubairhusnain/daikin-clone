'use strict';

/** --------------------------------------------------
 * PRESS RELEASES
** --------------------------------------------------*/

window._NEWS_DATA = [

  {
    type: [2],
    date: '21 September 2021',
    text: 'Daikin Group Releases Its Sustainability Report 2021',
    url: '/press/2021/210921/index.html',
    blank: false
  },
  
  {
    type: [3],
    date: '27 July 2021',
    text: 'Daikin Invests in OCSiAl to Globally Accelerate Application Development of Lithium Ion Battery Materials for EV',
    url: '/press/2021/210727/index.html',
    blank: false
  },
  
  {
    type: [2],
    date: '1 July 2021',
    text: 'Daikin Expands Patent Non-Assertion Pledge for Equipment Using Low GWP Refrigerant HFC-32',
    url: '/press/2021/210701/index.html',
    blank: false
  },
  




];


/** --------------------------------------------------
 * init
** --------------------------------------------------*/
(function($){

  $(function () {
    $('.j-news').each(function () {
      var $dest = $(this);
      var html = '<ul class="g-pile">';
      _.times($dest.data('news'), function (i) {
        var obj = window._NEWS_DATA[i];
        var target = obj.blank ? 'target="_blank"' : '';
        var label;
        html += '<li class="g-pile_el g-info">';
        html += '<p class="g-info_date">' + obj.date + '</p>';
        for(let i = 0; i < obj.type.length; i++) {
          switch (obj.type[i]) {
            case 1:
            label = 'Research and Development';
            break;
            case 2:
            label = 'Sustainability';
            break;
            case 3:
            label = 'Management Strategy';
            break;
            case 4:
            label = 'Fluorochemicals';
            break;
            case 5:
            label = 'Activities for Air';
            break;
            case 6:
            label = 'Important Notice';
            break;
            case 7:
            label = 'Information';
            break;
            case 8:
            label = 'Oganaization';
            break;
            case 9:
            label = 'Air Conditioners';
            break;
            case 10:
            label = 'Financial Information';
            break;
            default:
            label = '';
          }
          html += '<p class="g-info_label-b">' + label + '</p>';
        }
        html += '<a href="' + obj.url + '" ' + target + ' class="g-link">';
        html += obj.text + '</a></li>';
      });
      html += '</ul>';
      html += '<p class="g-talign-r"><a href="/news/" class="g-link"><b>News Archives</b></a></p>';
      $dest.append(html);
    });
  });

}(jQuery));
