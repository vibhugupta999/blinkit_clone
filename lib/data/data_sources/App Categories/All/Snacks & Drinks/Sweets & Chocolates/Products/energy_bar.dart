import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> energyBarsList = [
  {
    'name': 'Yoga Bar Real Fruit Energy Bar',
    'weight': '40g',
    'price': 60,
    'rating': 4.5,
    'ratingCount': 8500,
    'imageUrl': 'https://link.to/yogabar_energy.jpg',
  },
  {
    'name': 'Unibic Peanut Butter Energy Bar',
    'weight': '50g',
    'price': 55,
    'rating': 4.3,
    'ratingCount': 7000,
    'imageUrl': 'https://link.to/unibic_peanutbutter.jpg',
  },
  {
    'name': 'The Whole Truth Protein Bar',
    'weight': '50g',
    'price': 120,
    'rating': 4.7,
    'ratingCount': 4000,
    'imageUrl': 'https://link.to/wholetruth_protein.jpg',
  },
  {
    'name': 'MyFitness Peanut Butter Energy Bar',
    'weight': '45g',
    'price': 65,
    'rating': 4.2,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/myfitness_peanut.jpg',
  },
  {
    'name': 'Yoga Bar Nut & Seeds Energy Bar',
    'weight': '40g',
    'price': 70,
    'rating': 4.6,
    'ratingCount': 4800,
    'imageUrl': 'https://link.to/yogabar_nuts_seeds.jpg',
  },
  {
    'name': 'MuscleBlaze MB Natural Energy Bar',
    'weight': '60g',
    'price': 75,
    'rating': 4.4,
    'ratingCount': 5200,
    'imageUrl': 'https://link.to/muscleblaze_energy.jpg',
  },
  {
    'name': 'Urban Platter Almond Energy Bar',
    'weight': '43g',
    'price': 80,
    'rating': 4.5,
    'ratingCount': 3000,
    'imageUrl': 'https://link.to/urbanplatter_almond.jpg',
  },
  {
    'name': 'True Elements Protein Energy Bar',
    'weight': '50g',
    'price': 110,
    'rating': 4.7,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/trueelements_protein.jpg',
  },
  {
    'name': 'Oziva Plant Protein Bar',
    'weight': '50g',
    'price': 130,
    'rating': 4.6,
    'ratingCount': 2200,
    'imageUrl': 'https://link.to/oziva_protein.jpg',
  },
  {
    'name': 'The Whole Truth Vegan Energy Bar',
    'weight': '45g',
    'price': 120,
    'rating': 4.8,
    'ratingCount': 1800,
    'imageUrl': 'https://link.to/wholetruth_vegan.jpg',
  },
];
final List<Product> energyBars = List.generate(energyBarsList.length, (index) {
  return Product.fromMap(energyBarsList[index]);
});
