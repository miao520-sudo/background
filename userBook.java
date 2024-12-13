package com.bean;

public class userBook {
    private String bookName;
    private int bookId;
    private String userName;
    private int userId;
    private String date;
    private String bookAuthor;
    private String bookType;
    private String backDate;
    private int status;
    private String backHope;
    private String overTime;

    public userBook(){

    }

    public userBook(String bookName, int bookId, String userName, int userId, String date, String bookAuthor, String bookType, String backDate, int status, String backHope, String overTime) {
        this.bookName = bookName;
        this.bookId = bookId;
        this.userName = userName;
        this.userId = userId;
        this.date = date;
        this.bookAuthor = bookAuthor;
        this.bookType = bookType;
        this.backDate = backDate;
        this.status = status;
        this.backHope = backHope;
        this.overTime = overTime;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookType() {
        return bookType;
    }

    public void setBookType(String bookType) {
        this.bookType = bookType;
    }

    public String getBackDate() {
        return backDate;
    }

    public void setBackDate(String backDate) {
        this.backDate = backDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getBackHope() {
        return backHope;
    }

    public void setBackHope(String backHope) {
        this.backHope = backHope;
    }

    public String getOverTime() {
        return overTime;
    }

    public void setOverTime(String overTime) {
        this.overTime = overTime;
    }

    @Override
    public String toString() {
        return "userBook{" +
                "bookName='" + bookName + '\'' +
                ", bookId=" + bookId +
                ", userName='" + userName + '\'' +
                ", userId=" + userId +
                ", date='" + date + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", bookType='" + bookType + '\'' +
                ", backDate='" + backDate + '\'' +
                ", status=" + status +
                ", backHope='" + backHope + '\'' +
                ", overTime='" + overTime + '\'' +
                '}';
    }
}
