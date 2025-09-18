import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> premiumSweetsChocolates = [
  {
    'name': 'Hershey’s Gold Chocolate Bar',
    'weight': '150g',
    'price': 320,
    'rating': 4.7,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/hersheys_gold.jpg',
  },
  {
    'name': 'Ferrero Rocher Deluxe Box',
    'weight': '375g',
    'price': 1400,
    'rating': 4.9,
    'ratingCount': 11000,
    'imageUrl': 'https://link.to/ferrero_deluxe.jpg',
  },
  {
    'name': 'Godiva Dark Chocolate Collection',
    'weight': '200g',
    'price': 2500,
    'rating': 4.8,
    'ratingCount': 2700,
    'imageUrl': 'https://link.to/godiva_dark.jpg',
  },
  {
    'name': 'Mithai Mahal Kaju Katli Premium',
    'weight': '250g',
    'price': 900,
    'rating': 4.6,
    'ratingCount': 3800,
    'imageUrl': 'https://link.to/mithaimahal_kajukatli.jpg',
  },
  {
    'name': 'LaFol Chocolatier Assorted Box',
    'weight': '150g',
    'price': 1200,
    'rating': 4.7,
    'ratingCount': 2100,
    'imageUrl': 'https://link.to/lafol_chocolatier.jpg',
  },
  {
    'name': 'Haldiram’s Premium Sweets Assortment',
    'weight': '300g',
    'price': 1100,
    'rating': 4.8,
    'ratingCount': 4500,
    'imageUrl': 'https://link.to/haldiram_premium.jpg',
  },
  {
    'name': 'Cadbury Silk Bubbly Premium Pack',
    'weight': '160g',
    'price': 250,
    'rating': 4.5,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/cadbury_silk_bubbly.jpg',
  },
  {
    'name': 'Bikaji Premium Dry Fruits Mithai',
    'weight': '200g',
    'price': 850,
    'rating': 4.6,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/bikaji_dryfruit.jpg',
  },
  {
    'name': 'Godiva Truffle Collection',
    'weight': '180g',
    'price': 2800,
    'rating': 4.9,
    'ratingCount': 1500,
    'imageUrl': 'https://link.to/godiva_truffle.jpg',
  },
  {
    'name': 'LaFol Artisan Chocolates',
    'weight': '100g',
    'price': 950,
    'rating': 4.7,
    'ratingCount': 2100,
    'imageUrl': 'https://link.to/lafol_artisan.jpg',
  },
];

final List<Product> premium = List.generate(premiumSweetsChocolates.length, (
  index,
) {
  return Product.fromMap(premiumSweetsChocolates[index]);
});