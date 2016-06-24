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
package com.cmcc.floatbook.action.oauth.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
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
@RequestMapping("/regist")
public class RegistService extends BaseService{
	
	/**跳转注册页面*/
	@RequestMapping("/regist.do")
//	@ResponseBody
	public String toRegist(){
			log.info("用户注册");
			return "common/register.jsp";
	}
	
	/**判断邮箱是否已被注册*/
	@RequestMapping("/checkMail.do")
	@ResponseBody
	public Map<String,String> checkmail(){
		log.info("邮箱注册验证");
		Map<String,String> result = new HashMap<String,String>();
		String mail = request.getParameter("email");
		if(mail!=null && mail.contains("@")){
			result.put("code", "0");
			result.put("msg", "可以注册");
		}else{
			result.put("code", "1");
			result.put("msg", "邮箱无效");
		}
		
		
		
		return result;
	}
	
	
}
