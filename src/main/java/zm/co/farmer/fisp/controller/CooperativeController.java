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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import zm.co.farmer.fisp.entity.Govtcoperative;
import zm.co.farmer.fisp.entity.User;
import zm.co.farmer.fisp.service.GovtcoperativeService;
import zm.co.farmer.fisp.service.UserService;

/**
 *
 * @author mumbi
 */
@Controller
public class CooperativeController {

    @Autowired
    private UserService userService;
    @Autowired
    private GovtcoperativeService govtcoperativeService;

    @RequestMapping("/cooperatives")
    public String page(Model model, @CookieValue("user_session_id") String username) {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);
        model.addAttribute("cooperatives", govtcoperativeService.getAllGovtcoperative());

        return "cooperatives";
    }

    @RequestMapping(path = {"/addcooperative"}, method = RequestMethod.GET)
    public String addCooperative(Model model, @CookieValue("user_session_id") String username) {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);

        return "addcooperative";
    }

    @RequestMapping(path = {"/addcooperative"}, method = RequestMethod.POST)
    public String addCooperativeAction(Model model, @CookieValue("user_session_id") String username,
            @ModelAttribute("cooperative") Govtcoperative govtcoperative) {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);
        
        govtcoperative = govtcoperativeService.addGovtcoperative(govtcoperative);

        return "redirect:/cooperatives";
    }

    @ExceptionHandler({Exception.class})
    public String databaseError() {
        return "error";
    }

}
