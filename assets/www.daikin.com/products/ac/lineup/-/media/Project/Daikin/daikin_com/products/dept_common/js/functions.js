$dg(function(){
	init_lnav();
});


//*************************************************//
//Local navi
//*************************************************//
var cls_active = "g-sidebar-cur";

function init_lnav(){
	if(typeof(cur_menu) == "undefined") return;
	var target = $dg(".g-sidebar_lv1_el");
	if(!target.length) return;
	var obj = target.find("a");
	var c = cur_menu;
	
	obj.map(function() {
		var l_a = $dg(this);
		check_active_lnav(l_a, c);
	});
}
function check_active_lnav(link, val){
	var l_v = link.html();
	if(l_v == val) {
		trace(link);
		var li = link.parent();
		li.addClass(cls_active);
	}
}


//*************************************************//
//Common
//*************************************************//
//debug
function trace(msg) {
	if (('console' in window)) {
		console.log(msg);
	}
}


