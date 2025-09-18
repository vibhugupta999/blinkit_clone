import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> papadFryumsList = [
  {
    'name': 'Haldiram’s Moong Dal Papad',
    'weight': '200g',
    'price': 85,
    'rating': 4.6,
    'ratingCount': 15000,
    'imageUrl': 'https://link.to/haldiram_moong_papad.jpg',
  },
  {
    'name': 'Bikaji Papad Classic',
    'weight': '150g',
    'price': 70,
    'rating': 4.5,
    'ratingCount': 13000,
    'imageUrl': 'https://link.to/bikaji_papad_classic.jpg',
  },
  {
    'name': 'Lijjat Papad Plain',
    'weight': '180g',
    'price': 75,
    'rating': 4.7,
    'ratingCount': 20000,
    'imageUrl': 'https://link.to/lijjat_papad_plain.jpg',
  },
  {
    'name': 'Anand Papad Masala',
    'weight': '150g',
    'price': 65,
    'rating': 4.2,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/anand_papad_masala.jpg',
  },
  {
    'name': 'Haldiram’s Fryums Mixed',
    'weight': '150g',
    'price': 60,
    'rating': 4.3,
    'ratingCount': 12000,
    'imageUrl': 'https://link.to/haldiram_fryums.jpg',
  },
  {
    'name': 'Lijjat Fryums',
    'weight': '100g',
    'price': 50,
    'rating': 4.1,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/lijjat_fryums.jpg',
  },
  {
    'name': 'Bikano Papad Garlic',
    'weight': '200g',
    'price': 90,
    'rating': 4.4,
    'ratingCount': 11000,
    'imageUrl': 'https://link.to/bikano_papad_garlic.jpg',
  },
  {
    'name': 'Anand Sweets Fryums Plain',
    'weight': '100g',
    'price': 55,
    'rating': 4.0,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/anand_fryums_plain.jpg',
  },
  {
    'name': 'Deep South Papad',
    'weight': '150g',
    'price': 70,
    'rating': 4.2,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/deep_south_papad.jpg',
  },
  {
    'name': 'MTR Masala Papad',
    'weight': '75g',
    'price': 40,
    'rating': 4.1,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/mtr_masala_papad.jpg',
  },
];

final List<Product> papadAndFryums = List.generate(papadFryumsList.length, (
  index,
) {
  return Product.fromMap(papadFryumsList[index]);
});
