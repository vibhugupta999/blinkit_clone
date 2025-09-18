import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dry_fruits.dart';
import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> dryFruitsGiftPackList = [
  {
    "name": "Nutraj Premium Dry Fruits Gift Box",
    "weight": "1kg",
    "price": 2800,
    "rating": 4.8,
    "ratingCount": 650,
    "imageUrl": "https://www.nutraj.com/assets/images/giftbox-premium-1kg.jpg",
  },
  {
    "name": "Happilo Dry Fruits Gift Hamper",
    "weight": "1.2kg",
    "price": 3200,
    "rating": 4.7,
    "ratingCount": 580,
    "imageUrl": "https://www.happilo.com/images/gifthamper-1.2kg.jpg",
  },
  {
    "name": "Ministry Of Nuts Classic Dry Fruits Gift Pack",
    "weight": "1kg",
    "price": 2900,
    "rating": 4.7,
    "ratingCount": 540,
    "imageUrl":
        "https://ministryofnuts.in/images/classic-dryfruits-gift-pack-1kg.jpg",
  },
  {
    "name": "Organic Tattva Dry Fruits Gift Set",
    "weight": "800g",
    "price": 3500,
    "rating": 4.9,
    "ratingCount": 490,
    "imageUrl": "https://organictattva.com/images/dryfruits-gift-set-800g.jpg",
  },
  {
    "name": "Ajfan Mixed Dry Fruits Gift Box",
    "weight": "1.5kg",
    "price": 3300,
    "rating": 4.8,
    "ratingCount": 520,
    "imageUrl": "https://ajfan.store/images/mixed-dryfruits-gift-box-1.5kg.jpg",
  },
  {
    "name": "Shakti Dry Fruits Gift Pack",
    "weight": "1kg",
    "price": 3100,
    "rating": 4.7,
    "ratingCount": 460,
    "imageUrl": "https://shaktidryfruits.com/images/gift-pack-1kg.jpg",
  },
  {
    "name": "Wonderland Premium Dry Fruits Gift Box",
    "weight": "1.2kg",
    "price": 3400,
    "rating": 4.8,
    "ratingCount": 480,
    "imageUrl": "https://wonderlandfoods.in/images/premium-gift-box-1.2kg.jpg",
  },
  {
    "name": "Big Tree Farms Dry Fruits Gift Collection",
    "weight": "1.3kg",
    "price": 3550,
    "rating": 4.9,
    "ratingCount": 510,
    "imageUrl":
        "https://bigtreefarms.in/images/dryfruits-gift-collection-1.3kg.jpg",
  },
];

final List<Product> dryFruitsGiftPacks = List.generate(dryFruitsList.length, (
  index,
) {
  return Product.fromMap(dryFruitsList[index]);
});