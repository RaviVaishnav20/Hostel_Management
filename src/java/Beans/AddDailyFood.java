/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Ravi
 */
@Entity
public class AddDailyFood {
    @Id
    private int fid;

    private String day;
    private String foodname,description;

    public AddDailyFood() {
    }

    public AddDailyFood(int fid, String day, String foodname, String description) {
        this.fid = fid;
        this.day = day;
        this.foodname = foodname;
        this.description = description;
    }

    

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
    
    
}
