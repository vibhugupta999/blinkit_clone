import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> popcornList = [
  {
    'name': 'Act II Classic Butter Popcorn',
    'weight': '100g',
    'price': 40,
    'rating': 4.5,
    'ratingCount': 23000,
    'imageUrl': 'https://link.to/act2_butter.jpg',
  },
  {
    'name': 'Act II Butter Popcorn 3-in-1',
    'weight': '60g',
    'price': 25,
    'rating': 4.4,
    'ratingCount': 19000,
    'imageUrl': 'https://link.to/act2_3in1.jpg',
  },
  {
    'name': 'Yipee Popcorn Cheese Flavour',
    'weight': '120g',
    'price': 70,
    'rating': 4.3,
    'ratingCount': 8500,
    'imageUrl': 'https://link.to/yipee_cheese.jpg',
  },
  {
    'name': 'Snackible Healthy Popcorn',
    'weight': '90g',
    'price': 150,
    'rating': 4.6,
    'ratingCount': 4300,
    'imageUrl': 'https://link.to/snackible_popcorn.jpg',
  },
  {
    'name': 'Pop Weaver Sweet Popcorn',
    'weight': '100g',
    'price': 110,
    'rating': 4.5,
    'ratingCount': 2000,
    'imageUrl': 'https://link.to/popweaver_sweet.jpg',
  },
  {
    'name': 'Lays Oven Baked Popcorn',
    'weight': '80g',
    'price': 70,
    'rating': 4.4,
    'ratingCount': 10000,
    'imageUrl': 'https://link.to/lays_oven.jpg',
  },
  {
    'name': 'Epigamia Greek Yogurt Popcorn',
    'weight': '90g',
    'price': 140,
    'rating': 4.7,
    'ratingCount': 3200,
    'imageUrl': 'https://link.to/epigamia_popcorn.jpg',
  },
  {
    'name': 'Frito-Lay XL Popcorn',
    'weight': '150g',
    'price': 120,
    'rating': 4.5,
    'ratingCount': 6000,
    'imageUrl': 'https://link.to/fritolay_xl.jpg',
  },
  {
    'name': 'Puretaste Popcorn Classic Salted',
    'weight': '100g',
    'price': 90,
    'rating': 4.2,
    'ratingCount': 2800,
    'imageUrl': 'https://link.to/puretaste_salted.jpg',
  },
  {
    'name': 'Healthy Truth Popcorn',
    'weight': '80g',
    'price': 110,
    'rating': 4.3,
    'ratingCount': 3500,
    'imageUrl': 'https://link.to/healthytruth_popcorn.jpg',
  },
];
final List<Product> popcorn = List.generate(popcornList.length, (index) {
  return Product.fromMap(popcornList[index]);
});