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

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.models.User;
import com.cmcc.floatbook.service.oauth.RegistService;

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
public class RegistAction extends BaseService{
	
	@Resource
	public RegistService registService;
	
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
		User user = registService.getUserByMail(mail);
		if(user==null || user.getEmail()==null){
			result.put("code", "0");
			result.put("msg", "可以注册");
		}else{
			result.put("code", "1");
			result.put("msg", "邮箱已被注册");
		}
		return result;
	}
	
	/**判断号码是否已被注册*/
	@RequestMapping("/checkPhone.do")
	@ResponseBody
	public Map<String,String> checkPhone(){
		log.info("号码注册验证");
		Map<String,String> result = new HashMap<String,String>();
		String phone = request.getParameter("phone");
		User user = registService.getUserByPhone(phone);
		
		if(user==null || user.getTelephone()==null){
			result.put("code", "0");
			result.put("msg", "可以注册");
		}else{
			result.put("code", "1");
			result.put("msg", "号码已被注册");
		}
		return result;
	}
	
	/**提交注册信息*/
	@RequestMapping("/doRegist.do")
//	@ResponseBody
	public String doRegist(){
		log.info("提交注册信息");
		String mail = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String username = request.getParameter("username");
		
		User user = new User();
		user.setEmail(mail);
		user.setTelephone(telephone);
		user.setUser_name(username);
		
		int result = registService.insertUser(user);
		
		
		if(result>0){
			return "common/login.jsp";
		}else{
			return "common/register.jsp";
		}
	}

	
	
	public RegistService getRegistService() {
		return registService;
	}

	public void setRegistService(RegistService registService) {
		this.registService = registService;
	}
	
	
	
	
}
