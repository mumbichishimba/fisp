/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import zm.co.farmer.fisp.entity.InventoryItem;

/**
 *
 * @author CHILIKWEM
 */
public interface InventoryItemRepository extends CrudRepository<InventoryItem, Integer> {

    public List<InventoryItem> findByAvailable(boolean b);
    
}
