import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> saltSugarJaggery = [
  // Salt
  {
    "name": "Tata Iodized Salt 1kg",
    "weight": "1kg",
    "price": 22,
    "rating": 4.5,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/tata_salt_1kg.png",
  },
  {
    "name": "Aashirvaad Salt 1kg",
    "weight": "1kg",
    "price": 25,
    "rating": 4.4,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/aashirvaad_salt_1kg.png",
  },
  {
    "name": "Fortune Iodized Salt 1kg",
    "weight": "1kg",
    "price": 23,
    "rating": 4.3,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/fortune_salt_1kg.png",
  },
  // Sugar
  {
    "name": "Tata Sugar 1kg",
    "weight": "1kg",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/tata_sugar_1kg.png",
  },
  {
    "name": "India Gate Sugar 1kg",
    "weight": "1kg",
    "price": 42,
    "rating": 4.6,
    "ratingCount": 435,
    "imageUrl": "https://example.com/images/indiagate_sugar_1kg.png",
  },
  {
    "name": "Dhampur Sugar 1kg",
    "weight": "1kg",
    "price": 38,
    "rating": 4.3,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/dhampur_sugar_1kg.png",
  },
  {
    "name": "Tata Sugar 5kg",
    "weight": "5kg",
    "price": 190,
    "rating": 4.7,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/tata_sugar_5kg.png",
  },

  // Jaggery
  {
    "name": "Dabur Jaggery Powder 1kg",
    "weight": "1kg",
    "price": 70,
    "rating": 4.7,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/dabur_jaggery_1kg.png",
  },
  {
    "name": "24 Mantra Organic Jaggery 1kg",
    "weight": "1kg",
    "price": 90,
    "rating": 4.8,
    "ratingCount": 540,
    "imageUrl": "https://example.com/images/24mantra_jaggery_1kg.png",
  },
  {
    "name": "Patanjali Jaggery Powder 500g",
    "weight": "500g",
    "price": 45,
    "rating": 4.6,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/patanjali_jaggery_500g.png",
  },
  {
    "name": "Organic India Jaggery Powder 1kg",
    "weight": "1kg",
    "price": 85,
    "rating": 4.7,
    "ratingCount": 450,
    "imageUrl": "https://example.com/images/organicindia_jaggery_1kg.png",
  },
];

List<Product> saltSugarAndJaggery = List.generate(saltSugarJaggery.length, (
  index,
) {
  return Product.fromMap(saltSugarJaggery[index]);
});
