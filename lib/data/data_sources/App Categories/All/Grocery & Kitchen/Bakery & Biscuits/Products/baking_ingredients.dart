import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> bakingIngredient = [
  {
    "name": "Britannia Baking Powder 100g",
    "weight": "100g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/britannia_baking_powder_100g.png",
  },
  {
    "name": "Dr. Oetker Baking Powder 100g",
    "weight": "100g",
    "price": 65,
    "rating": 4.7,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/droetker_baking_powder_100g.png",
  },
  {
    "name": "Britannia Maida (All-Purpose Flour) 1kg",
    "weight": "1kg",
    "price": 40,
    "rating": 4.6,
    "ratingCount": 700,
    "imageUrl": "https://example.com/images/britannia_maida_1kg.png",
  },
  {
    "name": "Ashirvaad Maida 1kg",
    "weight": "1kg",
    "price": 45,
    "rating": 4.5,
    "ratingCount": 650,
    "imageUrl": "https://example.com/images/ashirvaad_maida_1kg.png",
  },
  {
    "name": "Pillsbury Maida 1kg",
    "weight": "1kg",
    "price": 48,
    "rating": 4.6,
    "ratingCount": 620,
    "imageUrl": "https://example.com/images/pillsbury_maida_1kg.png",
  },
  {
    "name": "Britannia Refined Wheat Flour 1kg",
    "weight": "1kg",
    "price": 35,
    "rating": 4.4,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/britannia_wheat_flour_1kg.png",
  },
  {
    "name": "Pillsbury Refined Wheat Flour 1kg",
    "weight": "1kg",
    "price": 37,
    "rating": 4.5,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/pillsbury_wheat_flour_1kg.png",
  },
  {
    "name": "Ashirvaad Wheat Flour 1kg",
    "weight": "1kg",
    "price": 40,
    "rating": 4.6,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/ashirvaad_wheat_flour_1kg.png",
  },
  {
    "name": "Horlicks Baking Flour 500g",
    "weight": "500g",
    "price": 60,
    "rating": 4.3,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/horlicks_baking_flour_500g.png",
  },
  {
    "name": "Dr. Oetker Cake Flour 1kg",
    "weight": "1kg",
    "price": 120,
    "rating": 4.7,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/droetker_cake_flour_1kg.png",
  },
];

final List<Product> bakingIngredients = List.generate(bakingIngredient.length, (
  index,
) {
  return Product.fromMap(bakingIngredient[index]);
});
