import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> attaList = [
  {
    "name": "Aashirvaad Whole Wheat Atta",
    "weight": "5kg",
    "price": 280,
    "rating": 4.7,
    "ratingCount": 2200,
    "imageUrl": "https://aashirvaad.com/images/whole-wheat-atta-5kg.jpg",
  },
  {
    "name": "Patanjali Atta",
    "weight": "5kg",
    "price": 260,
    "rating": 4.5,
    "ratingCount": 1900,
    "imageUrl": "https://patanjaliayurved.net/images/atta-5kg.jpg",
  },
  {
    "name": "Shakti Bhog Wheat Flour",
    "weight": "5kg",
    "price": 270,
    "rating": 4.6,
    "ratingCount": 1750,
    "imageUrl": "https://shaktibhog.com/images/wheat-flour-5kg.jpg",
  },
  {
    "name": "Fortune Chakki Fresh Atta",
    "weight": "5kg",
    "price": 300,
    "rating": 4.7,
    "ratingCount": 2100,
    "imageUrl": "https://fortunefresh.com/images/chakki-fresh-atta-5kg.jpg",
  },
  {
    "name": "Saksham Atta",
    "weight": "10kg",
    "price": 520,
    "rating": 4.4,
    "ratingCount": 980,
    "imageUrl": "https://saksham.com/images/atta-10kg.jpg",
  },
  {
    "name": "Rajdhani Atta",
    "weight": "10kg",
    "price": 540,
    "rating": 4.5,
    "ratingCount": 870,
    "imageUrl": "https://rajdhani.com/images/atta-10kg.jpg",
  },
  {
    "name": "Ajeet Atta",
    "weight": "5kg",
    "price": 285,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl": "https://ajeetatta.com/images/atta-5kg.jpg",
  },
  {
    "name": "Pears Gold Atta",
    "weight": "5kg",
    "price": 280,
    "rating": 4.5,
    "ratingCount": 1030,
    "imageUrl": "https://pearsgold.in/images/atta-5kg.jpg",
  },
  {
    "name": "Annapurna Atta",
    "weight": "5kg",
    "price": 290,
    "rating": 4.7,
    "ratingCount": 890,
    "imageUrl": "https://annapurna.com/images/atta-5kg.jpg",
  },
  {
    "name": "Pillsbury Chakki Fresh Atta",
    "weight": "10kg",
    "price": 550,
    "rating": 4.7,
    "ratingCount": 1100,
    "imageUrl": "https://pillsbury.com/images/chakki-fresh-atta-10kg.jpg",
  },
];
List<Product> atta = List.generate(attaList.length, (index) {
  return Product.fromMap(attaList[index]);
});
