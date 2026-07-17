package com.hamilcar.recipe_api.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Entity
@Table(name = "users")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.UUID)
  private UUID id;

  @Column(nullable = false, unique = true, length = 100)
  private String username;

  @Column(nullable = false, length = 255)
  private String password;

  @Builder.Default
  @Column(nullable = false, length = 50)
  private String role = "USER";
}