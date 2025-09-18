import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> chocolatePacksList = [
  {
    'name': 'Cadbury Dairy Milk Silk Pack',
    'weight': '150g',
    'price': 180,
    'rating': 4.7,
    'ratingCount': 22000,
    'imageUrl': 'https://link.to/cadbury_silk_pack.jpg',
  },
  {
    'name': 'Nestle KitKat Mini Pack',
    'weight': '110g',
    'price': 120,
    'rating': 4.4,
    'ratingCount': 18000,
    'imageUrl': 'https://link.to/kitkat_mini_pack.jpg',
  },
  {
    'name': 'Ferrero Rocher Gift Box',
    'weight': '300g',
    'price': 1100,
    'rating': 4.8,
    'ratingCount': 9500,
    'imageUrl': 'https://link.to/ferrero_gift_box.jpg',
  },
  {
    'name': 'Dairy Milk Celebrations Pack',
    'weight': '250g',
    'price': 450,
    'rating': 4.6,
    'ratingCount': 15000,
    'imageUrl': 'https://link.to/celebrations_pack.jpg',
  },
  {
    'name': 'Amul Mixed Chocolate Pack',
    'weight': '200g',
    'price': 220,
    'rating': 4.5,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/amul_mixed_pack.jpg',
  },
  {
    'name': 'Perk Chocolate Variety Pack',
    'weight': '180g',
    'price': 130,
    'rating': 4.3,
    'ratingCount': 12000,
    'imageUrl': 'https://link.to/perk_variety_pack.jpg',
  },
  {
    'name': 'Lindt Assorted Chocolate Pack',
    'weight': '250g',
    'price': 900,
    'rating': 4.8,
    'ratingCount': 4000,
    'imageUrl': 'https://link.to/lindt_assorted_pack.jpg',
  },
  {
    'name': 'Cadbury Gems Box',
    'weight': '150g',
    'price': 210,
    'rating': 4.5,
    'ratingCount': 11000,
    'imageUrl': 'https://link.to/cadbury_gems_box.jpg',
  },
  {
    'name': 'Hershey’s Kisses Assorted Pack',
    'weight': '200g',
    'price': 550,
    'rating': 4.6,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/hersheys_kisses_pack.jpg',
  },
  {
    'name': 'Toblerone Honey & Almond Pack',
    'weight': '360g',
    'price': 650,
    'rating': 4.7,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/toblerone_honey_almond.jpg',
  },
];
final List<Product> chocolatePacks = List.generate(chocolatePacksList.length, (
  index,
) {
  return Product.fromMap(chocolatePacksList[index]);
});
