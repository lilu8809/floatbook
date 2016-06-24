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

import org.springframework.stereotype.Service;

import com.cmcc.floatbook.models.User;

/**
 * @包名：com.cmcc.floatbook.service.oauth
 * @类名：RegistService
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年6月24日上午11:08:46
 * @版本：1.0.0
 * 
 */
@Service
public class RegistService {
	
	public User getUserByPhone(String phone){
		User user = new User();
		
		return user;
		
		
	}

}
