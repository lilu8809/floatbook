/**
 * 项目名称：floatbook
 * 类 名 称：ResultException
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年10月8日 上午12:11:27
 * 修 改 人：cmcc
 * 修改时间：2016年10月8日 上午12:11:27
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.common;

/**
 * @包名：com.cmcc.floatbook.common
 * @类名：ResultException
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年10月8日上午12:11:27
 * @版本：1.0.0
 * 
 */
public class ResultException extends RuntimeException {
	
	/**
	 * @名称：serialVersionUID
	 * @类型：long
	 */
	private static final long serialVersionUID = -8130089871174064833L;
	private String error_type;
	private String error_msg;
	public String getError_type() {
		return error_type;
	}
	public void setError_type(String error_type) {
		this.error_type = error_type;
	}
	public String getError_msg() {
		return error_msg;
	}
	public void setError_msg(String error_msg) {
		this.error_msg = error_msg;
	}

	public ResultException(String error_type,String error_msg){
		this.error_msg = error_msg;
		this.error_type = error_type;
	}
}
