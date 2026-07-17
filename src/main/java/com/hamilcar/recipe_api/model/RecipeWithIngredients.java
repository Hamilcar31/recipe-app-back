package com.hamilcar.recipe_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.List;
import java.util.UUID;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

@Entity
@Table(name = "recipes_with_ingredients")
@Immutable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecipeWithIngredients {

  @Id
  private UUID id;

  private String title;

  private String description;

  private String instructions;

  private Integer duration;

  private Integer servings;

  @JdbcTypeCode(SqlTypes.JSON_ARRAY)
  @Column(columnDefinition = "jsonb")
  private List<RecipeIngredient> ingredients;
}

