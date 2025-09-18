import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> riceList = [
  {
    "name": "Daawat Basmati Rice",
    "weight": "5kg",
    "price": 490,
    "rating": 4.7,
    "ratingCount": 1800,
    "imageUrl": "https://daawat.com/images/basmati-rice-5kg.jpg",
  },
  {
    "name": "India Gate Basmati Rice",
    "weight": "5kg",
    "price": 510,
    "rating": 4.6,
    "ratingCount": 1900,
    "imageUrl": "https://indiagate.com/images/basmati-rice-5kg.jpg",
  },
  {
    "name": "Tilda Pure Basmati Rice",
    "weight": "5kg",
    "price": 590,
    "rating": 4.8,
    "ratingCount": 1400,
    "imageUrl": "https://tilda.com/images/pure-basmati-5kg.jpg",
  },
  {
    "name": "Kohinoor Royal Basmati Rice",
    "weight": "5kg",
    "price": 480,
    "rating": 4.6,
    "ratingCount": 1700,
    "imageUrl": "https://kohinoor.com/images/royal-basmati-5kg.jpg",
  },
  {
    "name": "Lal Qilla Basmati Rice",
    "weight": "5kg",
    "price": 520,
    "rating": 4.7,
    "ratingCount": 1100,
    "imageUrl": "https://lalqilla.com/images/basmati-rice-5kg.jpg",
  },
  {
    "name": "Fortune Jeera Samba Rice",
    "weight": "5kg",
    "price": 390,
    "rating": 4.5,
    "ratingCount": 1350,
    "imageUrl": "https://fortunefresh.com/images/jeera-samba-rice-5kg.jpg",
  },
  {
    "name": "Ponni Boiled Rice",
    "weight": "5kg",
    "price": 350,
    "rating": 4.4,
    "ratingCount": 820,
    "imageUrl": "https://ponni.com/images/boiled-rice-5kg.jpg",
  },
  {
    "name": "Dawat Golden Sella Rice",
    "weight": "5kg",
    "price": 470,
    "rating": 4.6,
    "ratingCount": 900,
    "imageUrl": "https://daawat.com/images/golden-sella-rice-5kg.jpg",
  },
  {
    "name": "India Gate Classic Basmati Rice",
    "weight": "10kg",
    "price": 950,
    "rating": 4.7,
    "ratingCount": 750,
    "imageUrl": "https://indiagate.com/images/classic-basmati-10kg.jpg",
  },
  {
    "name": "Kohinoor Classic Basmati Rice",
    "weight": "10kg",
    "price": 965,
    "rating": 4.6,
    "ratingCount": 730,
    "imageUrl": "https://kohinoor.com/images/classic-basmati-10kg.jpg",
  },
];

final List<Product> rice = List.generate(riceList.length, (index) {
  return Product.fromMap(riceList[index]);
});
