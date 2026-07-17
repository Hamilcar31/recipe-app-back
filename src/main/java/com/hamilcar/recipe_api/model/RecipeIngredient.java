package com.hamilcar.recipe_api.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecipeIngredient {

  @Column(nullable = false)
  private String ingredient;

  @Column(nullable = false, precision = 10, scale = 2)
  private BigDecimal quantity;

  @Column(nullable = false)
  private String unit;
}