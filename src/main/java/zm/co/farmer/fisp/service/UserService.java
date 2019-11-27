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
import zm.co.farmer.fisp.entity.User;
import zm.co.farmer.fisp.repository.UserRepository;
import zm.co.farmer.fisp.util.MD5Hash;

/**
 *
 * @author Mumbi Chishimba
 */
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User login(String username, String password) {
        User user = null;

        try {
            user = userRepository.findByUsernameAndPassword(username, MD5Hash.generateMD5(password));
        } catch (Exception e) {
        }

        return user;
    }

    /**
     * Either add a new user or update an existing user. To update a user, the
     * <b>id</b> field needs to have a value
     *
     * @param user
     * @return
     */
    public User addOrUpdateUser(User user) {
        return userRepository.save(user);
    }

    /**
     * Get a user object from the database by the username
     *
     * @param username
     * @return
     */
    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    /**
     * Get all the users in the system
     *
     * @return
     */
    public List<User> getAllUsers() {
        return Lists.newArrayList(userRepository.findAll());
    }

    /**
     * Get all users of a particular user type
     *
     * @param userRole
     * @return
     */
    public List<User> getUsersByUserType(int userRole) {
        return userRepository.findByUserrole(userRole);
    }
}
