package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/salon")
public class MainController {

    @GetMapping("/main")
    public String showMainPage(){
        return "main";
    }
}
