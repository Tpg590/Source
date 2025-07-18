/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Le Thien Tri - CE191249
 */
public class Product {
    public String proId;
    public String proName;
    public int proPrice;
    public int proQuantity;
    public String proDescription;
    public Category category;

    public Product() {
    }

    public Product(String proId, String proName, int proPrice, int proQuantity, String proDescription, Category category) {
        this.proId = proId;
        this.proName = proName;
        this.proPrice = proPrice;
        this.proQuantity = proQuantity;
        this.proDescription = proDescription;
        this.category = category;
    }

    public String getProId() {
        return proId;
    }

    public void setProId(String proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public int getProPrice() {
        return proPrice;
    }

    public void setProPrice(int proPrice) {
        this.proPrice = proPrice;
    }

    public int getProQuantity() {
        return proQuantity;
    }

    public void setProQuantity(int proQuantity) {
        this.proQuantity = proQuantity;
    }

    public String getProDescription() {
        return proDescription;
    }

    public void setProDescription(String proDescription) {
        this.proDescription = proDescription;
    }

    public Category getCategory() {
        return category;
    }

    public void setCatId(Category category) {
        this.category = category;
    }
    
    
    
}
