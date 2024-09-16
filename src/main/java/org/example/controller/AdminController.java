package org.example.controller;

import org.example.entity.AnimalService;
import org.example.entity.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @GetMapping("/adminpage")
    public String showAdminPage(){
        return "adminPage";
    }

    @GetMapping("/showuser")
    public String showUserPage(Model model){
        List<User> users = userService.findUser();
        model.addAttribute("users", users);
        return "showUser";
    }

    @PostMapping("/showuser")
    public String  deleteUser(@RequestParam(required = true, defaultValue = "" ) int userId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
            userService.deleteUser(userId);
        return "redirect:/admin/showuser";
    }

}
