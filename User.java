package com.bean;

public class User {
    public String username;
    public String password;
    public int root;
    public int id;
    public String sign;
    public int bookNum;
    public int status;

    public User(){

    }

    public User(String username, String password, int root, int id, String sign, int bookNum, int status) {
        this.username = username;
        this.password = password;
        this.root = root;
        this.id = id;
        this.sign = sign;
        this.bookNum = bookNum;
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoot() {
        return root;
    }

    public void setRoot(int root) {
        this.root = root;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public int getBookNum() {
        return bookNum;
    }

    public void setBookNum(int bookNum) {
        this.bookNum = bookNum;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", root=" + root +
                ", id=" + id +
                ", sign='" + sign + '\'' +
                ", bookNum=" + bookNum +
                ", status=" + status +
                '}';
    }
}
