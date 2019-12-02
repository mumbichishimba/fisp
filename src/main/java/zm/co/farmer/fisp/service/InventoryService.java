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
import zm.co.farmer.fisp.entity.InventoryItem;
import zm.co.farmer.fisp.repository.InventoryItemRepository;

/**
 *
 * @author Mumbi Chishimba
 */
@Service
public class InventoryService {

    @Autowired
    private InventoryItemRepository inventoryItemRepository;

    /**
     * *
     * Get all items that are in the inventory
     *
     * @return
     */
    public List<InventoryItem> getAllInventoryItems() {
        return Lists.newArrayList(inventoryItemRepository.findAll());
    }

    
    public List<InventoryItem> getAvailableInventoryItems() {
        return inventoryItemRepository.findByAvailable(true);
    }
    public InventoryItem addInventoryItem(InventoryItem inventoryItem) {
        return inventoryItemRepository.save(inventoryItem);
    }

    public InventoryItem getInventoryItemById(int id) {
        return inventoryItemRepository.findById(id).get();
    }

    public void deleteInventoryItem(InventoryItem inventoryItem) {
        inventoryItemRepository.delete(inventoryItem);
    }
}
