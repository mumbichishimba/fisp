/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.controller;

import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import zm.co.farmer.fisp.entity.User;
import zm.co.farmer.fisp.service.UserService;

/**
 *
 * @author MUNDIAG
 */
@Controller
public class UserController {
    
    @Autowired
    private UserService userService;

    @RequestMapping(path = {"/users"}, method = RequestMethod.GET)
    public String users(Model model, @CookieValue("user_session_id") String username) throws SQLException {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);
        
        model.addAttribute("users", userService.getAllUsers());
        
        return "users";
    }

    @RequestMapping(path = {"/adduser"}, method = RequestMethod.GET)
    public String addUser(Model model) {
        return "adduser";
    }
}
