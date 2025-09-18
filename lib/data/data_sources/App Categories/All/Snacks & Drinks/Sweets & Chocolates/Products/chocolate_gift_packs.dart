import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> chocolateGiftPacksList = [
  {
    'name': 'Ferrero Rocher T30 Gift Pack',
    'weight': '375g',
    'price': 1300,
    'rating': 4.9,
    'ratingCount': 11000,
    'imageUrl': 'https://link.to/ferrero_t30.jpg',
  },
  {
    'name': 'Cadbury Celebration Milk Chocolate Box',
    'weight': '250g',
    'price': 450,
    'rating': 4.7,
    'ratingCount': 14000,
    'imageUrl': 'https://link.to/cadbury_celebration_box.jpg',
  },
  {
    'name': 'Lindt Lindor Assorted Gift Pack',
    'weight': '300g',
    'price': 1200,
    'rating': 4.8,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/lindt_lindor_gift.jpg',
  },
  {
    'name': 'Perk Chocolates Gift Box',
    'weight': '180g',
    'price': 140,
    'rating': 4.3,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/perk_gift_box.jpg',
  },
  {
    'name': 'Ferrero Rondnoir Dark Chocolates',
    'weight': '150g',
    'price': 600,
    'rating': 4.7,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/ferrero_rondnoir.jpg',
  },
  {
    'name': 'Cadbury Dairy Milk Silk Gems Gift Pack',
    'weight': '150g',
    'price': 300,
    'rating': 4.6,
    'ratingCount': 8500,
    'imageUrl': 'https://link.to/cadbury_silk_gems.jpg',
  },
  {
    'name': 'Nestle Munch Chocolate Gift Pack',
    'weight': '200g',
    'price': 250,
    'rating': 4.5,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/nestle_munch_gift.jpg',
  },
  {
    'name': 'Toblerone Swiss Milk Chocolate Gift Box',
    'weight': '360g',
    'price': 700,
    'rating': 4.7,
    'ratingCount': 4200,
    'imageUrl': 'https://link.to/toblerone_gift_box.jpg',
  },
  {
    'name': 'Amul Dark Chocolate Gift Box',
    'weight': '150g',
    'price': 280,
    'rating': 4.4,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/amul_dark_gift.jpg',
  },
  {
    'name': 'Cadbury Fuse Delight Box',
    'weight': '150g',
    'price': 320,
    'rating': 4.5,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/cadbury_fuse_box.jpg',
  },
];

final List<Product> chocolateGiftPacks = List.generate(
  chocolateGiftPacksList.length,
  (index) {
    return Product.fromMap(chocolateGiftPacksList[index]);
  },
);
