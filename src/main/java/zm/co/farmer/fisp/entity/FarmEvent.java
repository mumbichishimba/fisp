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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Mumbi Chishimba
 */

@Entity 
@Table(name="fisp_farm_event")
public class FarmEvent {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)    
    private Integer id;
    @ManyToOne
    private Farm farm;
    @ManyToOne
    private Field field;
    
    private Date dateofevent;
    @ManyToOne
    private User createdby;
    private String description;
    private String eventreport;

    public FarmEvent() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Farm getFarm() {
        return farm;
    }

    public void setFarm(Farm farm) {
        this.farm = farm;
    }

    public Date getDateofevent() {
        return dateofevent;
    }

    public void setDateofevent(Date dateofevent) {
        this.dateofevent = dateofevent;
    }

    public User getCreatedby() {
        return createdby;
    }

    public void setCreatedby(User createdby) {
        this.createdby = createdby;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEventreport() {
        return eventreport;
    }

    public void setEventreport(String eventreport) {
        this.eventreport = eventreport;
    }

    public Field getField() {
        return field;
    }

    public void setField(Field field) {
        this.field = field;
    }

    @Override
    public String toString() {
        return "FarmEvent{" + "id=" + id + ", farm=" + farm + ", field=" + field + ", dateofevent=" + dateofevent + ", createdby=" + createdby + ", description=" + description + ", eventreport=" + eventreport + '}';
    }

    
    
}
