package com.example.apitestrepo;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class PostController {

//    private final PostRepository postRepository;

    @GetMapping("/post")
    public ResponseEntity<String> list(){
        return ResponseEntity.ok().body("success");

    }
}
