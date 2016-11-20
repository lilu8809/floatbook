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
package com.cmcc.floatbook.action.manage.users;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.ws.rs.POST;
import javax.ws.rs.core.Response;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cmcc.floatbook.common.Assert;
import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.common.MediaType;
import com.cmcc.floatbook.models.User;
import com.cmcc.floatbook.service.oauth.LoginService;
import com.cmcc.floatbook.service.user.UserService;

/**
 * @包名：com.cmcc.floatbook.action.manage
 * @类名：CommonAction
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年7月9日下午3:54:07
 * @版本：1.0.0
 * 
 */
@Controller
@RequestMapping("/manage/user")
public class UserAction extends BaseService{
	
	@Resource
	public UserService userService;
	
	/**根据号码查找用户
	 * */
	
	@RequestMapping("/getUserByPhone.do")
	@POST
	@ResponseBody
	public Response getUserByPhone(@RequestParam("phone")String phone){
		Assert.isEmptyObj(phone);
		User user = userService.getUserByPhone(phone);
		Assert.isEmptyObj(user);
		return Response.ok(JSON.toJSONString(user), MediaType.JSON).build();
	}

}
