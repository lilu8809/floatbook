function show_date_string(elementId){
	var date_string = document.getElementById(elementId).value.toString();
	if(date_string.length > 0){
		document.getElementById(elementId).value="";
	}else{
		document.getElementById(elementId).value="19710901";
	}
}

function check_date(elementId){
	var date_string = document.getElementById(elementId).value.toString();
	if(date_string.length == 0){
		document.getElementById(elementId).value="19710901";
	}
}
//去除空格
function trim(str) {
	  return str.replace(/(^\s+)|(\s+$)/g, "");
	}

//判断是否输入信息完整,判断带*号的字段
function beforeSubmit(){
	var book_name =    trim(document.getElementByName(book_name).value.toString());
	var date_string =  trim(document.getElementByName(date_string).value.toString());
	var book_category= trim(document.getElementByName(book_category).value.toString());
	var book_count=    trim(document.getElementByName(book_count).value.toString());
	var useful=        trim(document.getElementByName(useful).value.toString());
	var store_place=   trim(document.getElementByName(store_place).value.toString());
	var introduce=     trim(document.getElementByName(introduce).value.toString());
	
	if(book_name.length<=0 || date_string.length<=0 || book_category.length<=0 || book_count.length<=0 ||
	   useful.length<=0 || store_place.length<=0 || introduce.length<=0	)
	{
		alert("带 * 号的内容不能为空");
		return null;
	}
	if((null == request.getSession().getAttribute("user") ) || (request.getSession().getAttribute("user").equals("null"))){
		alert("身份可疑，不让你进！");
		return null;
	}
	else{
		document.bookinfo.submit();//输入内容完整，可提交
	}
}

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
