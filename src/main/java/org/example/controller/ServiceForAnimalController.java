package org.example.controller;

import org.example.entity.Comment;
import org.example.entity.ServiceForAnimal;
import org.example.service.ServiceForAnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/salon")
public class ServiceForAnimalController {

    @Autowired
    private ServiceForAnimalService serviceForAnimalService;

    @GetMapping("/service")
    public String showServicePage(Model model){
        List<ServiceForAnimal> services = serviceForAnimalService.findService();
        model.addAttribute("services", services);
        return "service";
    }

    @GetMapping("/cost")
    public String showCostPage(Model model){
        List<ServiceForAnimal> costs = serviceForAnimalService.findService();
        model.addAttribute("costs", costs);
        return "cost";
    }

}
