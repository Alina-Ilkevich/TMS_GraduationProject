package org.example.controller;

import jakarta.validation.Valid;
import org.example.entity.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/all")
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String showRegistrationPage(Model model){
        model.addAttribute("userForm", new User());
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser( @ModelAttribute("userForm") @Valid User user, BindingResult bindingResult, Model model){
        if (bindingResult.hasErrors()) {
            return "registration";
        }
        else if (!userService.checkUniqueLogin(user)){
            model.addAttribute("usernameError", "Пользователь с таким логином уже существует");
            return "registration";
        } else {
            userService.save(user);
        }
        return "redirect:/all/salon/main";
    }
}
