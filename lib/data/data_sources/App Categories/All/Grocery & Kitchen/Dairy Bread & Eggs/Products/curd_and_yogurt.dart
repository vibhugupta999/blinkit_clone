import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> curdYogurtProducts = [
  {
    "name": "Amul Masti Curd 500g",
    "weight": "500g",
    "price": 35,
    "rating": 4.6,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/amul_curd_500g.png",
  },
  {
    "name": "Mother Dairy Fresh Curd 500g",
    "weight": "500g",
    "price": 40,
    "rating": 4.7,
    "ratingCount": 520,
    "imageUrl": "https://example.com/images/motherdairy_curd_500g.png",
  },
  {
    "name": "Britannia Fresh Curd 450g",
    "weight": "450g",
    "price": 38,
    "rating": 4.5,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/britannia_curd_450g.png",
  },
  {
    "name": "Gowardhan Fresh Curd 500g",
    "weight": "500g",
    "price": 37,
    "rating": 4.4,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/gowardhan_curd_500g.png",
  },
  {
    "name": "Danone Danjo Banana Curd 90g",
    "weight": "90g",
    "price": 12,
    "rating": 4.3,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/danone_banana_curd_90g.png",
  },

  {
    "name": "Danone Danjo Mango Curd 90g",
    "weight": "90g",
    "price": 12,
    "rating": 4.4,
    "ratingCount": 330,
    "imageUrl": "https://example.com/images/danone_mango_curd_90g.png",
  },
  {
    "name": "Epigamia Greek Yogurt Strawberry 125g",
    "weight": "125g",
    "price": 30,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/epigamia_strawberry_125g.png",
  },
  {
    "name": "Epigamia Greek Yogurt Blueberry 125g",
    "weight": "125g",
    "price": 30,
    "rating": 4.6,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/epigamia_blueberry_125g.png",
  },
  {
    "name": "Epigamia Greek Yogurt Mango 125g",
    "weight": "125g",
    "price": 30,
    "rating": 4.7,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/epigamia_mango_125g.png",
  },
  {
    "name": "Mother Dairy Greek Yogurt 500g",
    "weight": "500g",
    "price": 80,
    "rating": 4.5,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/motherdairy_greek_500g.png",
  },
];

final List<Product> curdAndYogurt = List.generate(curdYogurtProducts.length, (
  index,
) {
  return Product.fromMap(curdYogurtProducts[index]);
});
