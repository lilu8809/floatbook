/**
 * 项目名称：floatbook
 * 类 名 称：BookService
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年7月9日 下午4:15:12
 * 修 改 人：cmcc
 * 修改时间：2016年7月9日 下午4:15:12
 * 修改备注：
 * //@version
 * 
*/
package com.cmcc.floatbook.service.manage.books;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cmcc.floatbook.common.Constants;
import com.cmcc.floatbook.common.ResultException;
import com.cmcc.floatbook.dao.books.BookDao;
import com.cmcc.floatbook.models.Book;

/**
 * //@包名：com.cmcc.floatbook.service.manage
 * //@类名：BookService
 * //@描述：(描述这个类的作用)
 * //@作者：cmcc
 * //@时间：2016年7月9日下午4:15:12
 * //@版本：1.0.0
 * 
 */
@Service
public class BookService {
	@Resource
	public BookDao bookDao;

	/**添加一本新书到数据库中，并从数据库中查询这本书是否已存入，返回这本书的对象
	 * */
	public Book saveBook(Book book) {
		int saveCount = 0;
		if(book != null){
			saveCount = bookDao.addBook(book);
			if(saveCount>0){
				return book;
			}else{
				return null;
			}
		}else{
			throw new ResultException("500","book"+Constants.notNullExpt);
		}
	}
	
	/**查找 15 本可借阅的书本
	 */
	//@Override
	public List<Book> findTopBorrowBooks(int topNum) {
		List<Book> topBorrowBook_list = new ArrayList<Book>();
		topBorrowBook_list = bookDao.getTopBorrowBook(topNum);
		return topBorrowBook_list;
	}
	
	/**查找 15 本 已全部被借阅的 书本
	 * */
	//@Override
	public List<Book> findTopBorrowOutBooks() {
		List<Book> BorrowBook_list = new ArrayList<Book>();
		BorrowBook_list = bookDao.getTopBorrowOutBook();
		
		
		return BorrowBook_list;
	}

	//@Override
	public int saveBooks(List<Book> books) {
		// TODO Auto-generated method stub
		return 0;
	}

	//@Override
	public Book findBookByISBN(String isbn) {
		Book book = new Book();
		book = bookDao.getBookByISBN(isbn);
		return book;
	}

	//@Override
	public Book findBookByName(String bookName) {
		// TODO Auto-generated method stub
		return null;
	}

	//@Override
	public Book changeBook(Book book) {
		// TODO Auto-generated method stub
		return null;
	}

	//@Override
	public boolean isBookExist(Book book) {
		//Book return_book = bookDao.getBookByISBN(book.getISBN());
		return false;
	}

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	/**根据书目类别，查找所有的书
	 * */
	//@Override
	public List<Book> findBooksByCategory(String category) {
		List<Book> book_list = new ArrayList<Book>();
		book_list = bookDao.getBooksByCategory(category);
		
		return book_list;
	}

	

}
