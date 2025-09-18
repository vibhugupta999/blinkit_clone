import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> besanSoojiMaidaList = [
  {
    "name": "Aashirvaad Besan",
    "weight": "1kg",
    "price": 145,
    "rating": 4.7,
    "ratingCount": 1700,
    "imageUrl": "https://aashirvaad.com/images/besan-1kg.jpg",
  },
  {
    "name": "Patanjali Besan",
    "weight": "1kg",
    "price": 130,
    "rating": 4.5,
    "ratingCount": 1500,
    "imageUrl": "https://patanjaliayurved.net/images/besan-1kg.jpg",
  },
  {
    "name": "Shakti Bhog Besan",
    "weight": "1kg",
    "price": 140,
    "rating": 4.6,
    "ratingCount": 1200,
    "imageUrl": "https://shaktibhog.com/images/besan-1kg.jpg",
  },
  {
    "name": "Fortune Besan",
    "weight": "1kg",
    "price": 135,
    "rating": 4.6,
    "ratingCount": 1100,
    "imageUrl": "https://fortunefresh.com/images/besan-1kg.jpg",
  },
  {
    "name": "MTR Sooji (Semolina)",
    "weight": "1kg",
    "price": 90,
    "rating": 4.4,
    "ratingCount": 1600,
    "imageUrl": "https://mtrfoods.com/images/sooji-1kg.jpg",
  },
  {
    "name": "Patanjali Sooji",
    "weight": "1kg",
    "price": 85,
    "rating": 4.3,
    "ratingCount": 1400,
    "imageUrl": "https://patanjaliayurved.net/images/sooji-1kg.jpg",
  },
  {
    "name": "Shakti Bhog Sooji",
    "weight": "1kg",
    "price": 88,
    "rating": 4.5,
    "ratingCount": 1300,
    "imageUrl": "https://shaktibhog.com/images/sooji-1kg.jpg",
  },
  {
    "name": "Fortune Sooji",
    "weight": "1kg",
    "price": 92,
    "rating": 4.5,
    "ratingCount": 1250,
    "imageUrl": "https://fortunefresh.com/images/sooji-1kg.jpg",
  },
  {
    "name": "Aashirvaad Maida",
    "weight": "1kg",
    "price": 80,
    "rating": 4.6,
    "ratingCount": 1800,
    "imageUrl": "https://aashirvaad.com/images/maida-1kg.jpg",
  },
  {
    "name": "Patanjali Maida",
    "weight": "1kg",
    "price": 75,
    "rating": 4.4,
    "ratingCount": 1700,
    "imageUrl": "https://patanjaliayurved.net/images/maida-1kg.jpg",
  },
];

final List<Product> besanSoojiAndMaida = List.generate(
  besanSoojiMaidaList.length,
  (index) {
    return Product.fromMap(besanSoojiMaidaList[index]);
  },
);