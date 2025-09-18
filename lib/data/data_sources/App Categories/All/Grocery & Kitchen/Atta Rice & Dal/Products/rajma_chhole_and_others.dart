import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> rajmaChholeOthersList = [
  {
    "name": "Patanjali Rajma",
    "weight": "1kg",
    "price": 140,
    "rating": 4.6,
    "ratingCount": 1100,
    "imageUrl": "https://patanjaliayurved.net/images/rajma-1kg.jpg",
  },
  {
    "name": "Tata Sampann Rajma",
    "weight": "1kg",
    "price": 150,
    "rating": 4.7,
    "ratingCount": 980,
    "imageUrl": "https://tatasspann.com/images/rajma-1kg.jpg",
  },
  {
    "name": "Fortune Rajma",
    "weight": "1kg",
    "price": 145,
    "rating": 4.5,
    "ratingCount": 1150,
    "imageUrl": "https://fortunefresh.com/images/rajma-1kg.jpg",
  },
  {
    "name": "Aashirvaad Chhole",
    "weight": "1kg",
    "price": 125,
    "rating": 4.6,
    "ratingCount": 1050,
    "imageUrl": "https://aashirvaad.com/images/chhole-1kg.jpg",
  },
  {
    "name": "Patanjali Chana Dal (Chhole)",
    "weight": "1kg",
    "price": 130,
    "rating": 4.5,
    "ratingCount": 900,
    "imageUrl": "https://patanjaliayurved.net/images/chana-dal-1kg.jpg",
  },
  {
    "name": "Tata Sampann Chhole",
    "weight": "1kg",
    "price": 140,
    "rating": 4.7,
    "ratingCount": 850,
    "imageUrl": "https://tatasspann.com/images/chhole-1kg.jpg",
  },
  {
    "name": "Fortune Chana Dal",
    "weight": "1kg",
    "price": 135,
    "rating": 4.5,
    "ratingCount": 920,
    "imageUrl": "https://fortunefresh.com/images/chana-dal-1kg.jpg",
  },
  {
    "name": "Shakti Bhog Rajma",
    "weight": "1kg",
    "price": 150,
    "rating": 4.6,
    "ratingCount": 880,
    "imageUrl": "https://shaktibhog.com/images/rajma-1kg.jpg",
  },
  {
    "name": "24 Mantra Organic Rajma",
    "weight": "1kg",
    "price": 220,
    "rating": 4.8,
    "ratingCount": 650,
    "imageUrl": "https://24mantra.com/images/organic-rajma-1kg.jpg",
  },
  {
    "name": "Aashirvaad Toor Dal",
    "weight": "1kg",
    "price": 115,
    "rating": 4.7,
    "ratingCount": 1100,
    "imageUrl": "https://aashirvaad.com/images/toor-dal-1kg.jpg",
  },
];

final List<Product> rajmaChholeAndOthers = List.generate(
  rajmaChholeOthersList.length,
  (index) {
    return Product.fromMap(rajmaChholeOthersList[index]);
  },
);
