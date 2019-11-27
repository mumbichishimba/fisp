/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.repository;

import org.springframework.data.repository.CrudRepository;
import zm.co.farmer.fisp.entity.Farm;

/**
 *
 * @author CHILIKWEM
 */
public interface FarmRepository extends CrudRepository<Farm, Integer> {
    
    
    
}
