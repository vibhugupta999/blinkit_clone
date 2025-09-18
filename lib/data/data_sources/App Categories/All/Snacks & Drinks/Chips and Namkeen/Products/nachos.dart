import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> nachosList = [
  {
    'name': 'Doritos Nacho Cheese',
    'weight': '150g',
    'price': 90,
    'rating': 4.5,
    'ratingCount': 12000,
    'imageUrl': 'https://link.to/doritos_nacho_cheese.jpg',
  },
  {
    'name': 'Doritos Sweet Chilli',
    'weight': '150g',
    'price': 90,
    'rating': 4.3,
    'ratingCount': 9500,
    'imageUrl': 'https://link.to/doritos_sweet_chilli.jpg',
  },
  {
    'name': 'Cornitos Nacho Cheese & Herbs',
    'weight': '150g',
    'price': 88,
    'rating': 4.4,
    'ratingCount': 11000,
    'imageUrl': 'https://link.to/cornitos_cheese_herbs.jpg',
  },
  {
    'name': 'Cornitos Sizzlin Jalapeno',
    'weight': '150g',
    'price': 88,
    'rating': 4.2,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/cornitos_jalapeno.jpg',
  },
  {
    'name': 'Makino Round Nachos Cheese',
    'weight': '60g',
    'price': 20,
    'rating': 4.1,
    'ratingCount': 4000,
    'imageUrl': 'https://link.to/makino_cheese.jpg',
  },
  {
    'name': 'Frito Lay Party Pack Nachos',
    'weight': '200g',
    'price': 150,
    'rating': 4.5,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/fritolay_party_pack.jpg',
  },
  {
    'name': 'Yellow Diamond Nachos Classic',
    'weight': '100g',
    'price': 45,
    'rating': 4.0,
    'ratingCount': 3000,
    'imageUrl': 'https://link.to/yellowdiamond_classic.jpg',
  },
  {
    'name': 'True Elements Organic Nachos',
    'weight': '75g',
    'price': 120,
    'rating': 4.7,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/trueelements_organic.jpg',
  },
  {
    'name': 'Makino High Protein Super Nachos',
    'weight': '60g',
    'price': 25,
    'rating': 4.4,
    'ratingCount': 4200,
    'imageUrl': 'https://link.to/makino_high_protein.jpg',
  },
  {
    'name': 'Snackible Multigrain Nachos',
    'weight': '100g',
    'price': 110,
    'rating': 4.3,
    'ratingCount': 3600,
    'imageUrl': 'https://link.to/snackible_multigrain.jpg',
  },
];

final List<Product> nachos = List.generate(nachosList.length, (index) {
  return Product.fromMap(nachosList[index]);
});
