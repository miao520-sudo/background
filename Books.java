package com.bean;

public class Books {
    private String name;
    private int id;
    private String author;
    private String type;
    private int nums;
    private int status;

    public Books(){

    }

    public Books(String name, int id, String author, String type, int nums, int status) {
        this.name = name;
        this.id = id;
        this.author = author;
        this.type = type;
        this.nums = nums;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNums() {
        return nums;
    }

    public void setNums(int nums) {
        this.nums = nums;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Books{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", author='" + author + '\'' +
                ", type='" + type + '\'' +
                ", nums=" + nums +
                ", status=" + status +
                '}';
    }
}
