import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> leafyVegetable = [
  {
    "name": "Spinach",
    "weight": "500g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 42050,
    "imageUrl": "https://example.com/images/spinach.png",
  },
  {
    "name": "Fenugreek Leaves",
    "weight": "250g",
    "price": 30,
    "rating": 4.3,
    "ratingCount": 30022,
    "imageUrl": "https://example.com/images/fenugreek.png",
  },
  {
    "name": "Mustard Greens",
    "weight": "500g",
    "price": 35,
    "rating": 4.4,
    "ratingCount": 26030,
    "imageUrl": "https://example.com/images/mustardgreens.png",
  },
  {
    "name": "Coriander Leaves",
    "weight": "200g",
    "price": 25,
    "rating": 4.7,
    "ratingCount": 51018,
    "imageUrl": "https://example.com/images/coriander.png",
  },
  {
    "name": "Mint Leaves",
    "weight": "200g",
    "price": 20,
    "rating": 4.6,
    "ratingCount": 49089,
    "imageUrl": "https://example.com/images/mint.png",
  },
  {
    "name": "Curry Leaves",
    "weight": "100g",
    "price": 15,
    "rating": 4.8,
    "ratingCount": 35010,
    "imageUrl": "https://example.com/images/curryleaves.png",
  },
  {
    "name": "Amaranthus",
    "weight": "500g",
    "price": 35,
    "rating": 4.2,
    "ratingCount": 21018,
    "imageUrl": "https://example.com/images/amaranthus.png",
  },
  {
    "name": "Lettuce",
    "weight": "500g",
    "price": 70,
    "rating": 4.4,
    "ratingCount": 33022,
    "imageUrl": "https://example.com/images/lettuce.png",
  },
  {
    "name": "Kale",
    "weight": "500g",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 28040,
    "imageUrl": "https://example.com/images/kale.png",
  },
  {
    "name": "Celery",
    "weight": "500g",
    "price": 80,
    "rating": 4.1,
    "ratingCount": 19013,
    "imageUrl": "https://example.com/images/celery.png",
  },
];

final List<Product> leafyVegetables = List.generate(leafyVegetable.length, (
  index,
) {
  return Product.fromMap(leafyVegetable[index]);
});
