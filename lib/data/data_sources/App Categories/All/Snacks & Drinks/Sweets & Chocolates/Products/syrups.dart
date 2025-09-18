import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> syrupsList = [
  {
    'name': 'Frooti Dry Fruit Syrup',
    'weight': '750ml',
    'price': 250,
    'rating': 4.5,
    'ratingCount': 8000,
    'imageUrl': 'https://link.to/frooti_dryfruit.jpg',
  },
  {
    'name': 'Kissan Mixed Fruit Syrup',
    'weight': '1L',
    'price': 280,
    'rating': 4.4,
    'ratingCount': 7500,
    'imageUrl': 'https://link.to/kissan_mixedfruit.jpg',
  },
  {
    'name': 'Fabbri Fruit Syrup',
    'weight': '500ml',
    'price': 550,
    'rating': 4.7,
    'ratingCount': 2700,
    'imageUrl': 'https://link.to/fabbri_fruit.jpg',
  },
  {
    'name': 'Mapro Mixed Fruit Syrup',
    'weight': '750ml',
    'price': 450,
    'rating': 4.6,
    'ratingCount': 4200,
    'imageUrl': 'https://link.to/mapro_mixedfruit.jpg',
  },
  {
    'name': 'Del Monte Mango Syrup',
    'weight': '1L',
    'price': 350,
    'rating': 4.4,
    'ratingCount': 3600,
    'imageUrl': 'https://link.to/delmonte_mango.jpg',
  },
  {
    'name': 'Garden Fresh Jamun Syrup',
    'weight': '500ml',
    'price': 220,
    'rating': 4.3,
    'ratingCount': 2900,
    'imageUrl': 'https://link.to/gardenfresh_jamun.jpg',
  },
  {
    'name': 'Farmington Mixed Fruit Syrup',
    'weight': '1L',
    'price': 310,
    'rating': 4.5,
    'ratingCount': 4100,
    'imageUrl': 'https://link.to/farmington_mixedfruit.jpg',
  },
  {
    'name': 'Frooti Mango Syrup',
    'weight': '500ml',
    'price': 210,
    'rating': 4.3,
    'ratingCount': 5000,
    'imageUrl': 'https://link.to/frooti_mango.jpg',
  },
  {
    'name': 'Keventers Rose Syrup',
    'weight': '750ml',
    'price': 275,
    'rating': 4.6,
    'ratingCount': 2300,
    'imageUrl': 'https://link.to/keventers_rose.jpg',
  },
  {
    'name': 'Dr. Oetker Vanilla Syrup',
    'weight': '500ml',
    'price': 320,
    'rating': 4.7,
    'ratingCount': 1900,
    'imageUrl': 'https://link.to/droetker_vanilla.jpg',
  },
];

final List<Product> syrups = List.generate(syrupsList.length, (index) {
  return Product.fromMap(syrupsList[index]);
});