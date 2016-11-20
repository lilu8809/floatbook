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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.POST;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cmcc.floatbook.common.BaseService;
import com.cmcc.floatbook.common.MediaType;
import com.cmcc.floatbook.models.Book;
import com.cmcc.floatbook.service.manage.books.BookService;

/**
 * @包名：com.cmcc.floatbook.action.manage
 * @类名：BookManager
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年7月9日下午3:54:07
 * @版本：1.0.0
 * 
 */
@Controller
@RequestMapping("/books")
public class BookManager extends BaseService{
	
	@Resource
	public BookService bookService;
	
	/**查询前15本图书*/
	@RequestMapping("/topBorrowBookList.do")
	@POST
	@ResponseBody
	public Response topBorrowBook(@RequestParam("topNum")int topNum){
		List<Book> tblist = new ArrayList<Book>();
		tblist = bookService.findTopBorrowBooks(topNum);
		return Response.ok(JSON.toJSONString(tblist), MediaType.JSON).build();
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
