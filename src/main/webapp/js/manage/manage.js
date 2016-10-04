
$(document).ready(function(){
	var status=0;
	var username;
	var loginError;
	
	$('#password').click(function(){
		
	});

	$('#loginsubmit').click(function(){
		
	});
	
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
	
	function DropDown(el) {
		this.dd = el;
		this.initEvents();
	}
	DropDown.prototype = {
		initEvents : function() {
			var obj = this;
			obj.dd.on('click', function(event){
				$(this).toggleClass('active');
				event.stopPropagation();
			});	
		}
	}

	$(function() {
		var dd = new DropDown( $('#dd') );
		$(document).click(function() {
			// all dropdowns
			$('.wrapper-dropdown-2').removeClass('active');
		});
	});
});