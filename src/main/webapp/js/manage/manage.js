$(document).ready(function(){
	var topBorrowBooks = null;
	$(function(){
		$.ajax({
			method : "POST",
			url : "/floatbook/books/topBorrowBookList.do",
			timeout : 10000, //超时时间设置，单位毫秒
			async: false,
			dataType:"json",
			data : {
				topNum:15
			},
			success : function(json) {
				topBorrowBooks = json.entity;
				var topBorrowBookhtml = "";
				$.each($.parseJSON(topBorrowBooks),function(i,item){
					if(item.bookImag.length<1){
						item.bookImag="http://localhost:8080/floatbook/images/beauty_and_the_beast.jpg";
					}
					topBorrowBookhtml = topBorrowBookhtml + template("htmlTemp",item);
				});
				$("#topBorrowBook").html(topBorrowBookhtml);
				
			},
			error : function(e) {
				alert("网络异常，请稍后再试...");
				return;
			}
		}); 
		
		
	}
	);
	
	
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
	
	var name = getUserNameByPhone($.cookie("user"));
	$(function(){
		var welcome_html = "";
		if($.cookie("username")!=null||$.cookie("username")!=""){
			welcome_html = "欢迎 "+$.cookie("username");
		}else{
			welcome_html = "<a href='/floatbook/jsp/common/login.jsp'>要不要先登录再来啊-_-#</a>";
		}
		$("#welcome").html(welcome_html);
	});
	function getUserNameByPhone(phone){
		$.ajax({
			method : "POST",
			url : "/floatbook/manage/user/getUserByPhone.do",
			timeout : 10000, //超时时间设置，单位毫秒
			async: false,
			dataType:"json",
			data : {
				phone:phone
			},
			success : function(json) {
				user = $.parseJSON(json.entity);
				alert(user.user_name);
				$.cookie("username",user.user_name);
			},
			error : function(e) {
				alert("网络异常，请稍后再试...");
				return;
			}
		}); 
	}
});



	