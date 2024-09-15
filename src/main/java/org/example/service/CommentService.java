package org.example.service;

import org.example.entity.Comment;
import org.example.entity.User;
import org.example.repository.CommentRepository;
import org.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    private UserRepository userRepository;

    public List<Comment> findComment(){
        return commentRepository.findAll();
    }

    public Page<Comment> findCommentForPagination(Pageable pageable){
        return commentRepository.findAll(pageable);
    }

    public void saveComment(Comment comment){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userLogin = authentication.getName();
        User user = userRepository.findByLogin(userLogin);
        comment.setUserComment(user);
        commentRepository.save(comment);
    }
}
