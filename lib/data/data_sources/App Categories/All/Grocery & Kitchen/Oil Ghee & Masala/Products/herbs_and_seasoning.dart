import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> herbsAndSeasonings = [
  {
    "name": "MDH Mixed Herbs 100g",
    "weight": "100g",
    "price": 140,
    "rating": 4.7,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/mdh_mixedherbs_100g.png",
  },
  {
    "name": "Catch Mixed Herbs 100g",
    "weight": "100g",
    "price": 130,
    "rating": 4.6,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/catch_mixedherbs_100g.png",
  },
  {
    "name": "Everest Mixed Herbs 100g",
    "weight": "100g",
    "price": 135,
    "rating": 4.7,
    "ratingCount": 380,
    "imageUrl": "https://example.com/images/everest_mixedherbs_100g.png",
  },
  {
    "name": "Tata Mixed Herbs 50g",
    "weight": "50g",
    "price": 75,
    "rating": 4.5,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/tata_mixedherbs_50g.png",
  },

  {
    "name": "Catch Rosemary 50g",
    "weight": "50g",
    "price": 160,
    "rating": 4.6,
    "ratingCount": 230,
    "imageUrl": "https://example.com/images/catch_rosemary_50g.png",
  },
  {
    "name": "Everest Thyme 50g",
    "weight": "50g",
    "price": 150,
    "rating": 4.5,
    "ratingCount": 210,
    "imageUrl": "https://example.com/images/everest_thyme_50g.png",
  },
  {
    "name": "MDH Basil Powder 50g",
    "weight": "50g",
    "price": 130,
    "rating": 4.7,
    "ratingCount": 260,
    "imageUrl": "https://example.com/images/mdh_basil_50g.png",
  },
  {
    "name": "Tata Oregano 50g",
    "weight": "50g",
    "price": 140,
    "rating": 4.6,
    "ratingCount": 270,
    "imageUrl": "https://example.com/images/tata_oregano_50g.png",
  },

  {
    "name": "Catch Parsley 50g",
    "weight": "50g",
    "price": 120,
    "rating": 4.5,
    "ratingCount": 240,
    "imageUrl": "https://example.com/images/catch_parsley_50g.png",
  },
  {
    "name": "Everest Dill Powder 50g",
    "weight": "50g",
    "price": 130,
    "rating": 4.6,
    "ratingCount": 250,
    "imageUrl": "https://example.com/images/everest_dill_50g.png",
  },
];

List<Product> herbsAndSeasoning = List.generate(herbsAndSeasonings.length, (
  index,
) {
  return Product.fromMap(herbsAndSeasonings[index]);
});
