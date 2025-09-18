import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> indianSweetsList = [
  {
    'name': 'Haldiram’s Kaju Katli',
    'weight': '200g',
    'price': 450,
    'rating': 4.7,
    'ratingCount': 15000,
    'imageUrl': 'https://link.to/haldiram_kajukatli.jpg',
  },
  {
    'name': 'Bikaji Rasgulla',
    'weight': '500g',
    'price': 300,
    'rating': 4.6,
    'ratingCount': 12000,
    'imageUrl': 'https://link.to/bikaji_rasgulla.jpg',
  },
  {
    'name': 'Mithas Soan Papdi',
    'weight': '250g',
    'price': 250,
    'rating': 4.5,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/mithas_soanpapdi.jpg',
  },
  {
    'name': 'K.C. Das Rosogolla',
    'weight': '400g',
    'price': 320,
    'rating': 4.6,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/kcdas_rosogolla.jpg',
  },
  {
    'name': 'Ghasitaram Halwai Motichoor Ladoo',
    'weight': '250g',
    'price': 280,
    'rating': 4.4,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/ghasitaram_ladoo.jpg',
  },
  {
    'name': 'Mithas Gulab Jamun',
    'weight': '350g',
    'price': 280,
    'rating': 4.5,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/mithas_gulabjamun.jpg',
  },
  {
    'name': 'Haldiram’s Besan Barfi',
    'weight': '200g',
    'price': 280,
    'rating': 4.3,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/haldiram_besanbarfi.jpg',
  },
  {
    'name': 'Bikano Peda',
    'weight': '150g',
    'price': 180,
    'rating': 4.2,
    'ratingCount': 6500,
    'imageUrl': 'https://link.to/bikano_peda.jpg',
  },
  {
    'name': 'Bikanervala Milk Cake',
    'weight': '250g',
    'price': 300,
    'rating': 4.5,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/bikanervala_milkcake.jpg',
  },
  {
    'name': 'Haldiram’s Jalebi',
    'weight': '300g',
    'price': 320,
    'rating': 4.6,
    'ratingCount': 7200,
    'imageUrl': 'https://link.to/haldiram_jalebi.jpg',
  },
];

final List<Product> indianSweets = List.generate(indianSweetsList.length, (
  index,
) {
  return Product.fromMap(indianSweetsList[index]);
});
