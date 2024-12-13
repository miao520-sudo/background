package com.bean;

public class BookType {
    private String type;
    private int typeNum;

    public BookType(){
        System.out.println(1);
    }

    public BookType(String type, int typeNum) {
        this.type = type;
        this.typeNum = typeNum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getTypeNum() {
        return typeNum;
    }

    public void setTypeNum(int typeNum) {
        this.typeNum = typeNum;
    }

    @Override
    public String toString() {
        return "BookType{" +
                "type='" + type + '\'' +
                ", typeNum=" + typeNum +
                '}';
    }
}
