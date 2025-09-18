import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> chocolatesList = [
  {
    'name': 'Cadbury Dairy Milk',
    'weight': '120g',
    'price': 150,
    'rating': 4.6,
    'ratingCount': 25000,
    'imageUrl': 'https://link.to/cadbury_dairymilk.jpg',
  },
  {
    'name': 'Amul Dark Chocolate',
    'weight': '100g',
    'price': 130,
    'rating': 4.5,
    'ratingCount': 14000,
    'imageUrl': 'https://link.to/amul_dark.jpg',
  },
  {
    'name': 'Nestle KitKat',
    'weight': '45g',
    'price': 50,
    'rating': 4.4,
    'ratingCount': 18000,
    'imageUrl': 'https://link.to/nestle_kitkat.jpg',
  },
  {
    'name': 'Ferrero Rocher',
    'weight': '200g',
    'price': 700,
    'rating': 4.8,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/ferrero_rocher.jpg',
  },
  {
    'name': 'Lindt Excellence Dark Chocolate',
    'weight': '100g',
    'price': 250,
    'rating': 4.7,
    'ratingCount': 4500,
    'imageUrl': 'https://link.to/lindt_excellence.jpg',
  },
  {
    'name': 'Toblerone Swiss Milk Chocolate',
    'weight': '150g',
    'price': 400,
    'rating': 4.6,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/toblerone_milk.jpg',
  },
  {
    'name': 'Perk Chocolate',
    'weight': '36g',
    'price': 20,
    'rating': 4.3,
    'ratingCount': 22000,
    'imageUrl': 'https://link.to/perk_chocolate.jpg',
  },
  {
    'name': 'Hershey’s Kisses',
    'weight': '150g',
    'price': 350,
    'rating': 4.4,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/hersheys_kisses.jpg',
  },
  {
    'name': 'Milkybar',
    'weight': '28g',
    'price': 25,
    'rating': 4.2,
    'ratingCount': 15000,
    'imageUrl': 'https://link.to/milkybar.jpg',
  },
  {
    'name': 'Cadbury Bournville',
    'weight': '100g',
    'price': 130,
    'rating': 4.5,
    'ratingCount': 13000,
    'imageUrl': 'https://link.to/cadbury_bournville.jpg',
  },
];
final List<Product> chocolate = List.generate(chocolatesList.length, (index) {
  return Product.fromMap(chocolatesList[index]);
});
