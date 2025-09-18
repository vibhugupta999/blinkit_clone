import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> cookiesWithCreams = [
  {
    "name": "Britannia Treat Choco Fills 150g",
    "weight": "150g",
    "price": 70,
    "rating": 4.7,
    "ratingCount": 680,
    "imageUrl":
        "https://example.com/images/britannia_treat_choco_fills_150g.png",
  },
  {
    "name": "Britannia Treat Choco Fills 300g",
    "weight": "300g",
    "price": 140,
    "rating": 4.8,
    "ratingCount": 620,
    "imageUrl":
        "https://example.com/images/britannia_treat_choco_fills_300g.png",
  },

  // Parle Hide & Seek
  {
    "name": "Parle Hide & Seek Cream 150g",
    "weight": "150g",
    "price": 65,
    "rating": 4.7,
    "ratingCount": 720,
    "imageUrl": "https://example.com/images/parle_hide_seek_cream_150g.png",
  },
  {
    "name": "Parle Hide & Seek Cream 300g",
    "weight": "300g",
    "price": 130,
    "rating": 4.8,
    "ratingCount": 690,
    "imageUrl": "https://example.com/images/parle_hide_seek_cream_300g.png",
  },

  // ITC Sunfeast Treat
  {
    "name": "Sunfeast Treat Choco Fills 150g",
    "weight": "150g",
    "price": 72,
    "rating": 4.7,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/sunfeast_treat_choco_150g.png",
  },
  {
    "name": "Sunfeast Treat Choco Fills 300g",
    "weight": "300g",
    "price": 140,
    "rating": 4.8,
    "ratingCount": 580,
    "imageUrl": "https://example.com/images/sunfeast_treat_choco_300g.png",
  },

  // Unibic Cream Cookies
  {
    "name": "Unibic Choco Chip Cookies 200g",
    "weight": "200g",
    "price": 95,
    "rating": 4.6,
    "ratingCount": 600,
    "imageUrl": "https://example.com/images/unibic_chocochips_200g.png",
  },
  {
    "name": "Unibic Butter Coconut Cookies 200g",
    "weight": "200g",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 570,
    "imageUrl": "https://example.com/images/unibic_butter_coconut_200g.png",
  },

  // Priya Gold Cream Cookies
  {
    "name": "Priya Gold Cream Cookies 200g",
    "weight": "200g",
    "price": 70,
    "rating": 4.4,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/priya_gold_cream_200g.png",
  },
  {
    "name": "Priya Gold Cream Butter Cookies 200g",
    "weight": "200g",
    "price": 72,
    "rating": 4.3,
    "ratingCount": 470,
    "imageUrl": "https://example.com/images/priya_gold_cream_butter_200g.png",
  },
];

final List<Product> cookiesWithCream = List.generate(cookiesWithCreams.length, (
  index,
) {
  return Product.fromMap(cookiesWithCreams[index]);
});
