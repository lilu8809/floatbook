
$(document).ready(function(){
	var status=0;
	var username;
	var loginError;
	
//	if($.session.get('loginstatus')=='logining'){
//		$('#loginInfo').text('登录失败阿喂，请确认用户名密码');
//	}else{
//		$('#loginInfo').text('')
//		$('#loginInfo').hide();
//	}
	
	$('#password').click(function(){
		var telephone = $('#telephone').val();
		if(telephone.length<1) {
			$('#phoneLabel').text('哎哟,号码忘写了');
			$('#phoneLabel').css('color','red');
//			$('#phoneLabel').show();
			status=0;
		}else{
			$('#phoneLabel').text('11位手机号码');
			$('#phoneLabel').css('color','#777');
//			$('#phoneLabel').hide();
			status=1;
		}	
	});

	$('#loginsubmit').click(function(){
		var telephone = $('#telephone').val();
		var password = $('#password').val();
		if(telephone.length<1 || password.length<1){
			$('#checkInfo').text("用户名或密码记得填啦");
			$('#checkInfo').css('color','red');
			$('#checkInfo').show();
		}else{
			$('#LoginForm').submit();
			$('#checkInfo').hide();
//			if(session.getAttribute('status')=='error'){
//				$('#checkInfo').text("用户名或密码记得填啦");
//				$('#checkInfo').css('color','red');
//				$('#checkInfo').show();
//			}
			
		}
	});
});