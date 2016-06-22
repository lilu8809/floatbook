/**
 * 项目名称：floatbook
 * 类 名 称：User
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年6月21日 下午10:59:42
 * 修 改 人：cmcc
 * 修改时间：2016年6月21日 下午10:59:42
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.models;

/**
 * @包名：com.cmcc.floatbook.models
 * @类名：User
 * @描述：用户类
 * @作者：cmcc
 * @时间：2016年6月21日下午10:59:42s		
 * @版本：1.0.0
 * 
 */
public class User {
	
	private String name;
	private String phone;
	private String pwd;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
	

}
