import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> cornFlakesandkidscereal = [
  {
    "name": "Kellogg’s Corn Flakes Original",
    "weight": "475g",
    "price": 220,
    "rating": 4.5,
    "ratingCount": 1500,
    "imageUrl":
        "https://www.kelloggs.com/en-in/products/corn-flakes-original.jpg",
  },
  {
    "name": "Kellogg’s Corn Flakes Almond & Honey",
    "weight": "500g",
    "price": 260,
    "rating": 4.4,
    "ratingCount": 860,
    "imageUrl":
        "https://www.kelloggs.com/en-in/products/corn-flakes-almond-honey.jpg",
  },
  {
    "name": "Kellogg’s Multigrain+ Corn Flakes",
    "weight": "475g",
    "price": 149,
    "rating": 4.3,
    "ratingCount": 600,
    "imageUrl":
        "https://www.kelloggs.com/en-in/products/corn-flakes-multigrain.jpg",
  },
  {
    "name": "Bagrry’s Corn Flakes Plus",
    "weight": "500g",
    "price": 190,
    "rating": 4.2,
    "ratingCount": 870,
    "imageUrl": "https://www.bagrrys.com/corn-flakes-plus.jpg",
  },
  {
    "name": "Tata Soulfull Corn Flakes+",
    "weight": "500g",
    "price": 149,
    "rating": 4.5,
    "ratingCount": 540,
    "imageUrl": "https://www.soulfull.co.in/products/corn-flakes-plus.jpg",
  },
  {
    "name": "Morton Corn Flakes",
    "weight": "500g",
    "price": 185,
    "rating": 4.1,
    "ratingCount": 430,
    "imageUrl": "https://mortonindia.com/images/corn-flakes.jpg",
  },
  {
    "name": "Patanjali Corn Flakes",
    "weight": "500g",
    "price": 120,
    "rating": 4.0,
    "ratingCount": 580,
    "imageUrl": "https://www.patanjaliayurved.net/images/corn-flakes.jpg",
  },
  {
    "name": "Barbara's Natural Corn Flakes",
    "weight": "500g",
    "price": 260,
    "rating": 4.6,
    "ratingCount": 220,
    "imageUrl": "https://barbaras.com/products/natural-corn-flakes.jpg",
  },
  {
    "name": "Rose Almond Corn Flakes",
    "weight": "500g",
    "price": 210,
    "rating": 4.3,
    "ratingCount": 300,
    "imageUrl": "https://rosebreakfastfoods.com/images/almond-corn-flakes.jpg",
  },
  {
    "name": "Shanti Foods Corn Flakes Honey Almond",
    "weight": "500g",
    "price": 220,
    "rating": 4.2,
    "ratingCount": 170,
    "imageUrl": "https://shantifoods.com/corn-flakes-honey-almond.jpg",
  },
];

final List<Product> cornFlakesAndKidsCereals = List.generate(
  cornFlakesandkidscereal.length,
  (index) {
    return Product.fromMap(cornFlakesandkidscereal[index]);
  },
);
