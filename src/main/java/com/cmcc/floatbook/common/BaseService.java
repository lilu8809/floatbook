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

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 * @包名：com.cmcc.floatbook.common
 * @类名：BaseService
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年6月21日下午11:25:38
 * @版本：1.0.0
 * 
 */
public class BaseService extends AbstractController{
	protected Logger log = Logger.getLogger(getClass());
	
	public HttpServletRequest request;
	
	public HttpServletResponse response;
	
	public HttpSession session;
	
	@ModelAttribute
	public void setReqAndResp(HttpServletRequest request, HttpServletResponse response){  
        this.request = request;  
        this.response = response;  
        this.session = request.getSession();  
    }  
	
	public void test(){
		log.info("");
	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.mvc.AbstractController#handleRequestInternal(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List<String> userlist = new ArrayList<String>();
		return new ModelAndView("userlist","users",userlist);//视图组件的逻辑名称(需跳转的页面名称)，模型对象名称，模型对象的值
	}

}
