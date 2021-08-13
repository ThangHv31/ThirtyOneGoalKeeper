


$('.open_sidebar').on('click', function(event){
	event.stopPropagation();
	if($('.sidebar').hasClass('un_active')){
		$('.sidebar').removeClass('un_active');
		$('.content').removeClass('active_content');
	}else{
		$('.sidebar').addClass('un_active');
		$('.content').addClass('active_content');
	}
});

$(document).mouseup(function(e) 
{
    var container = $(".sidebar");
    if (!container.is(e.target) && container.has(e.target).length === 0) 
    {
    	var width_device = $(window).width();
    	if(width_device < 992){
			container.removeClass('un_active');
    	}
    	
    }
});

$(document).ready(function(){
	$(window).resize(function(){
		var width_device = $(window).width();
		if(width_device >= 992){
			$('.content').removeClass('active_content');
			$('.sidebar').removeClass('un_active');
		}
	});
});

$("figure").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
  );
$(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
   $this = $(this),
   $next = $this.next();

   $next.slideToggle();
   $this.parent().toggleClass('open');

   if (!e.data.multiple) {
     $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
   };
 }	

 var accordion = new Accordion($('#accordion'), false);
});

