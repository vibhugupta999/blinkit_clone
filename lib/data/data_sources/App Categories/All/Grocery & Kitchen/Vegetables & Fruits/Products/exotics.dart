import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> exotic = [
  {
    "name": "Green Capsicum",
    "weight": "500g",
    "price": 60,
    "rating": 4.3,
    "ratingCount": 28028,
    "imageUrl": "https://example.com/images/greencapsicum.png",
  },
  {
    "name": "Red Capsicum",
    "weight": "500g",
    "price": 75,
    "rating": 4.5,
    "ratingCount": 26044,
    "imageUrl": "https://example.com/images/redcapsicum.png",
  },
  {
    "name": "Yellow Capsicum",
    "weight": "500g",
    "price": 70,
    "rating": 4.4,
    "ratingCount": 25535,
    "imageUrl": "https://example.com/images/yellowcapsicum.png",
  },
  {
    "name": "Baby Spinach",
    "weight": "200g",
    "price": 35,
    "rating": 4.6,
    "ratingCount": 33018,
    "imageUrl": "https://example.com/images/babyspinach.png",
  },
  {
    "name": "Baby Corn",
    "weight": "200g",
    "price": 45,
    "rating": 4.5,
    "ratingCount": 30020,
    "imageUrl": "https://example.com/images/babycorn.png",
  },
  {
    "name": "Cherry Tomato",
    "weight": "250g",
    "price": 60,
    "rating": 4.7,
    "ratingCount": 41527,
    "imageUrl": "https://example.com/images/cherrytomato.png",
  },
  {
    "name": "Cluster Beans",
    "weight": "500g",
    "price": 50,
    "rating": 4.1,
    "ratingCount": 28027,
    "imageUrl": "https://example.com/images/clusterbeans.png",
  },
  {
    "name": "Snow Peas",
    "weight": "200g",
    "price": 80,
    "rating": 4.6,
    "ratingCount": 19018,
    "imageUrl": "https://example.com/images/snowpeas.png",
  },
  {
    "name": "Horse Gram",
    "weight": "1kg",
    "price": 120,
    "rating": 4.2,
    "ratingCount": 21025,
    "imageUrl": "https://example.com/images/horsegram.png",
  },
  {
    "name": "Kidney Beans",
    "weight": "1kg",
    "price": 140,
    "rating": 4.5,
    "ratingCount": 32052,
    "imageUrl": "https://example.com/images/kidneybeans.png",
  },
];

final List<Product> exotics = List.generate(exotic.length, (index) {
  return Product.fromMap(exotic[index]);
});
