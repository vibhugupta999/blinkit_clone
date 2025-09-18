import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> flowersAndLeave = [
  {
    "name": "Rose Bouquet",
    "weight": "1 bunch",
    "price": 150,
    "rating": 4.8,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/rose.png",
  },
  {
    "name": "Jasmine Flowers",
    "weight": "250g",
    "price": 80,
    "rating": 4.7,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/jasmine.png",
  },
  {
    "name": "Marigold Garland",
    "weight": "500g",
    "price": 120,
    "rating": 4.6,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/marigold.png",
  },
  {
    "name": "Lotus",
    "weight": "1 stem",
    "price": 60,
    "rating": 4.9,
    "ratingCount": 275,
    "imageUrl": "https://example.com/images/lotus.png",
  },
  {
    "name": "Tulip Bunch",
    "weight": "1 bunch",
    "price": 200,
    "rating": 4.8,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/tulip.png",
  },
  {
    "name": "Sunflower",
    "weight": "1 stem",
    "price": 50,
    "rating": 4.5,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/sunflower.png",
  },

  // Leaves
  {
    "name": "Banana Leaf",
    "weight": "5 leaves",
    "price": 60,
    "rating": 4.6,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/bananaleaf.png",
  },
  {
    "name": "Betel Leaves",
    "weight": "20 leaves",
    "price": 40,
    "rating": 4.7,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/betelleaf.png",
  },
  {
    "name": "Tulsi Leaves",
    "weight": "100g",
    "price": 30,
    "rating": 4.9,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/tulsi.png",
  },
  {
    "name": "Neem Leaves",
    "weight": "200g",
    "price": 35,
    "rating": 4.5,
    "ratingCount": 270,
    "imageUrl": "https://example.com/images/neem.png",
  },
  {
    "name": "Mango Leaves",
    "weight": "10 leaves",
    "price": 25,
    "rating": 4.4,
    "ratingCount": 220,
    "imageUrl": "https://example.com/images/mangoleaf.png",
  },
  {
    "name": "Ashoka Leaves",
    "weight": "10 leaves",
    "price": 30,
    "rating": 4.3,
    "ratingCount": 190,
    "imageUrl": "https://example.com/images/ashokaleaves.png",
  },
  {
    "name": "Curry Leaves",
    "weight": "100g",
    "price": 20,
    "rating": 4.8,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/curryleaves.png",
  },
  {
    "name": "Bay Leaves",
    "weight": "50g",
    "price": 25,
    "rating": 4.6,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/bayleaves.png",
  },
];

final List<Product> flowersandLeaves = List.generate(flowersAndLeave.length, (
  index,
) {
  return Product.fromMap(flowersAndLeave[index]);
});
