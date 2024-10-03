package org.example.repository;

import org.example.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {

    User findByLogin(String login);

    User save(User user);

    List <User> findByRoleId(int roleId);
}
