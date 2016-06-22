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

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmcc.floatbook.common.BaseService;

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
public class LoginService extends BaseService{
	
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

}
