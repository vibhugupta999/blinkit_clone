import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> breadPavProducts = [
  {
    "name": "Britannia Brown Bread 400g",
    "weight": "400g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/britannia_brownbread_400g.png",
  },
  {
    "name": "Harvest Gold Brown Bread 400g",
    "weight": "400g",
    "price": 45,
    "rating": 4.4,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/harvestgold_brownbread_400g.png",
  },
  {
    "name": "English Oven Brown Bread 400g",
    "weight": "400g",
    "price": 48,
    "rating": 4.3,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/englishoven_brownbread_400g.png",
  },
  {
    "name": "Britannia Whole Wheat Bread 400g",
    "weight": "400g",
    "price": 42,
    "rating": 4.6,
    "ratingCount": 470,
    "imageUrl": "https://example.com/images/britannia_wholewheat_400g.png",
  },
  {
    "name": "Harvest Gold White Bread 400g",
    "weight": "400g",
    "price": 38,
    "rating": 4.2,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/harvestgold_whitebread_400g.png",
  },

  {
    "name": "Britannia Pav 12pcs (600g)",
    "weight": "600g",
    "price": 55,
    "rating": 4.7,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/britannia_pav_12pcs.png",
  },
  {
    "name": "Local Pav 12pcs (600g)",
    "weight": "600g",
    "price": 40,
    "rating": 4.1,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/local_pav_12pcs.png",
  },

  {
    "name": "Britannia Multigrain Bread 400g",
    "weight": "400g",
    "price": 50,
    "rating": 4.6,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/britannia_multigrain_400g.png",
  },
  {
    "name": "English Oven Multigrain Bread 400g",
    "weight": "400g",
    "price": 52,
    "rating": 4.5,
    "ratingCount": 330,
    "imageUrl": "https://example.com/images/englishoven_multigrain_400g.png",
  },
  {
    "name": "Harvest Gold Multigrain Bread 400g",
    "weight": "400g",
    "price": 50,
    "rating": 4.4,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/harvestgold_multigrain_400g.png",
  },
];

final List<Product> breadAndPav = List.generate(breadPavProducts.length, (
  index,
) {
  return Product.fromMap(breadPavProducts[index]);
});
