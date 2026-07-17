-- Insert test recipes
INSERT INTO recipes (id, title, description, instructions, duration, servings) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'Pâtes Carbonara', 'Recette italienne classique riche et crémeuse',
 'Cuire les pâtes. Faire revenir le lard. Mélanger œufs et fromage. Combiner tous les ingrédients et servir chaud.',
 20, 4),

('550e8400-e29b-41d4-a716-446655440002', 'Tarte aux Pommes', 'Tarte classique aux pommes fraîches et épices',
 'Préparer la pâte. Émincer les pommes. Mélanger avec sucre et cannelle. Garnir la tarte et cuire au four 45 minutes à 180°C.',
 60, 8),

('550e8400-e29b-41d4-a716-446655440003', 'Soupe à l''Oignon', 'Soupe française gratinée au fromage',
 'Caraméliser les oignons. Ajouter le bouillon. Laisser mijoter 30 minutes. Verser dans un bol, ajouter le pain et le fromage. Gratiner au four.',
 45, 4),

('550e8400-e29b-41d4-a716-446655440004', 'Risotto aux Champignons', 'Risotto crémeux et savoureux',
 'Faire revenir les champignons. Verser le riz et laisser toaster. Ajouter progressivement le bouillon en remuant. Finir avec le fromage et le beurre.',
 40, 2),

('550e8400-e29b-41d4-a716-446655440005', 'Bouillabaisse', 'Soupe de poisson méditerranéenne',
 'Préparer le bouillon avec tomates, safran et fenouil. Ajouter les poissons. Servir avec croûtons et rouille.',
 75, 6);

-- Insert ingredients for Carbonara
INSERT INTO recipe_ingredients (recipe_id, ingredient, quantity, unit) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'Pâtes', 400, 'g'),
('550e8400-e29b-41d4-a716-446655440001', 'Bacon', 200, 'g'),
('550e8400-e29b-41d4-a716-446655440001', 'Œufs', 4, 'pièces'),
('550e8400-e29b-41d4-a716-446655440001', 'Pecorino Romano', 100, 'g');

-- Insert ingredients for Tarte aux Pommes
INSERT INTO recipe_ingredients (recipe_id, ingredient, quantity, unit) VALUES
('550e8400-e29b-41d4-a716-446655440002', 'Pâte brisée', 500, 'g'),
('550e8400-e29b-41d4-a716-446655440002', 'Pommes', 8, 'pièces'),
('550e8400-e29b-41d4-a716-446655440002', 'Sucre', 150, 'g'),
('550e8400-e29b-41d4-a716-446655440002', 'Cannelle', 5, 'g');

-- Insert ingredients for Soupe à l'Oignon
INSERT INTO recipe_ingredients (recipe_id, ingredient, quantity, unit) VALUES
('550e8400-e29b-41d4-a716-446655440003', 'Oignons', 1000, 'g'),
('550e8400-e29b-41d4-a716-446655440003', 'Bouillon de bœuf', 1500, 'ml'),
('550e8400-e29b-41d4-a716-446655440003', 'Pain de mie', 4, 'tranche'),
('550e8400-e29b-41d4-a716-446655440003', 'Emmental', 200, 'g');

-- Insert ingredients for Risotto aux Champignons
INSERT INTO recipe_ingredients (recipe_id, ingredient, quantity, unit) VALUES
('550e8400-e29b-41d4-a716-446655440004', 'Riz Arborio', 300, 'g'),
('550e8400-e29b-41d4-a716-446655440004', 'Champignons de Paris', 250, 'g'),
('550e8400-e29b-41d4-a716-446655440004', 'Bouillon de légumes', 1000, 'ml'),
('550e8400-e29b-41d4-a716-446655440004', 'Vin blanc', 150, 'ml'),
('550e8400-e29b-41d4-a716-446655440004', 'Parmesan', 100, 'g');

-- Insert ingredients for Bouillabaisse
INSERT INTO recipe_ingredients (recipe_id, ingredient, quantity, unit) VALUES
('550e8400-e29b-41d4-a716-446655440005', 'Poissons variés', 800, 'g'),
('550e8400-e29b-41d4-a716-446655440005', 'Tomates', 500, 'g'),
('550e8400-e29b-41d4-a716-446655440005', 'Safran', 1, 'g'),
('550e8400-e29b-41d4-a716-446655440005', 'Fenouil', 100, 'g'),
('550e8400-e29b-41d4-a716-446655440005', 'Ail', 6, 'gousses');

