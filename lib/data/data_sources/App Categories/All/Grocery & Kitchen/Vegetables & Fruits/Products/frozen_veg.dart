import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> frozenFruitsAndVegetable = [
  // Frozen Fruits
  {
    "name": "Frozen Strawberries",
    "weight": "500g",
    "price": 220,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/frozen_strawberries.png",
  },
  {
    "name": "Frozen Blueberries",
    "weight": "500g",
    "price": 280,
    "rating": 4.8,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/frozen_blueberries.png",
  },
  {
    "name": "Frozen Mango Cubes",
    "weight": "1kg",
    "price": 350,
    "rating": 4.6,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/frozen_mango.png",
  },
  {
    "name": "Frozen Pineapple Chunks",
    "weight": "500g",
    "price": 210,
    "rating": 4.5,
    "ratingCount": 250,
    "imageUrl": "https://example.com/images/frozen_pineapple.png",
  },
  {
    "name": "Frozen Mixed Berries",
    "weight": "500g",
    "price": 300,
    "rating": 4.9,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/frozen_mixedberries.png",
  },

  // Frozen Vegetables
  {
    "name": "Frozen Green Peas",
    "weight": "1kg",
    "price": 160,
    "rating": 4.8,
    "ratingCount": 510,
    "imageUrl": "https://example.com/images/frozen_peas.png",
  },
  {
    "name": "Frozen Mixed Vegetables",
    "weight": "1kg",
    "price": 180,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/frozen_mixedveg.png",
  },
  {
    "name": "Frozen Sweet Corn Kernels",
    "weight": "1kg",
    "price": 150,
    "rating": 4.6,
    "ratingCount": 460,
    "imageUrl": "https://example.com/images/frozen_corn.png",
  },
  {
    "name": "Frozen Spinach",
    "weight": "500g",
    "price": 120,
    "rating": 4.4,
    "ratingCount": 220,
    "imageUrl": "https://example.com/images/frozen_spinach.png",
  },
  {
    "name": "Frozen Broccoli Florets",
    "weight": "500g",
    "price": 170,
    "rating": 4.7,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/frozen_broccoli.png",
  },
];

final List<Product> frozenFruitsandVegetables = List.generate(
  frozenFruitsAndVegetable.length,
  (index) {
    return Product.fromMap(frozenFruitsAndVegetable[index]);
  },
);
