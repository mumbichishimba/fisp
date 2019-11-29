/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.webservice.entity;


/**
 *
 * @author mumbi
 */

public class InventoryResponse {

    private String barcodenumber;
    private String comment;
    private String dateInserted;
    private String status;

    public InventoryResponse(String barcodenumber, String comment, String dateInserted, String status) {
        this.barcodenumber = barcodenumber;
        this.comment = comment;
        this.dateInserted = dateInserted;
        this.status = status;
    }

    public String getBarcodenumber() {
        return barcodenumber;
    }

    public void setBarcodenumber(String barcodenumber) {
        this.barcodenumber = barcodenumber;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDateInserted() {
        return dateInserted;
    }

    public void setDateInserted(String dateInserted) {
        this.dateInserted = dateInserted;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "InventoryResponse{" + "barcodenumber=" + barcodenumber + ", comment=" + comment + ", dateInserted=" + dateInserted + ", status=" + status + '}';
    }
 
}
