/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.entity;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author CHILIKWEM
 */
@Entity
@Table(name= "fisp_yield")

public class Yield {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer yieldid;
    String crop;
    Double weight;
    Integer fieldid;
    Date dateofyield;
    Float quantity;
   
    public Yield(){
    }


    public Integer getYieldid() {
        return yieldid;
    }

    public void setYieldid(Integer yieldid) {
        this.yieldid = yieldid;
    }

    public String getCrop() {
        return crop;
    }

    public void setCrop(String crop) {
        this.crop = crop;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Integer getFieldid() {
        return fieldid;
    }

    public void setFieldid(Integer fieldid) {
        this.fieldid = fieldid;
    }

    public Date getDateofyield() {
        return dateofyield;
    }

    public void setDateofyield(Date dateofyield) {
        this.dateofyield = dateofyield;
    }

    public Float getQuantity() {
        return quantity;
    }

    public void setQuantity(Float quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Yield{" + "yieldid=" + yieldid + ", crop=" + crop + ", weight=" + weight + ", fieldid=" + fieldid + ", dateofyield=" + dateofyield + ", quantity=" + quantity + '}';
    }
    


}
