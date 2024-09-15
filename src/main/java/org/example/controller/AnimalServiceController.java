package org.example.controller;

import org.example.entity.AnimalService;
import org.example.service.AnimalServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/all/salon")
public class AnimalServiceController {

    @Autowired
    private AnimalServiceService serviceForAnimalService;

    @GetMapping("/service")
    public String showServicePage(Model model){
        List<AnimalService> services = serviceForAnimalService.findService();
        model.addAttribute("services", services);
        return "service";
    }

    @GetMapping("/cost")
    public String showCostPage(Model model){
        List<AnimalService> costs = serviceForAnimalService.findService();
        model.addAttribute("costs", costs);
        return "cost";
    }

}
