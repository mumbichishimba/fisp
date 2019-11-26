/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.service;

import com.google.common.collect.Lists;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zm.co.farmer.fisp.entity.Farm;
import zm.co.farmer.fisp.entity.FarmEvent;
import zm.co.farmer.fisp.entity.Field;
import zm.co.farmer.fisp.repository.FarmEventRepository;
import zm.co.farmer.fisp.repository.FarmRepository;
/**
 *
 * @author CHILIKWEM
 * Farm repository
 */
@Service
public class FarmService {
    @Autowired
    private FarmRepository farmRepository;
    @Autowired
    private FarmEventRepository farmEventRepository;
    
    public Farm addFarm(Farm farm){
        return farmRepository.save(farm);
    }

    public List<Farm> getAllFarms() {
        return Lists.newArrayList(farmRepository.findAll());
    }

    public Farm getById(Integer farmid) {
        return farmRepository.findById(farmid).get();
    }
    
    
    public List<FarmEvent> getFarmEventsByField(Field field){
        return farmEventRepository.findByField(field);
    }
    
    public List<FarmEvent> getAllFarmEvents(){
        return Lists.newArrayList(farmEventRepository.findAll());
    }

    public FarmEvent findEventByFieldId(Integer fieldId) {
        return farmEventRepository.findById(fieldId).get();
    }
    
}
