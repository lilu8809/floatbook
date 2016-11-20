/**
 * 项目名称：floatbook
 * 类 名 称：MediaType
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年11月20日 上午10:33:06
 * 修 改 人：cmcc
 * 修改时间：2016年11月20日 上午10:33:06
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.common;

/**
 * @包名：com.cmcc.floatbook.common
 * @类名：MediaType
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年11月20日上午10:33:06
 * @版本：1.0.0
 * 
 */
public class MediaType {
	
	private static final String CHARSET = ";charset=UTF-8";
	
	public static final String JSON = javax.ws.rs.core.MediaType.APPLICATION_JSON + CHARSET;
	
	public static final String TEXT = javax.ws.rs.core.MediaType.TEXT_PLAIN + CHARSET;
	
	public static final String MULTIPART = javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA;
	
	public static final String OCTET_STREAM = javax.ws.rs.core.MediaType.APPLICATION_OCTET_STREAM;
	
	public static final String TEXT_HTML = javax.ws.rs.core.MediaType.TEXT_HTML + CHARSET;
	
	public static final String MULTIPART_FORM_DATA = javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA;

	public static final String APPLICATION_FORM_URLENCODED = javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED+CHARSET;
}
