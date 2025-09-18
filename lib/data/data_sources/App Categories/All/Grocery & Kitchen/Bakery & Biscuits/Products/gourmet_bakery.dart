import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> gourmetBakeryProducts = [
  {
    "name": "Theobroma Chocolate Fudge Brownie 150g",
    "weight": "150g",
    "price": 180,
    "rating": 4.8,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/theobroma_brownie_150g.png",
  },
  {
    "name": "Theobroma Walnut Brownie 150g",
    "weight": "150g",
    "price": 190,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/theobroma_walnut_brownie_150g.png",
  },
  {
    "name": "Lord of the Cakes Chocolate Mousse 200g",
    "weight": "200g",
    "price": 220,
    "rating": 4.8,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/lotc_chocolate_mousse_200g.png",
  },
  {
    "name": "Lord of the Cakes Red Velvet Cake 200g",
    "weight": "200g",
    "price": 240,
    "rating": 4.7,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/lotc_red_velvet_200g.png",
  },
  {
    "name": "Monginis Black Forest Cake 500g",
    "weight": "500g",
    "price": 420,
    "rating": 4.6,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/monginis_blackforest_500g.png",
  },

  {
    "name": "Monginis Pineapple Cake 500g",
    "weight": "500g",
    "price": 400,
    "rating": 4.5,
    "ratingCount": 580,
    "imageUrl": "https://example.com/images/monginis_pineapple_500g.png",
  },
  {
    "name": "Monginis Chocolate Roll 250g",
    "weight": "250g",
    "price": 350,
    "rating": 4.6,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/monginis_choco_roll_250g.png",
  },
  {
    "name": "Monginis Swiss Roll 200g",
    "weight": "200g",
    "price": 300,
    "rating": 4.5,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/monginis_swiss_roll_200g.png",
  },
  {
    "name": "Smoor Chocolate Truffle Cake 500g",
    "weight": "500g",
    "price": 650,
    "rating": 4.9,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/smoor_truffle_cake_500g.png",
  },
  {
    "name": "Smoor Red Velvet Cake 500g",
    "weight": "500g",
    "price": 620,
    "rating": 4.8,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/smoor_red_velvet_500g.png",
  },
];

final List<Product> gourmetBakeryProduct = List.generate(
  gourmetBakeryProducts.length,
  (index) {
    return Product.fromMap(gourmetBakeryProducts[index]);
  },
);
