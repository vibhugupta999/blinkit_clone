import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> cookiesList = [
  // Britannia Cookies
  {
    "name": "Britannia Treat Butter Cookies 100g",
    "weight": "100g",
    "price": 20,
    "rating": 4.4,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/britannia_treat_butter_100g.png",
  },
  {
    "name": "Britannia Treat Butter Cookies 200g",
    "weight": "200g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 550,
    "imageUrl": "https://example.com/images/britannia_treat_butter_200g.png",
  },
  {
    "name": "Britannia Treat Choco Chip 100g",
    "weight": "100g",
    "price": 25,
    "rating": 4.6,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/britannia_treat_chocochip_100g.png",
  },
  {
    "name": "Britannia Good Day Cashew 125g",
    "weight": "125g",
    "price": 60,
    "rating": 4.7,
    "ratingCount": 700,
    "imageUrl": "https://example.com/images/britannia_good_day_cashew_125g.png",
  },
  {
    "name": "Britannia NutriChoice Oats Cookies 250g",
    "weight": "250g",
    "price": 60,
    "rating": 4.6,
    "ratingCount": 610,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_oats_250g.png",
  },

  // Parle Cookies
  {
    "name": "Parle Treat Wafers Chocolate 100g",
    "weight": "100g",
    "price": 22,
    "rating": 4.4,
    "ratingCount": 900,
    "imageUrl": "https://example.com/images/parle_treat_wafers_100g.png",
  },
  {
    "name": "Parle Treat Wafers Strawberry 100g",
    "weight": "100g",
    "price": 23,
    "rating": 4.3,
    "ratingCount": 850,
    "imageUrl":
        "https://example.com/images/parle_treat_wafers_strawberry_100g.png",
  },
  {
    "name": "Parle Kismi Toffee Cookies 150g",
    "weight": "150g",
    "price": 35,
    "rating": 4.5,
    "ratingCount": 720,
    "imageUrl": "https://example.com/images/parle_kismi_cookies_150g.png",
  },

  // ITC Cookies
  {
    "name": "Sunfeast Dark Fantasy Choco Fills 150g",
    "weight": "150g",
    "price": 75,
    "rating": 4.7,
    "ratingCount": 680,
    "imageUrl":
        "https://example.com/images/sunfeast_dark_fantasy_choco_150g.png",
  },
  {
    "name": "Sunfeast Dark Fantasy Choco Fills 300g",
    "weight": "300g",
    "price": 140,
    "rating": 4.8,
    "ratingCount": 400,
    "imageUrl":
        "https://example.com/images/sunfeast_dark_fantasy_choco_300g.png",
  },
];

final List<Product> cookies = List.generate(cookiesList.length, (index) {
  return Product.fromMap(cookiesList[index]);
});
