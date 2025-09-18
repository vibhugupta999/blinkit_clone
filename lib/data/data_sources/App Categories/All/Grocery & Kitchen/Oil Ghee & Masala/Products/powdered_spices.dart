import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> powderedSpice = [
  // Turmeric Powder
  {
    "name": "MDH Turmeric Powder 100g",
    "weight": "100g",
    "price": 50,
    "rating": 4.7,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/mdh_turmeric_100g.png",
  },
  {
    "name": "Everest Turmeric Powder 200g",
    "weight": "200g",
    "price": 95,
    "rating": 4.6,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/everest_turmeric_200g.png",
  },
  {
    "name": "Catch Turmeric Powder 500g",
    "weight": "500g",
    "price": 220,
    "rating": 4.5,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/catch_turmeric_500g.png",
  },
  {
    "name": "Tata Turmeric Powder 100g",
    "weight": "100g",
    "price": 55,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/tata_turmeric_100g.png",
  },

  // Red Chilli Powder
  {
    "name": "MDH Red Chilli Powder 100g",
    "weight": "100g",
    "price": 65,
    "rating": 4.8,
    "ratingCount": 590,
    "imageUrl": "https://example.com/images/mdh_redchilli_100g.png",
  },
  {
    "name": "Everest Red Chilli Powder 200g",
    "weight": "200g",
    "price": 110,
    "rating": 4.7,
    "ratingCount": 470,
    "imageUrl": "https://example.com/images/everest_redchilli_200g.png",
  },
  {
    "name": "Catch Red Chilli Powder 500g",
    "weight": "500g",
    "price": 250,
    "rating": 4.6,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/catch_redchilli_500g.png",
  },
  {
    "name": "Tata Red Chilli Powder 100g",
    "weight": "100g",
    "price": 70,
    "rating": 4.7,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/tata_redchilli_100g.png",
  },

  // Coriander Powder
  {
    "name": "MDH Coriander Powder 100g",
    "weight": "100g",
    "price": 50,
    "rating": 4.6,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/mdh_coriander_100g.png",
  },
  {
    "name": "Everest Coriander Powder 200g",
    "weight": "200g",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 360,
    "imageUrl": "https://example.com/images/everest_coriander_200g.png",
  },
];

final List<Product> powederdSpices = List.generate(powderedSpice.length, (
  index,
) {
  return Product.fromMap(powderedSpice[index]);
});
