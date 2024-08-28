package org.example.service;

import org.example.entity.Comment;
import org.example.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentRepository commentRepository;

    public List<Comment> findComment(){
        return commentRepository.findAll();
    }

    public Page<Comment> findCommentForPagination(Pageable pageable){
        return commentRepository.findAll(pageable);
    }
}
