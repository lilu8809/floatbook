/**
 * 项目名称：floatbook
 * 类 名 称：Assert
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2017年2月23日 上午1:43:36
 * 修 改 人：cmcc
 * 修改时间：2017年2月23日 上午1:43:36
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.common;

import org.springframework.util.StringUtils;

/**
 * @包名：com.cmcc.floatbook.common
 * @类名：Assert
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2017年2月23日上午1:43:36
 * @版本：1.0.0
 * 
 */
public class Assert {
	
	public static void isEmptyObj(Object obj){
		if(StringUtils.isEmpty(obj)){
			throw new ResultException("500","号码为空");
		}
	}

}
