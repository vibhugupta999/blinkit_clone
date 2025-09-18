import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> milkProducts = [
  {
    "name": "Amul Taaza Full Cream Milk 1L",
    "weight": "1L",
    "price": 55,
    "rating": 4.5,
    "ratingCount": 650,
    "imageUrl": "https://example.com/images/amul_taaza_1l.png",
  },
  {
    "name": "Mother Dairy Full Cream Milk 1L",
    "weight": "1L",
    "price": 60,
    "rating": 4.6,
    "ratingCount": 570,
    "imageUrl": "https://example.com/images/motherdairy_fullcream_1l.png",
  },
  {
    "name": "Britannia Full Cream Milk 1L",
    "weight": "1L",
    "price": 58,
    "rating": 4.4,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/britannia_fullcream_1l.png",
  },
  {
    "name": "Gokul Full Cream Milk 1L",
    "weight": "1L",
    "price": 56,
    "rating": 4.3,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/gokul_fullcream_1l.png",
  },
  {
    "name": "Parag Full Cream Milk 1L",
    "weight": "1L",
    "price": 59,
    "rating": 4.5,
    "ratingCount": 360,
    "imageUrl": "https://example.com/images/parag_fullcream_1l.png",
  },

  {
    "name": "Amul Slim & Trim Toned Milk 1L",
    "weight": "1L",
    "price": 53,
    "rating": 4.4,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/amul_slim_trim_1l.png",
  },
  {
    "name": "Mother Dairy Toned Milk 1L",
    "weight": "1L",
    "price": 55,
    "rating": 4.3,
    "ratingCount": 380,
    "imageUrl": "https://example.com/images/motherdairy_toned_1l.png",
  },
  {
    "name": "Britannia Toned Milk 1L",
    "weight": "1L",
    "price": 54,
    "rating": 4.2,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/britannia_toned_1l.png",
  },
  {
    "name": "Parag Toned Milk 1L",
    "weight": "1L",
    "price": 52,
    "rating": 4.1,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/parag_toned_1l.png",
  },
  {
    "name": "Gokul Toned Milk 1L",
    "weight": "1L",
    "price": 53,
    "rating": 4.0,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/gokul_toned_1l.png",
  },

  {
    "name": "Mother Dairy Double Toned Milk 500ml",
    "weight": "500ml",
    "price": 30,
    "rating": 4.1,
    "ratingCount": 220,
    "imageUrl": "https://example.com/images/motherdairy_doubletoned_500ml.png",
  },
  {
    "name": "Hatsun Premium Milk 1L",
    "weight": "1L",
    "price": 62,
    "rating": 4.6,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/hatsun_premium_1l.png",
  },
];

final List<Product> milk = List.generate(milkProducts.length, (index) {
  return Product.fromMap(milkProducts[index]);
});
