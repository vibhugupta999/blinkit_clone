import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> glucoseMarieCookie = [
  // Parle Glucose
  {
    "name": "Parle Glucose Biscuits 150g",
    "weight": "150g",
    "price": 20,
    "rating": 4.5,
    "ratingCount": 1200,
    "imageUrl": "https://example.com/images/parle_glucose_150g.png",
  },
  {
    "name": "Parle Glucose Biscuits 250g",
    "weight": "250g",
    "price": 35,
    "rating": 4.6,
    "ratingCount": 1100,
    "imageUrl": "https://example.com/images/parle_glucose_250g.png",
  },
  {
    "name": "Parle Glucose Marie 200g",
    "weight": "200g",
    "price": 28,
    "rating": 4.4,
    "ratingCount": 1050,
    "imageUrl": "https://example.com/images/parle_glucose_marie_200g.png",
  },
  {
    "name": "Parle Glucose Marie 500g",
    "weight": "500g",
    "price": 65,
    "rating": 4.7,
    "ratingCount": 950,
    "imageUrl": "https://example.com/images/parle_glucose_marie_500g.png",
  },

  // Britannia Marie
  {
    "name": "Britannia Marie Gold 250g",
    "weight": "250g",
    "price": 40,
    "rating": 4.6,
    "ratingCount": 1300,
    "imageUrl": "https://example.com/images/britannia_marie_gold_250g.png",
  },
  {
    "name": "Britannia Marie Gold 500g",
    "weight": "500g",
    "price": 75,
    "rating": 4.7,
    "ratingCount": 1100,
    "imageUrl": "https://example.com/images/britannia_marie_gold_500g.png",
  },
  {
    "name": "Britannia Marie Light 250g",
    "weight": "250g",
    "price": 45,
    "rating": 4.5,
    "ratingCount": 900,
    "imageUrl": "https://example.com/images/britannia_marie_light_250g.png",
  },
  {
    "name": "Britannia Marie Light 500g",
    "weight": "500g",
    "price": 85,
    "rating": 4.6,
    "ratingCount": 850,
    "imageUrl": "https://example.com/images/britannia_marie_light_500g.png",
  },

  // Sunfeast Marie
  {
    "name": "Sunfeast Marie Light 250g",
    "weight": "250g",
    "price": 45,
    "rating": 4.5,
    "ratingCount": 800,
    "imageUrl": "https://example.com/images/sunfeast_marie_light_250g.png",
  },
  {
    "name": "Sunfeast Marie Light 500g",
    "weight": "500g",
    "price": 85,
    "rating": 4.6,
    "ratingCount": 780,
    "imageUrl": "https://example.com/images/sunfeast_marie_light_500g.png",
  },
];

final List<Product> glucoseMarieCookies = List.generate(
  glucoseMarieCookie.length,
  (index) {
    return Product.fromMap(glucoseMarieCookie[index]);
  },
);
