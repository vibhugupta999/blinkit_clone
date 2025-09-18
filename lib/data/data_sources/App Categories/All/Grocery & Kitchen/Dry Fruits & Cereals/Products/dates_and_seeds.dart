import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> datesSeedsList = [
  {
    "name": "Ajfan Safawi Dates",
    "weight": "1kg",
    "price": 1200,
    "rating": 4.7,
    "ratingCount": 540,
    "imageUrl": "https://ajfan.store/images/safawi-dates-1kg.jpg",
  },
  {
    "name": "Lion Medjool Dates",
    "weight": "1kg",
    "price": 1800,
    "rating": 4.8,
    "ratingCount": 630,
    "imageUrl": "https://liondates.com/images/medjool-dates-1kg.jpg",
  },
  {
    "name": "Happilo Omani Dates",
    "weight": "250g",
    "price": 550,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://www.happilo.com/images/omani-dates-250g.jpg",
  },
  {
    "name": "Solimo Fresh Dates",
    "weight": "500g",
    "price": 700,
    "rating": 4.5,
    "ratingCount": 580,
    "imageUrl": "https://solimo.in/images/fresh-dates-500g.jpg",
  },
  {
    "name": "Jewel Farmer Seedless Zeenat Dates",
    "weight": "400g",
    "price": 350,
    "rating": 4.6,
    "ratingCount": 300,
    "imageUrl":
        "https://www.jewelfarmer.com/images/seedless-zeenat-dates-400g.jpg",
  },
  {
    "name": "Ajfan Mabroom Dates",
    "weight": "500g",
    "price": 850,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://ajfan.store/images/mabroom-dates-500g.jpg",
  },
  {
    "name": "Nutraj Premium Dates",
    "weight": "500g",
    "price": 900,
    "rating": 4.8,
    "ratingCount": 590,
    "imageUrl": "https://www.nutraj.com/assets/images/premium-dates-500g.jpg",
  },
  {
    "name": "Ajfan Basil Seeds",
    "weight": "250g",
    "price": 290,
    "rating": 4.4,
    "ratingCount": 210,
    "imageUrl": "https://ajfan.store/images/basil-seeds-250g.jpg",
  },
  {
    "name": "Jewel Farmer Chia Seeds",
    "weight": "250g",
    "price": 320,
    "rating": 4.6,
    "ratingCount": 370,
    "imageUrl": "https://www.jewelfarmer.com/images/chia-seeds-250g.jpg",
  },
  {
    "name": "Solimo Mixed Seeds",
    "weight": "300g",
    "price": 375,
    "rating": 4.5,
    "ratingCount": 450,
    "imageUrl": "https://solimo.in/images/mixed-seeds-300g.jpg",
  },
];

final List<Product> datesAndSeeds = List.generate(datesSeedsList.length, (
  index,
) {
  return Product.fromMap(datesSeedsList[index]);
});
