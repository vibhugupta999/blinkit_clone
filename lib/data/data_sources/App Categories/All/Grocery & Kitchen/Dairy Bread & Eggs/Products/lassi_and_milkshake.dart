import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> lassiAndMilkshakeProducts = [
  // Lassi Products
  {
    "name": "Amul Sweet Lassi 1L",
    "weight": "1L",
    "price": 60,
    "rating": 4.7,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/amul_sweet_lassi_1l.png",
  },
  {
    "name": "Mother Dairy Sweet Lassi 1L",
    "weight": "1L",
    "price": 65,
    "rating": 4.6,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/motherdairy_sweet_lassi_1l.png",
  },
  {
    "name": "Hatsun Lassi 1L",
    "weight": "1L",
    "price": 63,
    "rating": 4.5,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/hatsun_lassi_1l.png",
  },
  {
    "name": "Britannia Lassi 1L",
    "weight": "1L",
    "price": 62,
    "rating": 4.4,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/britannia_lassi_1l.png",
  },
  {
    "name": "Gowardhan Traditional Lassi 1L",
    "weight": "1L",
    "price": 65,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/gowardhan_lassi_1l.png",
  },

  {
    "name": "Epigamia Greek Lassi Strawberry 250ml",
    "weight": "250ml",
    "price": 40,
    "rating": 4.7,
    "ratingCount": 320,
    "imageUrl":
        "https://example.com/images/epigamia_strawberry_lassi_250ml.png",
  },
  {
    "name": "Epigamia Greek Lassi Mango 250ml",
    "weight": "250ml",
    "price": 40,
    "rating": 4.6,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/epigamia_mango_lassi_250ml.png",
  },
  {
    "name": "Hatsun Masala Lassi 500ml",
    "weight": "500ml",
    "price": 36,
    "rating": 4.4,
    "ratingCount": 270,
    "imageUrl": "https://example.com/images/hatsun_masala_lassi_500ml.png",
  },

  // Milkshake Products
  {
    "name": "Amul Chocolate Milkshake 200ml",
    "weight": "200ml",
    "price": 25,
    "rating": 4.6,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/amul_chocolate_milkshake_200ml.png",
  },
  {
    "name": "Britannia Chocolate Milkshake 200ml",
    "weight": "200ml",
    "price": 27,
    "rating": 4.5,
    "ratingCount": 390,
    "imageUrl":
        "https://example.com/images/britannia_chocolate_milkshake_200ml.png",
  },
];

final List<Product> lassiAndMilkshakes = List.generate(
  lassiAndMilkshakeProducts.length,
  (index) {
    return Product.fromMap(lassiAndMilkshakeProducts[index]);
  },
);
