package org.example.controller;

import org.example.entity.Comment;
import org.example.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/salon")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @GetMapping("/comment")
    public String showCommentPage(Model model){
        List<Comment> comments = commentService.findComment();
        model.addAttribute("comments", comments);
        System.out.println(comments);
        return "comment";
    }
}
