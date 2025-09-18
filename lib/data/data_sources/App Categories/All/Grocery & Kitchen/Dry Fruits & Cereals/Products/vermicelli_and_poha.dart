import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> vermicelliPohaList = [
  {
    "name": "MTR Roasted Vermicelli",
    "weight": "400g",
    "price": 67,
    "rating": 4.5,
    "ratingCount": 1340,
    "imageUrl":
        "https://shop.mtrfoods.com/products/mtr-roasted-vermicelli-400g.jpg",
  },
  {
    "name": "Bambino Multimillet Vermicelli",
    "weight": "200g",
    "price": 50,
    "rating": 4.3,
    "ratingCount": 460,
    "imageUrl":
        "https://bigbasket.com/product/bambino-multimillet-vermicelli-200g.jpg",
  },
  {
    "name": "Anil Rice Vermicelli",
    "weight": "500g",
    "price": 90,
    "rating": 4.2,
    "ratingCount": 700,
    "imageUrl": "https://bigbasket.com/product/anil-rice-vermicelli-500g.jpg",
  },
  {
    "name": "MTR Rice Sevai",
    "weight": "400g",
    "price": 65,
    "rating": 4.4,
    "ratingCount": 1240,
    "imageUrl": "https://shop.mtrfoods.com/products/mtr-rice-sevai-400g.jpg",
  },
  {
    "name": "Savorit Long Semia Vermicelli",
    "weight": "500g",
    "price": 50,
    "rating": 4.1,
    "ratingCount": 350,
    "imageUrl":
        "https://bigbasket.com/product/savorit-long-semia-vermicelli-500g.jpg",
  },
  {
    "name": "Haldiram's Vermicelli",
    "weight": "350g",
    "price": 65,
    "rating": 4.3,
    "ratingCount": 880,
    "imageUrl": "https://haldirams.com/products/vermicelli-350g.jpg",
  },
  {
    "name": "Anil Vermicelli",
    "weight": "450g",
    "price": 55,
    "rating": 4.0,
    "ratingCount": 420,
    "imageUrl": "https://bigbasket.com/product/anil-vermicelli-450g.jpg",
  },
  {
    "name": "MTR Seviyan Kheer Mix",
    "weight": "180g",
    "price": 95,
    "rating": 4.6,
    "ratingCount": 670,
    "imageUrl":
        "https://shop.mtrfoods.com/products/mtr-seviyan-kheer-mix-180g.jpg",
  },
  {
    "name": "Bambino Vermicelli",
    "weight": "850g",
    "price": 150,
    "rating": 4.2,
    "ratingCount": 500,
    "imageUrl": "https://bigbasket.com/product/bambino-vermicelli-850g.jpg",
  },
  {
    "name": "Anil Long Cut Vermicelli",
    "weight": "300g",
    "price": 45,
    "rating": 4.3,
    "ratingCount": 350,
    "imageUrl":
        "https://bigbasket.com/product/anil-long-cut-vermicelli-300g.jpg",
  },
];

final List<Product> vermicelliAndPoha = List.generate(
  vermicelliPohaList.length,
  (index) {
    return Product.fromMap(vermicelliPohaList[index]);
  },
);
