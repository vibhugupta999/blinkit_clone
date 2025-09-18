import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> healthyDigestiveCookie = [
  {
    "name": "Britannia NutriChoice Digestive 250g",
    "weight": "250g",
    "price": 55,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_digestive_250g.png",
  },
  {
    "name": "Britannia NutriChoice Oats Cookies 250g",
    "weight": "250g",
    "price": 60,
    "rating": 4.7,
    "ratingCount": 850,
    "imageUrl":
        "https://example.com/images/britannia_nutrichoice_oats_250g.png",
  },
  {
    "name": "Britannia Good Day Oats 125g",
    "weight": "125g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 700,
    "imageUrl": "https://example.com/images/britannia_good_day_oats_125g.png",
  },
  {
    "name": "Parle Digestive Lite 250g",
    "weight": "250g",
    "price": 45,
    "rating": 4.4,
    "ratingCount": 720,
    "imageUrl": "https://example.com/images/parle_digestive_lite_250g.png",
  },
  {
    "name": "Unibic Digestive Cookies 200g",
    "weight": "200g",
    "price": 85,
    "rating": 4.6,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/unibic_digestive_200g.png",
  },

  {
    "name": "Unibic Oats Cookies 200g",
    "weight": "200g",
    "price": 90,
    "rating": 4.7,
    "ratingCount": 580,
    "imageUrl": "https://example.com/images/unibic_oats_200g.png",
  },
  {
    "name": "Anmol Nutrichoice Oats Cookies 200g",
    "weight": "200g",
    "price": 65,
    "rating": 4.5,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/anmol_nutrichoice_oats_200g.png",
  },
  {
    "name": "Anmol Multigrain Cookies 200g",
    "weight": "200g",
    "price": 60,
    "rating": 4.4,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/anmol_multigrain_200g.png",
  },
  {
    "name": "Organic India Oats Cookies 200g",
    "weight": "200g",
    "price": 120,
    "rating": 4.8,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/organicindia_oats_200g.png",
  },
  {
    "name": "Dukes Sugar Free Cookies 150g",
    "weight": "150g",
    "price": 55,
    "rating": 4.3,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/dukes_sugarfree_150g.png",
  },
];

final List<Product> healthyDigestiveCookies = List.generate(
  healthyDigestiveCookie.length,
  (index) {
    return Product.fromMap(healthyDigestiveCookie[index]);
  },
);
