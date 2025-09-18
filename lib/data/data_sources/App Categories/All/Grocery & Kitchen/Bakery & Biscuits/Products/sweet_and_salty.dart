import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> saltyCookies = [
  {
    "name": "Britannia NutriChoice Crackers 120g",
    "weight": "120g",
    "price": 45,
    "rating": 4.5,
    "ratingCount": 580,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_crackers_120g.png",
  },
  {
    "name": "Sunfeast Farmlite Crackers 150g",
    "weight": "150g",
    "price": 50,
    "rating": 4.6,
    "ratingCount": 540,
    "imageUrl":
        "https://example.com/images/sunfeast_farmlite_crackers_150g.png",
  },
  {
    "name": "Parle KrackJack 60g",
    "weight": "60g",
    "price": 15,
    "rating": 4.4,
    "ratingCount": 700,
    "imageUrl": "https://example.com/images/parle_krackjack_60g.png",
  },
  {
    "name": "Parle KrackJack 250g",
    "weight": "250g",
    "price": 55,
    "rating": 4.5,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/parle_krackjack_250g.png",
  },
  {
    "name": "Britannia NutriChoice Crackers 250g",
    "weight": "250g",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 500,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_crackers_250g.png",
  },

  {
    "name": "Hi-Ro Crackers 150g",
    "weight": "150g",
    "price": 45,
    "rating": 4.3,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/hiro_crackers_150g.png",
  },
  {
    "name": "Anmol KrackJack 60g",
    "weight": "60g",
    "price": 16,
    "rating": 4.2,
    "ratingCount": 470,
    "imageUrl": "https://example.com/images/anmol_krackjack_60g.png",
  },
  {
    "name": "Sunfeast Yippee Crackers 120g",
    "weight": "120g",
    "price": 50,
    "rating": 4.4,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/sunfeast_yippee_120g.png",
  },
  {
    "name": "Unibic Salted Crackers 160g",
    "weight": "160g",
    "price": 70,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/unibic_salted_crackers_160g.png",
  },
  {
    "name": "Haldiram's Salted Naan Crackers 150g",
    "weight": "150g",
    "price": 65,
    "rating": 4.7,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/haldirams_naan_crackers_150g.png",
  },
];

final List<Product> sweetAndSaltyCookies = List.generate(saltyCookies.length, (
  index,
) {
  return Product.fromMap(saltyCookies[index]);
});
