/**
 * 项目名称：floatbook
 * 类 名 称：RegistDao
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年6月23日 下午8:35:27
 * 修 改 人：cmcc
 * 修改时间：2016年6月23日 下午8:35:27
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.dao.oauth;

import com.cmcc.floatbook.models.User;

/**
 * @包名：com.cmcc.floatbook.action.oauth.dao
 * @类名：RegistDao
 * @描述：数据库操作类
 * @作者：cmcc
 * @时间：2016年6月23日下午8:35:27
 * @版本：1.0.0
 * 
 */
public interface UserDao {

	public void insertUser(User user);
	
}
