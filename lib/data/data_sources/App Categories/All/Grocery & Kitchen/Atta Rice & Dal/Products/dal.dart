import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> dalList = [
  {
    "name": "Patanjali Toor Dal",
    "weight": "1kg",
    "price": 110,
    "rating": 4.5,
    "ratingCount": 1200,
    "imageUrl": "https://patanjaliayurved.net/images/toor-dal-1kg.jpg",
  },
  {
    "name": "Aashirvaad Toor Dal",
    "weight": "1kg",
    "price": 115,
    "rating": 4.6,
    "ratingCount": 1100,
    "imageUrl": "https://aashirvaad.com/images/toor-dal-1kg.jpg",
  },
  {
    "name": "Tata Sampann Toor Dal",
    "weight": "1kg",
    "price": 120,
    "rating": 4.7,
    "ratingCount": 950,
    "imageUrl": "https://tatasspann.com/images/toor-dal-1kg.jpg",
  },
  {
    "name": "Fortune Toor Dal",
    "weight": "1kg",
    "price": 125,
    "rating": 4.6,
    "ratingCount": 1030,
    "imageUrl": "https://fortunefresh.com/images/toor-dal-1kg.jpg",
  },
  {
    "name": "Organic India Urad Dal",
    "weight": "1kg",
    "price": 140,
    "rating": 4.7,
    "ratingCount": 690,
    "imageUrl": "https://organicindia.com/images/urad-dal-1kg.jpg",
  },
  {
    "name": "24 Mantra Organic Masoor Dal",
    "weight": "1kg",
    "price": 130,
    "rating": 4.6,
    "ratingCount": 720,
    "imageUrl": "https://24mantra.com/images/masoor-dal-1kg.jpg",
  },
  {
    "name": "Patanjali Moong Dal",
    "weight": "1kg",
    "price": 115,
    "rating": 4.5,
    "ratingCount": 850,
    "imageUrl": "https://patanjaliayurved.net/images/moong-dal-1kg.jpg",
  },
  {
    "name": "Ashirvaad Masoor Dal",
    "weight": "1kg",
    "price": 110,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl": "https://aashirvaad.com/images/masoor-dal-1kg.jpg",
  },
  {
    "name": "Tata Sampann Moong Dal",
    "weight": "1kg",
    "price": 120,
    "rating": 4.7,
    "ratingCount": 840,
    "imageUrl": "https://tatasspann.com/images/moong-dal-1kg.jpg",
  },
  {
    "name": "Fortune Moong Dal Chilka",
    "weight": "1kg",
    "price": 130,
    "rating": 4.5,
    "ratingCount": 770,
    "imageUrl": "https://fortunefresh.com/images/moong-dal-chilka-1kg.jpg",
  },

];

final List<Product> dal = List.generate(dalList.length, (index) {
  return Product.fromMap(dalList[index]);
});
