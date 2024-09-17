package org.example.controller;

import org.example.entity.AnimalService;
import org.example.entity.User;
import org.example.dto.AnimalServiceDTO;
import org.example.service.AnimalServiceService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private AnimalServiceService animalServiceService;

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

    @GetMapping("/addanimalservice")
    public String showAddAnimalServicePage(Model model){
        model.addAttribute("animalServiceForm", new AnimalService());
        return "addAnimalService";
    }

    @PostMapping("/addanimalservice")
    public String addAnimalService(@ModelAttribute("animalServiceForm") AnimalServiceDTO animalServiceDTO){
        animalServiceService.addAnimalService(animalServiceDTO);
        return "redirect:/all/salon/service";
    }
}
