import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> vegetables = [
  {
    "name": "Tomato",
    "weight": "1kg",
    "price": 50,
    "rating": 4.2,
    "ratingCount": 63123,
    "imageUrl": "https://example.com/images/tomato.png",
  },
  {
    "name": "Potato",
    "weight": "2kg",
    "price": 80,
    "rating": 4.4,
    "ratingCount": 79832,
    "imageUrl": "https://example.com/images/potato.png",
  },
  {
    "name": "Onion",
    "weight": "1kg",
    "price": 70,
    "rating": 4.1,
    "ratingCount": 64581,
    "imageUrl": "https://example.com/images/onion.png",
  },
  {
    "name": "Carrot",
    "weight": "500g",
    "price": 60,
    "rating": 4.6,
    "ratingCount": 54382,
    "imageUrl": "https://example.com/images/carrot.png",
  },
  {
    "name": "Cucumber",
    "weight": "500g",
    "price": 55,
    "rating": 4.0,
    "ratingCount": 30948,
    "imageUrl": "https://example.com/images/cucumber.png",
  },
  {
    "name": "Cabbage",
    "weight": "1kg",
    "price": 70,
    "rating": 4.3,
    "ratingCount": 34820,
    "imageUrl": "https://example.com/images/cabbage.png",
  },
  {
    "name": "Cauliflower",
    "weight": "1kg",
    "price": 80,
    "rating": 4.5,
    "ratingCount": 29481,
    "imageUrl": "https://example.com/images/cauliflower.png",
  },
  {
    "name": "Broccoli",
    "weight": "500g",
    "price": 120,
    "rating": 4.7,
    "ratingCount": 27410,
    "imageUrl": "https://example.com/images/broccoli.png",
  },
  {
    "name": "Pumpkin",
    "weight": "3kg",
    "price": 150,
    "rating": 3.9,
    "ratingCount": 19492,
    "imageUrl": "https://example.com/images/pumpkin.png",
  },
  {
    "name": "Zucchini",
    "weight": "500g",
    "price": 110,
    "rating": 4.2,
    "ratingCount": 24109,
    "imageUrl": "https://example.com/images/zucchini.png",
  },
  {
    "name": "Brinjal",
    "weight": "1kg",
    "price": 90,
    "rating": 4.0,
    "ratingCount": 31022,
    "imageUrl": "https://example.com/images/brinjal.png",
  },
];

final List<Product> freshVegetables = List.generate(vegetables.length, (index) {
  return Product.fromMap(vegetables[index]);
});
