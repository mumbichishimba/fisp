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
import zm.co.farmer.fisp.entity.Yield;
import zm.co.farmer.fisp.repository.YieldRepository;

/**
 *
 * @author CHILIKWEM
 */
@Service
public class YieldService {
    
    @Autowired
    private YieldRepository yieldRepository;
    
    public Yield addOrUpdate(Yield yield){
        return yieldRepository.save(yield);
    }
    
    public List<Yield> getYield(){
        return Lists.newArrayList(yieldRepository.findAll());
    }
    
    public Yield findById(Integer Id){
        
        try {
            return yieldRepository.findById(Id).get();
        } catch (Exception e) {
            return null;
        }
        
    }
    
}
