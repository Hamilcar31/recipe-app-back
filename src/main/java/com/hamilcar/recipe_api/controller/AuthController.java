package com.hamilcar.recipe_api.controller;

import com.hamilcar.recipe_api.dto.AuthResponse;
import com.hamilcar.recipe_api.service.AuthService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*", maxAge = 3600)
public class AuthController {

    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestParam String username, @RequestParam String password) {
        try {
            String token = authService.login(username, password);
            return ResponseEntity.ok(AuthResponse.builder()
                    .token(token)
                    .message("Login successful")
                    .build());
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                    .body(AuthResponse.builder()
                            .message("Login failed: " + e.getMessage())
                            .build());
        }
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestParam String username, @RequestParam String password) {
        try {
            authService.register(username, password);
            return ResponseEntity.ok(AuthResponse.builder()
                    .message("User registered successfully")
                    .build());
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(AuthResponse.builder()
                            .message("Registration failed: " + e.getMessage())
                            .build());
        }
    }
}



