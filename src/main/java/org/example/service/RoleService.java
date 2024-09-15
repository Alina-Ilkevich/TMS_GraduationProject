package org.example.service;

import org.example.entity.Role;
import org.example.entity.User;
import org.example.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

    @Autowired
    private RoleRepository roleRepository;

    public Role getDefaultRole(User user) {
        return roleRepository.findById(2);
    }
}
