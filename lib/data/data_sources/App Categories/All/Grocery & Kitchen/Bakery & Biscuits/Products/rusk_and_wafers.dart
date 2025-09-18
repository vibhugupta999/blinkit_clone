import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> ruskAndWafer = [
  // Rusk Products
  {
    "name": "Britannia Rusk 200g",
    "weight": "200g",
    "price": 50,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl": "https://example.com/images/britannia_rusk_200g.png",
  },
  {
    "name": "Britannia Rusk 400g",
    "weight": "400g",
    "price": 90,
    "rating": 4.7,
    "ratingCount": 850,
    "imageUrl": "https://example.com/images/britannia_rusk_400g.png",
  },
  {
    "name": "Britannia NutriChoice Rusk 250g",
    "weight": "250g",
    "price": 65,
    "rating": 4.5,
    "ratingCount": 700,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_rusk_250g.png",
  },
  {
    "name": "Anmol Rusk 200g",
    "weight": "200g",
    "price": 45,
    "rating": 4.3,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/anmol_rusk_200g.png",
  },
  {
    "name": "Britannia Treat NutriChoice Rusk 300g",
    "weight": "300g",
    "price": 75,
    "rating": 4.6,
    "ratingCount": 600,
    "imageUrl":
        "https://example.com/images/britannia_treat_nutrichoice_300g.png",
  },

  // Wafers Products
  {
    "name": "Lay's Classic Salted Potato Chips 52g",
    "weight": "52g",
    "price": 15,
    "rating": 4.7,
    "ratingCount": 1200,
    "imageUrl": "https://example.com/images/lays_classic_52g.png",
  },
  {
    "name": "Lay's Magic Masala Potato Chips 52g",
    "weight": "52g",
    "price": 15,
    "rating": 4.6,
    "ratingCount": 1150,
    "imageUrl": "https://example.com/images/lays_magic_masala_52g.png",
  },
  {
    "name": "Lay's American Style Cream & Onion Chips 52g",
    "weight": "52g",
    "price": 15,
    "rating": 4.5,
    "ratingCount": 1100,
    "imageUrl": "https://example.com/images/lays_cream_onion_52g.png",
  },
  {
    "name": "Haldiram's Aloo Bhujia 200g",
    "weight": "200g",
    "price": 80,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl": "https://example.com/images/haldirams_aloo_bhujia_200g.png",
  },
  {
    "name": "Bingo Mad Angles Masala 75g",
    "weight": "75g",
    "price": 20,
    "rating": 4.5,
    "ratingCount": 850,
    "imageUrl": "https://example.com/images/bingo_mad_angles_masala_75g.png",
  },
];

final List<Product> ruskAndWafers = List.generate(ruskAndWafer.length, (index) {
  return Product.fromMap(ruskAndWafer[index]);
});
