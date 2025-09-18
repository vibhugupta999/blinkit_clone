import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> dryFruitsList = [
  {
    "name": "Nutraj Almonds",
    "weight": "500g",
    "price": 650,
    "rating": 4.8,
    "ratingCount": 1800,
    "imageUrl": "https://www.nutraj.com/assets/images/almonds-500g.jpg",
  },
  {
    "name": "Happilo Cashews",
    "weight": "500g",
    "price": 750,
    "rating": 4.7,
    "ratingCount": 1320,
    "imageUrl": "https://www.happilo.com/images/cashews-500g.jpg",
  },
  {
    "name": "Farmley Walnuts",
    "weight": "250g",
    "price": 500,
    "rating": 4.6,
    "ratingCount": 870,
    "imageUrl": "https://farmley.in/img/walnuts-250g.jpg",
  },
  {
    "name": "Solimo Pistachios",
    "weight": "500g",
    "price": 800,
    "rating": 4.5,
    "ratingCount": 1150,
    "imageUrl": "https://solimo.in/images/pistachios-500g.jpg",
  },
  {
    "name": "Urban Platter Raisins",
    "weight": "500g",
    "price": 360,
    "rating": 4.4,
    "ratingCount": 1070,
    "imageUrl": "https://urbanplatter.in/images/raisins-500g.jpg",
  },
  {
    "name": "Ministry Of Nuts Dry Fruit Mix",
    "weight": "1kg",
    "price": 1550,
    "rating": 4.7,
    "ratingCount": 840,
    "imageUrl": "https://ministryofnuts.in/images/dryfruits-mix-1kg.jpg",
  },
  {
    "name": "Tulsi Almonds",
    "weight": "500g",
    "price": 630,
    "rating": 4.3,
    "ratingCount": 300,
    "imageUrl": "https://tulsi.in/images/almonds-500g.jpg",
  },
  {
    "name": "Nutty Gritties Cashews",
    "weight": "250g",
    "price": 380,
    "rating": 4.2,
    "ratingCount": 220,
    "imageUrl": "https://nuttygritties.com/images/cashews-250g.jpg",
  },
  {
    "name": "Ajfan Dates",
    "weight": "1kg",
    "price": 900,
    "rating": 4.6,
    "ratingCount": 770,
    "imageUrl": "https://ajfan.store/images/dates-1kg.jpg",
  },
  {
    "name": "24 Mantra Organic Walnuts",
    "weight": "250g",
    "price": 540,
    "rating": 4.5,
    "ratingCount": 290,
    "imageUrl": "https://24mantra.com/images/walnuts-250g.jpg",
  },
];

final List<Product> dryFruits = List.generate(dryFruitsList.length, (index) {
  return Product.fromMap(dryFruitsList[index]);
});
