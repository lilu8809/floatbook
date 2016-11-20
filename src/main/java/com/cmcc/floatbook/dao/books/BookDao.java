/**
 * 项目名称：floatbook
 * 类 名 称：BookDao
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年10月8日 上午12:02:35
 * 修 改 人：cmcc
 * 修改时间：2016年10月8日 上午12:02:35
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.dao.books;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cmcc.floatbook.models.Book;

/**
 * @包名：com.cmcc.floatbook.dao.books
 * @类名：BookDao
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年10月8日上午12:02:35
 * @版本：1.0.0
 * 
 */
public interface BookDao {
	
	public int addBook(Book book);
	
	public Book getBookByISBN(@Param("isbn")String isbn);
	
	public List<Book> getTopBorrowBook(@Param("topNum")int topNum);
	
	public List<Book> getTopBorrowOutBook(int topNum);
	
	public List<Book> findBooksByCategory(@Param("category")String category);

	public List<Book> getBooksByCategory(String category);

	public List<Book> getTopBorrowOutBook();
}
