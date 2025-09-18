import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> creamAndWhitenerProducts = [
  // Cream Products
  {
    "name": "Amul Fresh Cream 200g",
    "weight": "200g",
    "price": 60,
    "rating": 4.7,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/amul_fresh_cream_200g.png",
  },
  {
    "name": "Nestle Fresh Cream 200g",
    "weight": "200g",
    "price": 65,
    "rating": 4.6,
    "ratingCount": 460,
    "imageUrl": "https://example.com/images/nestle_fresh_cream_200g.png",
  },
  {
    "name": "Mother Dairy Fresh Cream 200g",
    "weight": "200g",
    "price": 58,
    "rating": 4.5,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/motherdairy_fresh_cream_200g.png",
  },
  {
    "name": "Britannia Fresh Cream 200g",
    "weight": "200g",
    "price": 62,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/britannia_fresh_cream_200g.png",
  },
  {
    "name": "Amul Butter Milk Cream 500g",
    "weight": "500g",
    "price": 140,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/amul_butter_milk_cream_500g.png",
  },

  {
    "name": "Hatsun Fresh Cream 200g",
    "weight": "200g",
    "price": 61,
    "rating": 4.5,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/hatsun_fresh_cream_200g.png",
  },
  {
    "name": "Patanjali Dahi Cream 200g",
    "weight": "200g",
    "price": 55,
    "rating": 4.4,
    "ratingCount": 320,
    "imageUrl": "https://example.com/images/patanjali_dahi_cream_200g.png",
  },
  {
    "name": "Aashirvaad Fresh Cream 200g",
    "weight": "200g",
    "price": 59,
    "rating": 4.6,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/aashirvaad_cream_200g.png",
  },
  {
    "name": "Go Cheese Fresh Cream 200g",
    "weight": "200g",
    "price": 62,
    "rating": 4.5,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/go_cheese_fresh_cream_200g.png",
  },
  {
    "name": "Britannia Butter Milk Cream 500g",
    "weight": "500g",
    "price": 145,
    "rating": 4.6,
    "ratingCount": 280,
    "imageUrl":
        "https://example.com/images/britannia_butter_milk_cream_500g.png",
  },
];

final List<Product> creamAndWhitener = List.generate(
  creamAndWhitenerProducts.length,
  (index) {
    return Product.fromMap(creamAndWhitenerProducts[index]);
  },
);
