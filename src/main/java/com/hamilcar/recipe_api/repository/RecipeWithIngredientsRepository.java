package com.hamilcar.recipe_api.repository;

import com.hamilcar.recipe_api.model.RecipeWithIngredients;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RecipeWithIngredientsRepository extends JpaRepository<RecipeWithIngredients, UUID> {
}
