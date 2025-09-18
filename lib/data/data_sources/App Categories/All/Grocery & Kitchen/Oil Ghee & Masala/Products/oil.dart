import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> cookingOils = [
  // Mustard Oil
  {
    "name": "Fortune Mustard Oil 1L",
    "weight": "1L",
    "price": 180,
    "rating": 4.4,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/fortune_mustard.png",
  },
  {
    "name": "Patanjali Mustard Oil 1L",
    "weight": "1L",
    "price": 170,
    "rating": 4.3,
    "ratingCount": 270,
    "imageUrl": "https://example.com/images/patanjali_mustard.png",
  },
  {
    "name": "Dhara Mustard Oil 500ml",
    "weight": "500ml",
    "price": 100,
    "rating": 4.2,
    "ratingCount": 190,
    "imageUrl": "https://example.com/images/dhara_mustard.png",
  },
  {
    "name": "Saffola Mustard Oil 1L",
    "weight": "1L",
    "price": 190,
    "rating": 4.5,
    "ratingCount": 210,
    "imageUrl": "https://example.com/images/saffola_mustard.png",
  },
  {
    "name": "100% Pure Mustard Oil 1L",
    "weight": "1L",
    "price": 160,
    "rating": 4.1,
    "ratingCount": 160,
    "imageUrl": "https://example.com/images/pure_mustard.png",
  },

  // Sunflower Oil
  {
    "name": "Fortune Sunflower Oil 1L",
    "weight": "1L",
    "price": 150,
    "rating": 4.3,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/fortune_sunflower.png",
  },
  {
    "name": "Saffola Sunflower Oil 1L",
    "weight": "1L",
    "price": 160,
    "rating": 4.4,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/saffola_sunflower.png",
  },
  {
    "name": "Patanjali Sunflower Oil 1L",
    "weight": "1L",
    "price": 140,
    "rating": 4.2,
    "ratingCount": 250,
    "imageUrl": "https://example.com/images/patanjali_sunflower.png",
  },
  {
    "name": "Dhara Sunflower Oil 500ml",
    "weight": "500ml",
    "price": 85,
    "rating": 4.1,
    "ratingCount": 220,
    "imageUrl": "https://example.com/images/dhara_sunflower.png",
  },
  {
    "name": "Anik Sunflower Oil 1L",
    "weight": "1L",
    "price": 130,
    "rating": 4.0,
    "ratingCount": 180,
    "imageUrl": "https://example.com/images/anik_sunflower.png",
  },
];

List<Product> oils = List.generate(cookingOils.length, (index) {
  return Product.fromMap(cookingOils[index]);
});
