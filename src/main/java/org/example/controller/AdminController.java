package org.example.controller;

import jakarta.validation.Valid;
import org.example.dto.AnimalServiceDTO;
import org.example.entity.AnimalService;
import org.example.entity.ClientRecord;
import org.example.entity.User;
import org.example.service.AnimalServiceService;
import org.example.service.ClientRecordService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private AnimalServiceService animalServiceService;

    @Autowired
    private ClientRecordService clientRecordService;

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
    public String  deleteUser(@RequestParam int userId) {
        userService.deleteUser(userId);
    return "redirect:/admin/showuser";
    }

    @GetMapping("/addanimalservice")
    public String showAddAnimalServicePage(Model model){
        model.addAttribute("animalServiceForm", new AnimalServiceDTO());
        return "addAnimalService";
    }

    @PostMapping("/addanimalservice")
    public String addAnimalService(@ModelAttribute("animalServiceForm") @Valid AnimalServiceDTO animalServiceDTO, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return "addAnimalService";
        }
        animalServiceService.addAnimalService(animalServiceDTO);
        return "redirect:/all/salon/service";
    }

    @GetMapping("/updatecost")
    public String showupdateAnimalServiceCostPage(Model model){
        List<AnimalService> services = animalServiceService.findService();
        model.addAttribute("services", services);

        model.addAttribute("costForm", new AnimalServiceDTO());
        return "updateAnimalServiceCost";
    }

    @PostMapping("/updatecost")
    public String updateAnimalServiceCost(@ModelAttribute("costForm") @Valid AnimalServiceDTO animalServiceDTO, BindingResult bindingResult, Model model){
        List<AnimalService> services = animalServiceService.findService();
        model.addAttribute("services", services);

        if (bindingResult.hasErrors()) {
            return "updateAnimalServiceCost";
        }

        animalServiceService.updateAnimalServiceCost(animalServiceDTO);
        return "redirect:/all/salon/service";
    }

    @GetMapping("showclientrecord")
    public String showAllClientRecord(Model model){
        List<ClientRecord> clientRecords = clientRecordService.showAllClientRecord();
        model.addAttribute("clientRecords", clientRecords);

        return "showAllClientRecord";
    }

    @PostMapping("/showclientrecord")
    public String deleteClientRecord(@RequestParam int clientRecordId) {
        clientRecordService.deleteClientRecord(clientRecordId);
        return "redirect:/admin/showclientrecord";
    }
}
