/**
 * 项目名称：floatbook
 * 类 名 称：RegistService
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年6月24日 上午11:08:46
 * 修 改 人：cmcc
 * 修改时间：2016年6月24日 上午11:08:46
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.service.oauth;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cmcc.floatbook.dao.oauth.UserDao;
import com.cmcc.floatbook.models.User;

/**
 * @包名：com.cmcc.floatbook.service.oauth
 * @类名：RegistService
 * @描述：处理用户登录逻辑
 * @作者：cmcc
 * @时间：2016年6月24日上午11:08:46
 * @版本：1.0.0
 * 
 */
@Service
public class LoginService {
	
	@Resource
	public UserDao userDao;
	
	public User getUser(String telephone, String password){
		User one = userDao.selectUser(telephone,password);
		return one;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	

}
