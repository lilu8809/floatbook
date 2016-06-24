/**
 * 项目名称：floatbook
 * 类 名 称：BaseService
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年6月21日 下午11:25:38
 * 修 改 人：cmcc
 * 修改时间：2016年6月21日 下午11:25:38
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * @包名：com.cmcc.floatbook.common
 * @类名：BaseService
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年6月21日下午11:25:38
 * @版本：1.0.0
 * 
 */
@Controller
public class BaseService {
	protected Logger log = Logger.getLogger(getClass());
	
	public HttpServletRequest request;
	
	public HttpServletResponse response;
	
	public HttpSession session;
	//@ModelAttribute 注释某个方法后，该Controller的所有方法在调用前，先执行此@ModelAttribute方法
	@ModelAttribute
	public void setReqAndResp(HttpServletRequest request, HttpServletResponse response){  
        this.request = request;  
        this.response = response;  
        this.session = request.getSession();  
    }  
	
	public void test(){
		log.info("");
	}


}
