import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dry_fruits.dart';
import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> dryFruitSnacksList = [
  {
    "name": "Ministry Of Nuts Classic Dry Fruit Snack",
    "weight": "200g",
    "price": 470,
    "rating": 4.7,
    "ratingCount": 820,
    "imageUrl":
        "https://ministryofnuts.in/images/classic-dryfruit-snack-200g.jpg",
  },
  {
    "name": "Nutraj Power Mix Snack",
    "weight": "250g",
    "price": 580,
    "rating": 4.8,
    "ratingCount": 1350,
    "imageUrl": "https://www.nutraj.com/assets/images/power-mix-250g.jpg",
  },
  {
    "name": "Happilo Nutty Bites Mix",
    "weight": "200g",
    "price": 495,
    "rating": 4.6,
    "ratingCount": 950,
    "imageUrl": "https://www.happilo.com/images/nutty-bites-200g.jpg",
  },
  {
    "name": "Solimo Dry Fruit & Seed Mix",
    "weight": "200g",
    "price": 390,
    "rating": 4.5,
    "ratingCount": 1140,
    "imageUrl": "https://solimo.in/images/dry-fruit-seed-mix-200g.jpg",
  },
  {
    "name": "Farmley Trail Mix Snack",
    "weight": "250g",
    "price": 520,
    "rating": 4.7,
    "ratingCount": 870,
    "imageUrl": "https://farmley.in/img/trail-mix-250g.jpg",
  },
  {
    "name": "Urban Platter Multiseed & Dry Fruit Mix",
    "weight": "200g",
    "price": 450,
    "rating": 4.4,
    "ratingCount": 790,
    "imageUrl": "https://urbanplatter.in/images/multiseed-dryfruit-200g.jpg",
  },
  {
    "name": "Tulsi Roasted Dry Fruit Mix",
    "weight": "250g",
    "price": 510,
    "rating": 4.3,
    "ratingCount": 670,
    "imageUrl": "https://tulsi.in/images/roasted-dry-fruit-mix-250g.jpg",
  },
  {
    "name": "Nutty Gritties Trail Mix",
    "weight": "250g",
    "price": 420,
    "rating": 4.2,
    "ratingCount": 420,
    "imageUrl": "https://nuttygritties.com/images/trail-mix-250g.jpg",
  },
  {
    "name": "Ministry Of Nuts Protein Power Mix",
    "weight": "300g",
    "price": 650,
    "rating": 4.7,
    "ratingCount": 920,
    "imageUrl": "https://ministryofnuts.in/images/protein-power-mix-300g.jpg",
  },
  {
    "name": "Nutraj Dry Fruit Snack Box",
    "weight": "500g",
    "price": 1100,
    "rating": 4.8,
    "ratingCount": 1640,
    "imageUrl":
        "https://www.nutraj.com/assets/images/dry-fruit-snack-box-500g.jpg",
  },
];

final List<Product> dryFruitsSnacks = List.generate(dryFruitSnacksList.length, (
  index,
) {
  return Product.fromMap(dryFruitsList[index]);
});
