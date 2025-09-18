import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> healthySnacksList = [
  {
    'name': 'True Elements Roasted Makhana',
    'weight': '100g',
    'price': 140,
    'rating': 4.7,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/trueelements_makhana.jpg',
  },
  {
    'name': 'Yoga Bar Millet Tiffin Mix',
    'weight': '200g',
    'price': 160,
    'rating': 4.5,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/yogabar_millet.jpg',
  },
  {
    'name': 'Organic India Foxnuts',
    'weight': '100g',
    'price': 130,
    'rating': 4.6,
    'ratingCount': 4500,
    'imageUrl': 'https://link.to/organicindia_foxnuts.jpg',
  },
  {
    'name': '24 Mantra Sprouted Moong',
    'weight': '250g',
    'price': 120,
    'rating': 4.4,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/24mantra_moong.jpg',
  },
  {
    'name': 'Veeba Quinoa Snacks',
    'weight': '75g',
    'price': 110,
    'rating': 4.3,
    'ratingCount': 3000,
    'imageUrl': 'https://link.to/veeba_quinoa.jpg',
  },
  {
    'name': 'Alpino Almonds',
    'weight': '200g',
    'price': 320,
    'rating': 4.7,
    'ratingCount': 6500,
    'imageUrl': 'https://link.to/alpino_almonds.jpg',
  },
  {
    'name': 'Nutty Gritties Chikki',
    'weight': '150g',
    'price': 75,
    'rating': 4.4,
    'ratingCount': 2700,
    'imageUrl': 'https://link.to/nutty_gritties_chikki.jpg',
  },
  {
    'name': 'Gits Mixed Millet Instant Upma',
    'weight': '250g',
    'price': 90,
    'rating': 4.0,
    'ratingCount': 3000,
    'imageUrl': 'https://link.to/gits_millet_upma.jpg',
  },
  {
    'name': 'Epigamia Greek Yogurt',
    'weight': '150g',
    'price': 50,
    'rating': 4.5,
    'ratingCount': 9000,
    'imageUrl': 'https://link.to/epigamia_yogurt.jpg',
  },
  {
    'name': 'Yoga Bar Fruit & Nut Mix',
    'weight': '100g',
    'price': 130,
    'rating': 4.6,
    'ratingCount': 8700,
    'imageUrl': 'https://link.to/yogabar_fruit_nut.jpg',
  },
];

final List<Product> healthySnacks = List.generate(healthySnacksList.length, (
  index,
) {
  return Product.fromMap(healthySnacksList[index]);
});
