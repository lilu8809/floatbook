/**
 * 项目名称：floatbook
 * 类 名 称：LoginService
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年6月21日 下午10:55:02
 * 修 改 人：cmcc
 * 修改时间：2016年6月21日 下午10:55:02
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.action.oauth;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.models.User;
import com.cmcc.floatbook.service.oauth.LoginService;

/**
 * @包名：com.cmcc.floatbook.oauth.login
 * @类名：LoginService
 * @描述：验证用户是否登录，并处理用户登录
 * @作者：cmcc
 * @时间：2016年6月21日下午10:55:02
 * @版本：1.0.0
 * 
 */

@Controller
@RequestMapping("/login")
public class LoginAction extends BaseService{
	
	@Resource
	public LoginService loginService;
	
	/**判断用户是否登录
	 * 如果已登录，跳转到主页
	 * 如果未登录，跳转登录页面*/
	
	@RequestMapping("/login.do")
//	@ResponseBody
	public String isLogin(){
		
		HttpSession session = request.getSession();
		
		if(session == null || session.getAttribute("phone") == null){
			log.info("用户未登录");
			return "common/login.jsp";
		}else{
			log.info("用户已登录");
			return "admin/adminMain.jsp";
		}
	}
	
	/**用户登录*/
	@RequestMapping("/dologin.do")
//	@ResponseBody
	public String doLogin(){
		
		HttpSession session =  request.getSession();
		
		String telephone = request.getParameter("telephone");
		String password = request.getParameter("password");
		
		User user = loginService.getUser(telephone,password);
		if(user != null){
			session.setAttribute("user", user);
			session.setAttribute("telephone", telephone);
			session.setAttribute("username", user.getUser_name());
			session.setAttribute("role", user.getRole());
			session.setAttribute("mail", user.getEmail());
			
			session.setAttribute("loginstatus", "logined");
			
			return "admin/adminMain.jsp";//跳转到首页
		}else{
			log.info("没有找到用户，登录失败");
			session.setAttribute("loginstatus", "logining");
			return "common/login.jsp";
		}
	}

}
