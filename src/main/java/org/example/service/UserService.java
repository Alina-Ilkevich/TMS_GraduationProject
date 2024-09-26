package org.example.service;

import org.example.entity.Role;
import org.example.entity.User;
import org.example.repository.UserRepository;
import org.example.util.consts.RoleConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService{

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private RoleService roleService;
    
    public User loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userRepository.findByLogin(login);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return user;
    }

    public boolean checkUniqueLogin(User user){
        User userFromDB = userRepository.findByLogin(user.getLogin());
        if (userFromDB != null) {
            return false;
        }
        return true;
    }

    public void save(User user) {
        Role role = roleService.getDefaultRole(user);
        user.setRole(role);

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        userRepository.save(user);
    }

    public List<User> findUser(){
        return userRepository.findAll();
    }

    public void deleteUser(int userId) {
        userRepository.deleteById(userId);
    }

    public List<User> findMaster(){
        return userRepository.findByRoleId(RoleConst.ID_MASTER_ROLE);
    }
}
