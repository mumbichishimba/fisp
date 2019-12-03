/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.controller;

import java.sql.SQLException;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import zm.co.farmer.fisp.entity.Govtcoperative;
import zm.co.farmer.fisp.entity.User;
import zm.co.farmer.fisp.service.GovtcoperativeService;
import zm.co.farmer.fisp.service.UserService;

/**
 *
 * @author MUNDIAG
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private GovtcoperativeService govtcoperativeService;

    @RequestMapping(path = {"/users"}, method = RequestMethod.GET)
    public String users(Model model, @CookieValue("user_session_id") String username) throws SQLException {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);

        model.addAttribute("users", userService.getAllUsers());

        return "viewusers";
    }

    @RequestMapping(path = {"/adduser"}, method = RequestMethod.GET)
    public String loaduser(Model model, @CookieValue("user_session_id") String username) throws SQLException {

        User user = userService.getUserByUsername(username);
        model.addAttribute("user", user);
        model.addAttribute("cooperative", govtcoperativeService.getAllGovtcoperative());

        model.addAttribute("users", userService.getAllUsers());

        return "adduser";
    }

    @RequestMapping(path = {"/adduser"}, method = RequestMethod.POST)
    public String addUser(Model model, @ModelAttribute("firstname") String firstname, @ModelAttribute("lastname") String lastname,
            @ModelAttribute("username") String username, @ModelAttribute("password") String password,
            @ModelAttribute("othername") String othername,
            @ModelAttribute("gender") String gender, @ModelAttribute("address") String address,
            @ModelAttribute("city") String city, @ModelAttribute("dateofbirth") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateofbirth,
            @ModelAttribute("email") String email, @ModelAttribute("userrole") String userrole, @ModelAttribute("cooperative") Integer cooperativeid) {
        
        Govtcoperative govtcooperative = govtcoperativeService.getCooperativeById(cooperativeid);
        User usr = new User();
        

        usr.setFirstname(firstname);
        usr.setLastname(lastname);
        usr.setUsername(username);
        usr.setPassword(password);
        usr.setOthername(othername);
        usr.setGender(gender);
        usr.setAddress(address);
        usr.setCity(city);
        usr.setDateofbirth(dateofbirth);
        usr.setEmail(email);
        usr.setCooperative(govtcooperative);

        User rs = userService.addOrUpdateUser(usr);

        return "redirect:/users";
    }

}
