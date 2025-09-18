import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> paneerAndTofuProducts = [
  // Paneer Products
  {
    "name": "Amul Fresh Paneer 200g",
    "weight": "200g",
    "price": 110,
    "rating": 4.6,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/amul_paneer_200g.png",
  },
  {
    "name": "Gowardhan Fresh Paneer 200g",
    "weight": "200g",
    "price": 115,
    "rating": 4.5,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/gowardhan_paneer_200g.png",
  },
  {
    "name": "Mother Dairy Fresh Paneer 200g",
    "weight": "200g",
    "price": 120,
    "rating": 4.7,
    "ratingCount": 530,
    "imageUrl": "https://example.com/images/motherdairy_paneer_200g.png",
  },
  {
    "name": "Britannia Fresh Paneer 200g",
    "weight": "200g",
    "price": 105,
    "rating": 4.4,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/britannia_paneer_200g.png",
  },
  {
    "name": "Ashoka Fresh Paneer 200g",
    "weight": "200g",
    "price": 108,
    "rating": 4.5,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/ashoka_paneer_200g.png",
  },

  {
    "name": "Amul Fresh Paneer 500g",
    "weight": "500g",
    "price": 260,
    "rating": 4.7,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/amul_paneer_500g.png",
  },
  {
    "name": "Gowardhan Fresh Paneer 500g",
    "weight": "500g",
    "price": 265,
    "rating": 4.6,
    "ratingCount": 510,
    "imageUrl": "https://example.com/images/gowardhan_paneer_500g.png",
  },
  {
    "name": "Mother Dairy Fresh Paneer 500g",
    "weight": "500g",
    "price": 270,
    "rating": 4.8,
    "ratingCount": 570,
    "imageUrl": "https://example.com/images/motherdairy_paneer_500g.png",
  },

  // Tofu Products
  {
    "name": "Soy Treat Organic Tofu 200g",
    "weight": "200g",
    "price": 180,
    "rating": 4.7,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/soytreat_tofu_200g.png",
  },
  {
    "name": "Urban Platter Tofu 200g",
    "weight": "200g",
    "price": 220,
    "rating": 4.8,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/urbanplatter_tofu_200g.png",
  },
  {
    "name": "Gourmet Tofu 250g",
    "weight": "250g",
    "price": 240,
    "rating": 4.6,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/gourmet_tofu_250g.png",
  },
  {
    "name": "Fresh & Pure Tofu 250g",
    "weight": "250g",
    "price": 230,
    "rating": 4.5,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/freshpure_tofu_250g.png",
  },
];

final List<Product> paneerAndTofu = List.generate(
  paneerAndTofuProducts.length,
  (index) {
    return Product.fromMap(paneerAndTofuProducts[index]);
  },
);
