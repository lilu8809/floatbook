var ue = false;
var etype = false;
var xmlHttp;

function checkEmail(emailstr) {
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlHttp = new XMLHttpRequest();
		if(xmlHttp.overrideMimeType){
			xmlHttp.overrideMimeType("text/xml");
		  }
	} else {// code for IE6, IE5
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(!xmlHttp){
	 	 alert("不能创建XMLHttpRequest对象实例!");
	 	 return false;
	 	}
	//进入Action中的checkemail方法
	$.ajax({
		type:'post',
		url:'/floatbook/'
		
	});
	
	
	var url ="<%=request.getContextPath()%>/common/registerSubmit?method=checkemail"
			+ "&" + "email=" + emailstr;
	//alert("欢迎进入first step--1");
	//ajax函数，后面直接加javascript函数
	xmlHttp.onreadystatechange = function() {//当使用 .open("GET",url,true)=true 时，请规定在响应  处于onreadystatechange 事件中的就绪状态时执行的函数：
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
		//	alert("欢迎进入third step--3,email="+emailstr+";and responseText="+xmlHttp.responseText.toString());
			if (xmlHttp.responseText.toString() == "s1") {
				//alert("欢迎进入third step--4");
				document.getElementById("emailLabel").innerHTML = "该邮箱已被注册";
				ue = false;
			} else if (xmlHttp.responseText.toString() == "s2") {
				//alert("欢迎进入third step--5");
				document.getElementById("emailLabel").innerHTML = "该邮箱可以注册";
				//document.getElementById("emailLabel").  
				ue = true;
			}
		}
	};
	xmlHttp.open("GET", url, true);
	xmlHttp.send();
}
//判断邮箱是否为空
function beforeSubmit() {
	//alert(document.getElementById("email").value.toString());
	if(document.getElementById("email").value.toString().indexOf("chinamobile.com")>=0){
		etype = true;
		//检查该邮箱是否被使用
		checkEmail(document.getElementById("email").value);//str = user's email address
	}else{
		document.getElementById("emailLabel").innerHTML = "哎呀，没有用公司邮箱噢～";
		etype = false;
	}
}
	
function submitForm(){
	if (ue && etype ) { //&& pass
		alert("欢迎小伙伴来到 Float Books");
		//var content = '<div id="messageBox"><div class="bg"></div><div class="popupbox"><div class="titleh1">&nbsp;&nbsp;&nbsp;&nbsp;欢迎登录</div><p class="failedContent">欢迎您使用TRACE。</p><div align="center"><input type="button" id="messageConfirmButton" value="确定" class="btnOK" /></div></div></div>';
		//var content = '<div align="center">欢迎登录</div><p>欢迎您使用TRACE。</p><div align="center"><input type="button" id="messageConfirmButton" value="确定" />';
		//showMessageBox(content);
		//document.getElementById("register").submit();
		document.register.submit();
	}else{
		alert("不听劝，都说了不能有错误信息了 T-T");
	}
}