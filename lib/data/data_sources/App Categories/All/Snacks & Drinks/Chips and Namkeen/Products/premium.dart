import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> premiumSnacks = [
  {
    'name': 'The Whole Truth Roasted Chickpeas',
    'weight': '100g',
    'price': 180,
    'rating': 4.8,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/wholetruth_chickpeas.jpg',
  },
  {
    'name': 'Epigamia Greek Yogurt Mixed Fruit',
    'weight': '150g',
    'price': 60,
    'rating': 4.5,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/epigamia_mixedfruit.jpg',
  },
  {
    'name': 'True Elements Organic Quinoa Chips',
    'weight': '75g',
    'price': 150,
    'rating': 4.7,
    'ratingCount': 4000,
    'imageUrl': 'https://link.to/trueelements_quinoachips.jpg',
  },
  {
    'name': 'Unived Almond Butter',
    'weight': '250g',
    'price': 450,
    'rating': 4.8,
    'ratingCount': 2500,
    'imageUrl': 'https://link.to/unived_almondbutter.jpg',
  },
  {
    'name': 'RAW Pressery Cold Pressed Juice',
    'weight': '300ml',
    'price': 150,
    'rating': 4.6,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/rawpressery_juice.jpg',
  },
  {
    'name': 'Yoga Bar Protein Bites',
    'weight': '100g',
    'price': 160,
    'rating': 4.7,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/yogabar_proteinbites.jpg',
  },
  {
    'name': 'Bombay Sweet Shop Dry Fruit Chikki',
    'weight': '150g',
    'price': 120,
    'rating': 4.5,
    'ratingCount': 4500,
    'imageUrl': 'https://link.to/bombaysweet_chikki.jpg',
  },
  {
    'name': 'Prahadi Millet Mix',
    'weight': '200g',
    'price': 140,
    'rating': 4.4,
    'ratingCount': 3000,
    'imageUrl': 'https://link.to/prahadi_milletmix.jpg',
  },
  {
    'name': 'The Green Snack Co. Nut Mix',
    'weight': '150g',
    'price': 250,
    'rating': 4.6,
    'ratingCount': 2700,
    'imageUrl': 'https://link.to/greensnack_nuts.jpg',
  },
  {
    'name': 'Snackible Superfood Mix',
    'weight': '100g',
    'price': 180,
    'rating': 4.5,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/snackible_superfood.jpg',
  },
];

final List<Product> premium = List.generate(premiumSnacks.length, (index) {
  return Product.fromMap(premiumSnacks[index]);
});
