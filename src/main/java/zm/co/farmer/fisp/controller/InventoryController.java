/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import zm.co.farmer.fisp.entity.InventoryItem;
import zm.co.farmer.fisp.entity.User;
import zm.co.farmer.fisp.service.InventoryService;
import zm.co.farmer.fisp.service.UserService;

/**
 *
 * @author Mumbi Chishimba
 */
@Controller
public class InventoryController {

    @Autowired
    private UserService userService;
    @Autowired
    private InventoryService inventoryService;

    @RequestMapping(path = {"/addinventory"}, method = RequestMethod.GET)
    public String addInventoryItem(Model model, @CookieValue("user_session_id") String username) {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);

        return "addinventoryitem";
    }

    @RequestMapping(path = {"/addinventory"}, method = RequestMethod.POST)
    public String addInventoryItemAction(Model model,
            @CookieValue("user_session_id") String username,
            @ModelAttribute("barcode") String barcode,
            @ModelAttribute("name") String name,
            @ModelAttribute("quantity") Float quantity,
            @ModelAttribute("quantitytype") String quantitytype,
            @ModelAttribute("supplier") String supplier,
            @ModelAttribute("available") String available,
            @ModelAttribute("itemtype") String itemtype) {

        User user = userService.getUserByUsername(username);

        boolean avail = (available.equalsIgnoreCase("1"));

        InventoryItem inventoryItem = new InventoryItem();
        inventoryItem.setAvailable(avail);
        inventoryItem.setBarcodenumber(barcode);
        inventoryItem.setBatchid(System.currentTimeMillis()+"");
        inventoryItem.setName(name);
        inventoryItem.setQuantity(quantity);
        inventoryItem.setQuantitytype(quantitytype);
        inventoryItem.setSupplier(supplier);
        inventoryItem.setType(name);
        
        inventoryItem = inventoryService.addInventoryItem(inventoryItem);
        
        System.out.println(inventoryItem);

        return "redirect:/inventory";
    }
    
    @RequestMapping(path = {"/inventory"})
    public String pageone(Model model, @CookieValue("user_session_id") String username) {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);

        // Inject user list
        model.addAttribute("inventory", inventoryService.getAllInventoryItems());

        return "inventory";
    }

}