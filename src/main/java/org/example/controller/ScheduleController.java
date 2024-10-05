package org.example.controller;

import org.example.dto.ScheduleDTO;
import org.example.entity.User;
import org.example.service.ScheduleService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private UserService userService;

    @GetMapping("/addschedule")
    public String showAddSchedulePage(Model model){
        List<User> masters = userService.findMaster();
        model.addAttribute("masters", masters);

        model.addAttribute("scheduleForm", new ScheduleDTO());

        return "addSchedule";
    }

    @PostMapping("addschedule")
    public String addSchedule(@ModelAttribute("scheduleForm") ScheduleDTO scheduleDTO){
        scheduleService.addSchedule(scheduleDTO);
        return "redirect:/admin/adminpage";
    }
}
