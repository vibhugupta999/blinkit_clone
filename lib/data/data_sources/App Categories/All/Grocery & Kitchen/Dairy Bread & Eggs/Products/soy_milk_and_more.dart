import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> soyMilkAndRelatedProducts = [
  {
    "name": "Alpro Soy Milk Original 1L",
    "weight": "1L",
    "price": 180,
    "rating": 4.7,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/alpro_soymilk_1l.png",
  },
  {
    "name": "Urban Platter Organic Soy Milk 1L",
    "weight": "1L",
    "price": 190,
    "rating": 4.8,
    "ratingCount": 360,
    "imageUrl": "https://example.com/images/urbanplatter_soymilk_1l.png",
  },
  {
    "name": "So Good Soy Milk 1L",
    "weight": "1L",
    "price": 175,
    "rating": 4.6,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/sogood_soymilk_1l.png",
  },
  {
    "name": "Vezlay Soy Milk Unsweetened 1L",
    "weight": "1L",
    "price": 200,
    "rating": 4.5,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/vezlay_soymilk_unsweetened_1l.png",
  },
  {
    "name": "Soy Treat Soy Milk 1L",
    "weight": "1L",
    "price": 185,
    "rating": 4.6,
    "ratingCount": 330,
    "imageUrl": "https://example.com/images/soytreat_soymilk_1l.png",
  },

  {
    "name": "Alpro Soy Milk Chocolate 1L",
    "weight": "1L",
    "price": 190,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/alpro_soymilk_chocolate_1l.png",
  },
  {
    "name": "Urban Platter Soy Milk Vanilla 1L",
    "weight": "1L",
    "price": 195,
    "rating": 4.8,
    "ratingCount": 370,
    "imageUrl":
        "https://example.com/images/urbanplatter_soymilk_vanilla_1l.png",
  },
  {
    "name": "So Good Soy Milk Vanilla 1L",
    "weight": "1L",
    "price": 180,
    "rating": 4.6,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/sogood_soymilk_vanilla_1l.png",
  },
  {
    "name": "Vezlay Soy Milk Chocolate 1L",
    "weight": "1L",
    "price": 205,
    "rating": 4.5,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/vezlay_soymilk_chocolate_1l.png",
  },
  {
    "name": "Soy Treat Soy Milk Vanilla 1L",
    "weight": "1L",
    "price": 190,
    "rating": 4.7,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/soytreat_soymilk_vanilla_1l.png",
  },
];

final List<Product> soyMilkAndMore = List.generate(
  soyMilkAndRelatedProducts.length,
  (index) {
    return Product.fromMap(soyMilkAndRelatedProducts[index]);
  },
);
