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
package com.cmcc.floatbook.action.manage.books;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.models.Book;
import com.cmcc.floatbook.service.manage.books.BookService;

/**
 * @包名：com.cmcc.floatbook.action.manage
 * @类名：SearchManager
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年7月9日下午3:54:07
 * @版本：1.0.0
 * 
 */
@Controller
@RequestMapping("/search")
public class SearchManager extends BaseService{
	
	@Resource
	public BookService bookService;
	
	/**查询图书*/
	@RequestMapping("/mainSearch.do")
	@ResponseBody
	public List<Book> searchBook(){
		List<Book> blist = new ArrayList<Book>();
		
		
		
		return blist;
	}
	
	/**跳转查询图书页面*/
	@RequestMapping("/toSearchPage.do")
	public String toSearchPage(){
		HttpSession session = request.getSession();
		String category = request.getParameter("categorySearch");
		if(category != null && category.length()>0){
			session.setAttribute("category", category);
			return "/admin/showBooksByCategory.jsp";
		}else{
			return "/admin/adminMain.jsp";
		}
	}

}
