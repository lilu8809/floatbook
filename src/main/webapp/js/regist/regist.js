
$(document).ready(function(){
	var ue = false;
	var ptype = false;
	$('#email').click(function(){
		var name = $('#username').val();
		if(name.length<1){
			$('#usermsg').text("别忘记名字～");
			$('#usermsg').css('color','red');
			$('#usermsg').show();
			ue = false;
			return;
		}else{
			$('#usermsg').hide();
		}
	});
		//验证邮箱格式和是否被注册
		$('#telephone').click(function(){
			var email = $('#email').val();
			if(email.indexOf('@')<1){
				$('#emailLabel').text("哎呀，邮箱格式不对～");
				$('#emailLabel').css('color','red');
				ue = false;
				return;
			}else{
				$.ajax({
					type:'post',
					url:'/floatbook/regist/checkMail.do',
					data:{email:email},
					dataType:"json",
					timeout:10000,
					cache:false,
//					async:false,//同步，浏览器锁住
					success:function(data){
						if(data.code == 0){
							$('#emailLabel').text(data.msg);
							ue = true;
						}else{
							$('#emailLabel').text(data.msg);
							$('#emailLabel').css('color','red');	
							ue = false;
						}
					},
					complete: function(XMLHttpRequest,status){ //请求完成后最终执行参数
						if(status=='timeout'|| status=='error'){//超时,status还有success,error等值的情况
						 	alert("网络出错或是请求超时！");
						}
					}
				});
			}//end else
		});//end click function
		
		$('#checkpwd').click(function(){
			var password = $('#password').val();
			if(password.length<6){
				$('#pwdLabel').text("密码长度不够～");
				$('#pwdLabel').css('color','red');
				$('#password').val('');
				return;
			}else{
				$('#usermsg').hide();
			}
		});
			
		$('#regsubmit').click(function(){
			var phone = $('#telephone').val();
			var pwd = $('#password').val();
			var checkpwd = $('#checkpwd').val();
			if(phone.length!=11){
				$('#phoneLabel').text('号码格式不对')
				$('#phoneLabel').css('color','red');
				ptype = false;
				return;
			}
			
			if(checkpwd!=pwd){
				$('#checkpwdLabel').text('密码不匹配')
				$('#checkpwdLabel').css('color','red');
				return;
			}
			
			
			if(!ue || ptype){
				return;
		//		$('#tips').text("不听劝，都说了不能有错误信息了 T-T");
		//		$('#tips').css('color','red');
		//		$('#tips').show();
			}else{
				$.ajax({
					type:'post',
					url:'/floatbook/regist/checkPhone.do',
					data:{phone:phone},
					dataType:"json",
					timeout:10000,
					cache:false,
					success:function(data){
						if(data.code == 0){
							$('#register').submit();//表单提交
							$('#telephone').val('');
							$('#email').val('');
							$('#username').val('');
							$('#tips').hide();
						}else{
							$('#phoneLabel').text(data.msg);
							$('#phoneLabel').css('color','red');	
						}
						
					},
					complete: function(XMLHttpRequest,status){ //请求完成后最终执行参数
						if(status=='timeout'|| status=='error'){//超时,status还有success,error等值的情况
						 	alert("网络出错或是请求超时！");
						}
					}
				});
			}//end else
		});//end click function
});