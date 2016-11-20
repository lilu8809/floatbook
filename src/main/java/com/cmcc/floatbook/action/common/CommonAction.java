/**
 * 项目名称：floatbook
 * 类 名 称：SearchManager
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年7月9日 下午3:54:07
 * 修 改 人：cmcc
 * 修改时间：2016年7月9日 下午3:54:07
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.action.common;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.POST;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.common.MediaType;
import com.cmcc.floatbook.models.Book;
import com.cmcc.floatbook.service.manage.books.BookService;
import com.cmcc.floatbook.service.oauth.LoginService;

/**
 * @包名：com.cmcc.floatbook.action.common
 * @类名：CommonAction
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年7月9日下午3:54:07
 * @版本：1.0.0
 * 
 */
@Controller
@RequestMapping("/common")
public class CommonAction extends BaseService{
	
	@Resource
	public LoginService loginService;
	
	/**判断用户是否登录
	 * 如果已登录，跳转到主页
	 * 如果未登录，跳转登录页面*/
	
	@RequestMapping("/isUserLogin")
//	@ResponseBody
	public String isLogin(){
		
		HttpSession session = request.getSession();
		
		if(session == null || session.getAttribute("telephone") == null){
			log.info("用户未登录");
			return "common/login.jsp";
		}else{
			log.info("用户已登录");
			return "admin/adminMain.jsp";
		}
	}

}
