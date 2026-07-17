package com.hamilcar.recipe_api.service;

import com.hamilcar.recipe_api.model.RecipeWithIngredients;
import com.hamilcar.recipe_api.repository.RecipeWithIngredientsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecipeWithIngredientsService {

  private final RecipeWithIngredientsRepository recipeWithIngredientsRepository;

  public List<RecipeWithIngredients> getAllRecipesWithIngredients() {
    return recipeWithIngredientsRepository.findAll();
  }
}