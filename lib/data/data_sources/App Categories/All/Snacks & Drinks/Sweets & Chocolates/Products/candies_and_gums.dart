import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> candiesGumsList = [
  {
    'name': 'Amul Fruit Candy',
    'weight': '150g',
    'price': 60,
    'rating': 4.3,
    'ratingCount': 7200,
    'imageUrl': 'https://link.to/amul_fruit_candy.jpg',
  },
  {
    'name': 'Happydent White Chewing Gum',
    'weight': '15g',
    'price': 10,
    'rating': 4.4,
    'ratingCount': 18000,
    'imageUrl': 'https://link.to/happydent_white.jpg',
  },
  {
    'name': 'Center Fresh Turbo',
    'weight': '14g',
    'price': 10,
    'rating': 4.5,
    'ratingCount': 22000,
    'imageUrl': 'https://link.to/centerfresh_turbo.jpg',
  },
  {
    'name': 'Chupa Chups Lollipops',
    'weight': '100g',
    'price': 150,
    'rating': 4.6,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/chupachups_lollipops.jpg',
  },
  {
    'name': 'Perfetti Van Melle Alpenliebe',
    'weight': '150g',
    'price': 70,
    'rating': 4.2,
    'ratingCount': 10500,
    'imageUrl': 'https://link.to/alpenliebe.jpg',
  },
  {
    'name': 'Trident Chewing Gum',
    'weight': '12g',
    'price': 15,
    'rating': 4.4,
    'ratingCount': 13000,
    'imageUrl': 'https://link.to/trident_gum.jpg',
  },
  {
    'name': 'Mentos Mint Candy',
    'weight': '45g',
    'price': 40,
    'rating': 4.5,
    'ratingCount': 16000,
    'imageUrl': 'https://link.to/mentos_mint.jpg',
  },
  {
    'name': 'Center Fresh Mint Gum',
    'weight': '15g',
    'price': 10,
    'rating': 4.3,
    'ratingCount': 12500,
    'imageUrl': 'https://link.to/centerfresh_mint.jpg',
  },
  {
    'name': 'Relish Sugar Free Gum',
    'weight': '10g',
    'price': 25,
    'rating': 4.1,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/relish_gum.jpg',
  },
  {
    'name': 'Ripple Mint Candy',
    'weight': '100g',
    'price': 60,
    'rating': 4.0,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/ripple_candy.jpg',
  },
];

final List<Product> candiesGums = List.generate(candiesGumsList.length, (
  index,
) {
  return Product.fromMap(candiesGumsList[index]);
});
