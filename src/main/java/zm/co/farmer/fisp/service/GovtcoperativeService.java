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
import zm.co.farmer.fisp.entity.Govtcoperative;
import zm.co.farmer.fisp.repository.GovtcoperativeRepository;

/**
 *
 * @author mumbi
 */
@Service
public class GovtcoperativeService {
    @Autowired
    private GovtcoperativeRepository govtcoperativeRepository;
    
    public List<Govtcoperative> getAllGovtcoperative(){
        return Lists.newLinkedList(govtcoperativeRepository.findAll());
    }
    
    public Govtcoperative addGovtcoperative(Govtcoperative govtcoperative){
        return govtcoperativeRepository.save(govtcoperative);
    }
    
    
}
