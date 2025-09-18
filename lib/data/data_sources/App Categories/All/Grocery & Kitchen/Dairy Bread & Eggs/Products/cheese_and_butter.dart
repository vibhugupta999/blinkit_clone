import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> cheeseAndButterProducts = [
  // Cheese Products
  {
    "name": "Amul Cheese Slices 200g",
    "weight": "200g",
    "price": 120,
    "rating": 4.6,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/amul_cheese_slices_200g.png",
  },
  {
    "name": "Britannia Cheese Slices 200g",
    "weight": "200g",
    "price": 125,
    "rating": 4.5,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/britannia_cheese_slices_200g.png",
  },
  {
    "name": "Amul Cheese Block 200g",
    "weight": "200g",
    "price": 150,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/amul_cheese_block_200g.png",
  },
  {
    "name": "Britannia Processed Cheese Spread 100g",
    "weight": "100g",
    "price": 75,
    "rating": 4.4,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/britannia_cheese_spread_100g.png",
  },
  {
    "name": "Go Cheese Slices 200g",
    "weight": "200g",
    "price": 160,
    "rating": 4.6,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/go_cheese_slices_200g.png",
  },

  {
    "name": "Mother Dairy Cheese Cubes 150g",
    "weight": "150g",
    "price": 140,
    "rating": 4.5,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/motherdairy_cheese_cubes_150g.png",
  },
  {
    "name": "Gowardhan Cheese Block 200g",
    "weight": "200g",
    "price": 145,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/gowardhan_cheese_block_200g.png",
  },
  {
    "name": "Amul Cheese Spread 100g",
    "weight": "100g",
    "price": 70,
    "rating": 4.5,
    "ratingCount": 360,
    "imageUrl": "https://example.com/images/amul_cheese_spread_100g.png",
  },
  {
    "name": "Britannia Cheese Spread 200g",
    "weight": "200g",
    "price": 130,
    "rating": 4.4,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/britannia_cheese_spread_200g.png",
  },
  {
    "name": "Go Cheese Block 200g",
    "weight": "200g",
    "price": 155,
    "rating": 4.6,
    "ratingCount": 380,
    "imageUrl": "https://example.com/images/go_cheese_block_200g.png",
  },
];

final List<Product> cheeseAndButter = List.generate(
  cheeseAndButterProducts.length,
  (index) {
    return Product.fromMap(cheeseAndButterProducts[index]);
  },
);
