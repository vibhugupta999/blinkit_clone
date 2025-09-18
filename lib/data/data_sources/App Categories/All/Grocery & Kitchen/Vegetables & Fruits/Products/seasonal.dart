import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> seasonalFruitsAndVegetable = [
  // Summer Fruits
  {
    "name": "Mango (Alphonso)",
    "weight": "1kg",
    "price": 250,
    "rating": 4.9,
    "ratingCount": 820,
    "imageUrl": "https://example.com/images/mango_alphonso.png",
  },
  {
    "name": "Watermelon",
    "weight": "2kg",
    "price": 150,
    "rating": 4.6,
    "ratingCount": 605,
    "imageUrl": "https://example.com/images/watermelon.png",
  },
  {
    "name": "Lichi",
    "weight": "500g",
    "price": 180,
    "rating": 4.7,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/lychee.png",
  },
  {
    "name": "Papaya",
    "weight": "1kg",
    "price": 90,
    "rating": 4.2,
    "ratingCount": 260,
    "imageUrl": "https://example.com/images/papaya.png",
  },
  {
    "name": "Jamun",
    "weight": "250g",
    "price": 80,
    "rating": 4.4,
    "ratingCount": 210,
    "imageUrl": "https://example.com/images/jamun.png",
  },

  // Winter Fruits (updated)
  {
    "name": "Pear",
    "weight": "1kg",
    "price": 120,
    "rating": 4.6,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/pear.png",
  },
  {
    "name": "Strawberry",
    "weight": "250g",
    "price": 180,
    "rating": 4.9,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/strawberry.png",
  },
  {
    "name": "Coconut",
    "weight": "1pc",
    "price": 50,
    "rating": 4.5,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/coconut.png",
  },
  {
    "name": "Custard Apple (Sitaphal)",
    "weight": "500g",
    "price": 160,
    "rating": 4.5,
    "ratingCount": 270,
    "imageUrl": "https://example.com/images/sitaphal.png",
  },

  // Winter Vegetables
  {
    "name": "Green Peas",
    "weight": "500g",
    "price": 70,
    "rating": 4.7,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/greenpeas.png",
  },
  {
    "name": "Carrot (Red)",
    "weight": "1kg",
    "price": 60,
    "rating": 4.5,
    "ratingCount": 325,
    "imageUrl": "https://example.com/images/redcarrot.png",
  },
  {
    "name": "Cauliflower",
    "weight": "1kg",
    "price": 80,
    "rating": 4.6,
    "ratingCount": 285,
    "imageUrl": "https://example.com/images/cauliflower.png",
  },

  // Monsoon
  {
    "name": "Corn on the Cob",
    "weight": "2 pieces",
    "price": 50,
    "rating": 4.4,
    "ratingCount": 210,
    "imageUrl": "https://example.com/images/corn.png",
  },
  {
    "name": "Bottle Gourd",
    "weight": "1kg",
    "price": 40,
    "rating": 4.2,
    "ratingCount": 185,
    "imageUrl": "https://example.com/images/bottlegourd.png",
  },
  {
    "name": "Ridge Gourd",
    "weight": "500g",
    "price": 45,
    "rating": 4.1,
    "ratingCount": 160,
    "imageUrl": "https://example.com/images/ridgegourd.png",
  },
];

final List<Product> seasonalFruitsAndVegetables = List.generate(
  seasonalFruitsAndVegetable.length,
  (index) {
    return Product.fromMap(seasonalFruitsAndVegetable[index]);
  },
);