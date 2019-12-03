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
import zm.co.farmer.fisp.repository.UserRepository;

/**
 *
 * @author mumbi
 */
@Service
public class GovtcoperativeService {
    @Autowired
    private GovtcoperativeRepository govtcoperativeRepository;
    @Autowired
    private UserRepository userRepository;
    
    public List<Govtcoperative> getAllGovtcoperative(){
        
        List<Govtcoperative> g= Lists.newLinkedList(govtcoperativeRepository.findAll());
        
        for (int i = 0; i < g.size(); i++) {
            g.get(i).setFarmernum(userRepository.findByCooperative(g.get(i)).size());            
        }
        
        return g;
    }
    
    public Govtcoperative addGovtcoperative(Govtcoperative govtcoperative){
        return govtcoperativeRepository.save(govtcoperative);
    }

    public Govtcoperative getCooperativeById(Integer cooperativeid) {
      
        return govtcoperativeRepository.findById(cooperativeid).get();
    }
    
    
}
