
$(document).ready(function(){
	var status=0;
	var username;
	var telephone;
	var loginError;
	
	function checkname(){
		username = document.getElementById("username").value;
		telephone = document.getElementById("telephone").value;
		if(username.length<=0) {
			loginError = "哎哟,大名忘写了 ";
			status=0;
		}else{
			loginError = "";
			status=1;
		}
		document.getElementById("nameInfo").innerHTML = loginError;
		return ;
	}
	function checktelephone(){
		if(telephone.length<=0) {
			loginError = "哎哟,不留号码，怎么让伙伴找到你";
			status=0;
		}else{
			loginError = "";
			status=1;
		}	
		document.getElementById("telephoneInfo").innerHTML = loginError;
		return ;
	}

	function beforeLogin(){
		checkname();
		checktelephone();
		//alert("show me status:"+status);
		if(status==1){
			//alert("go on to submit:"+status);
			
			document.LoginForm.submit();
			if(session.getAttribute("showStr")=="用户名或密码不对啦"){
				document.getElementById("loginResult").value="用户名或密码不对啦";
			}
		}else{
			alert("检查下是不是啥输错啦 T_T");
		}
	}
});