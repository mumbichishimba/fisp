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
import javax.persistence.UniqueConstraint;

/**
 *
 * @author dhulfa.abdallah
 */
@Entity
@Table(name="fisp_inventoryitem", uniqueConstraints={@UniqueConstraint(columnNames={"barcodenumber"})})
public class InventoryItem {
    //create fields to be inside an inventory
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    
    private Integer id;
    private String name;
    private String type;
    private String supplier;
    private Float quantity;
    private String quantitytype;
    private String batchid;
    private String barcodenumber;
    private Boolean available;
    private Date dategivenout;

    public InventoryItem() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public Float getQuantity() {
        return quantity;
    }

    public void setQuantity(Float quantity) {
        this.quantity = quantity;
    }

    public String getQuantitytype() {
        return quantitytype;
    }

    public void setQuantitytype(String quantitytype) {
        this.quantitytype = quantitytype;
    }

    public String getBatchid() {
        return batchid;
    }

    public void setBatchid(String batchid) {
        this.batchid = batchid;
    }

    public String getBarcodenumber() {
        return barcodenumber;
    }

    public void setBarcodenumber(String barcodenumber) {
        this.barcodenumber = barcodenumber;
    }  

    public Boolean isAvailable() {
        return available;
    }
    
    public Boolean getAvailable(){
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public Date getDategivenout() {
        return dategivenout;
    }

    public void setDategivenout(Date dategivenout) {
        this.dategivenout = dategivenout;
    }
    
    @Override
    public String toString() {
        return "InventoryItem{" + "id=" + id + ", name=" + name + ", type=" + type + ", supplier=" + supplier + ", quantity=" + quantity + ", quantity_type=" + quantitytype + ", batchid=" + batchid + ", barcodenumber=" + barcodenumber + ", available=" + available + '}';
    }
    
    
    
}
