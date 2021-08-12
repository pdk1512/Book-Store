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
public class Revenue {
    private String date;
    private String revenue;

    public Revenue() {
    }

    public Revenue(String date, String revenue) {
        this.date = date;
        this.revenue = revenue;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getRevenue() {
        return revenue;
    }

    public void setRevenue(String revenue) {
        this.revenue = revenue;
    }

    
    
    
}
