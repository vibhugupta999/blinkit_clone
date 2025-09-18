import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> eggProducts = [
  {
    "name": "Captain Cook Fresh Eggs 12pcs",
    "weight": "12 pcs",
    "price": 85,
    "rating": 4.6,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/captaincook_eggs_12.png",
  },
  {
    "name": "Nutrimax Eggs 12pcs",
    "weight": "12 pcs",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/nutrimax_eggs_12.png",
  },
  {
    "name": "Licious Farm Fresh Eggs 12pcs",
    "weight": "12 pcs",
    "price": 110,
    "rating": 4.8,
    "ratingCount": 540,
    "imageUrl": "https://example.com/images/licious_eggs_12.png",
  },
  {
    "name": "Godrej Real Good Eggs 12pcs",
    "weight": "12 pcs",
    "price": 95,
    "rating": 4.4,
    "ratingCount": 460,
    "imageUrl": "https://example.com/images/godrej_eggs_12.png",
  },
  {
    "name": "Blue Bird Fresh Eggs 12pcs",
    "weight": "12 pcs",
    "price": 88,
    "rating": 4.3,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/bluebird_eggs_12.png",
  },

  {
    "name": "Happy Eggs 6pcs",
    "weight": "6 pcs",
    "price": 45,
    "rating": 4.2,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/happy_eggs_6.png",
  },
  {
    "name": "Fresh & Pure Eggs 6pcs",
    "weight": "6 pcs",
    "price": 48,
    "rating": 4.1,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/freshpure_eggs_6.png",
  },
  {
    "name": "Farm Fresh Eggs 30pcs",
    "weight": "30 pcs",
    "price": 210,
    "rating": 4.7,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/farmfresh_eggs_30.png",
  },
  {
    "name": "Country Eggs 12pcs",
    "weight": "12 pcs",
    "price": 105,
    "rating": 4.6,
    "ratingCount": 330,
    "imageUrl": "https://example.com/images/country_eggs_12.png",
  },
  {
    "name": "Kolkata Fresh Eggs 12pcs",
    "weight": "12 pcs",
    "price": 90,
    "rating": 4.4,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/kolkata_eggs_12.png",
  },
];

final List<Product> eggs = List.generate(eggProducts.length, (index) {
  return Product.fromMap(eggProducts[index]);
});
