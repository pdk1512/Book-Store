/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 84964
 */
public class Product {
    private int id;
    private String name;
    private String cate;
    private int price;
    private int amount;
    private String status;
    private String description;
    private String picture;

    public Product() {
    }

    public Product(int id, String name, String cate, int price, int amount, String status, String description, String picture) {
        this.id = id;
        this.name = name;
        this.cate = cate;
        this.price = price;
        this.amount = amount;
        this.status = status;
        this.description = description;
        this.picture = picture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", cate=" + cate + ", price=" + price + ", amount=" + amount + ", status=" + status + ", description=" + description + ", picture=" + picture + '}';
    }
    
    
}
