package com.hamilcar.recipe_api.controller;

import com.hamilcar.recipe_api.model.RecipeWithIngredients;
import com.hamilcar.recipe_api.service.RecipeWithIngredientsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/recipes")
@RequiredArgsConstructor
public class RecipeWithIngredientsController {

  private final RecipeWithIngredientsService recipeWithIngredientsService;

  @GetMapping
  public List<RecipeWithIngredients> getAllRecipesWithIngredients() {
    return recipeWithIngredientsService.getAllRecipesWithIngredients();
  }
}