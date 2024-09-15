package org.example.controller;

import org.example.entity.Comment;
import org.example.entity.AnimalService;
import org.example.service.CommentService;
import org.example.service.AnimalServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/all/salon")
public class MainController {

    @Autowired
    private AnimalServiceService service;

    @Autowired
    private CommentService comment;

    @GetMapping("/main")
    public String showMainPage(Model model){
        List<AnimalService> services = service.findService();
        model.addAttribute("services", services);
        List<Comment> comments = comment.findComment();
        model.addAttribute("comments", comments);

        return "main";
    }

    @GetMapping("/contact")
    public String showContactPage(){
        return "contact";
    }

    @GetMapping("/master")
    public String showMasterPage(){
        return "master";
    }

}
