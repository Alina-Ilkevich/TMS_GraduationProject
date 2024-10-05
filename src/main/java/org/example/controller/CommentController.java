package org.example.controller;

import jakarta.validation.Valid;
import org.example.entity.Comment;
import org.example.service.CommentService;
import org.example.util.consts.PaginationConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/all/salon")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @GetMapping("/comment")
    public String showCommentPage(
            @RequestParam(defaultValue = "0") int page,
            Model model) {

        Pageable paging = PageRequest.of(page, PaginationConst.PAGE_SIZE);
        Page<Comment> pageComments = commentService.findCommentForPagination(paging);
        List<Comment> comments = pageComments.getContent();

        model.addAttribute("comments", comments);
        model.addAttribute("currentPage", pageComments.getNumber());
        model.addAttribute("totalPages", pageComments.getTotalPages());
        model.addAttribute("totalItems", pageComments.getTotalElements());

        return "comment";
    }

    @PostMapping("/comment")
    public String deleteComment(@RequestParam int commentId){
        commentService.deleteComment(commentId);
        return "redirect:/all/salon/comment";
    }

    @GetMapping("/addcomment")
    public String showAddCommentPage(Model model){
        model.addAttribute("commentForm", new Comment());
        return "addComment";
    }

    @PostMapping("/addcomment")
    public String addComment(@ModelAttribute("commentForm") @Valid Comment comment, BindingResult bindingResult, Model model){
        if (bindingResult.hasErrors()) {
            return "addComment";
        }
        commentService.saveComment(comment);
        return "redirect:/all/salon/comment";
    }

}
