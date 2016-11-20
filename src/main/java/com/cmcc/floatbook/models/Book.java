/**
 * 项目名称：floatbook
 * 类 名 称：Book
 * 类 描 述：(描述信息)
 * 创 建 人：cmcc
 * 创建时间：2016年7月9日 下午4:18:50
 * 修 改 人：cmcc
 * 修改时间：2016年7月9日 下午4:18:50
 * 修改备注：
 * @version
 * 
*/
package com.cmcc.floatbook.models;

/**
 * @包名：com.cmcc.floatbook.models
 * @类名：Book
 * @描述：(描述这个类的作用)
 * @作者：cmcc
 * @时间：2016年7月9日下午4:18:50
 * @版本：1.0.0
 * 
 */
public class Book {
	private int bookId;
	private String ISBN;
	private String bookName;
	private String author;
	private String dateString;
	private String bookCategory;
	private int bookCount;
	private int bookUseful;
	private String storePlace;
	private String bookOwner;
	private String storeDate;
	private String bookImag;
	private String bookIntroduce;
	private String subtitle;
	
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDateString() {
		return dateString;
	}
	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}
	public int getBookCount() {
		return bookCount;
	}
	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}
	public int getBookUseful() {
		return bookUseful;
	}
	public void setBookUseful(int bookUseful) {
		this.bookUseful = bookUseful;
	}
	public String getStorePlace() {
		return storePlace;
	}
	public void setStorePlace(String storePlace) {
		this.storePlace = storePlace;
	}
	public String getBookOwner() {
		return bookOwner;
	}
	public void setBookOwner(String bookOwner) {
		this.bookOwner = bookOwner;
	}
	public String getStoreDate() {
		return storeDate;
	}
	public void setStoreDate(String storeDate) {
		this.storeDate = storeDate;
	}
	public String getBookImag() {
		return bookImag;
	}
	public void setBookImag(String bookImag) {
		this.bookImag = bookImag;
	}
	public String getBookIntroduce() {
		return bookIntroduce;
	}
	public void setBookIntroduce(String bookIntroduce) {
		this.bookIntroduce = bookIntroduce;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	
	
	

}
