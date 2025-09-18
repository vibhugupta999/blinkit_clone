import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> organicPremiumList = [
  {
    "name": "Organic Tattva Makhana (Fox Nuts)",
    "weight": "200g",
    "price": 550,
    "rating": 4.7,
    "ratingCount": 420,
    "imageUrl": "https://organictattva.com/images/makhana-200g.jpg",
  },
  {
    "name": "Organic Kashmiri Almonds - Organic Tattva",
    "weight": "250g",
    "price": 285,
    "rating": 4.8,
    "ratingCount": 390,
    "imageUrl": "https://organictattva.com/images/almonds-250g.jpg",
  },
  {
    "name": "Organic Kashmiri Walnuts - Organic Tattva",
    "weight": "250g",
    "price": 300,
    "rating": 4.7,
    "ratingCount": 360,
    "imageUrl": "https://organictattva.com/images/walnuts-250g.jpg",
  },
  {
    "name": "Organic Tattva Cashews W320 Grade",
    "weight": "250g",
    "price": 209,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://organictattva.com/images/cashews-250g.jpg",
  },
  {
    "name": "Nutraj Organic Walnuts",
    "weight": "500g",
    "price": 850,
    "rating": 4.7,
    "ratingCount": 1200,
    "imageUrl": "https://www.nutraj.com/assets/images/organic-walnuts-500g.jpg",
  },
  {
    "name": "Happilo Organic Almonds",
    "weight": "500g",
    "price": 950,
    "rating": 4.8,
    "ratingCount": 1400,
    "imageUrl": "https://www.happilo.com/images/organic-almonds-500g.jpg",
  },
  {
    "name": "Farmley Organic Cashews",
    "weight": "400g",
    "price": 700,
    "rating": 4.6,
    "ratingCount": 820,
    "imageUrl": "https://farmley.in/img/organic-cashews-400g.jpg",
  },
  {
    "name": "True Elements Organic Mixed Nuts",
    "weight": "350g",
    "price": 750,
    "rating": 4.7,
    "ratingCount": 680,
    "imageUrl": "https://trueelements.in/images/organic-mixed-nuts-350g.jpg",
  },
  {
    "name": "Urban Platter Organic Dry Fruit Mix",
    "weight": "500g",
    "price": 860,
    "rating": 4.6,
    "ratingCount": 700,
    "imageUrl": "https://urbanplatter.in/images/organic-dry-fruit-mix-500g.jpg",
  },
  {
    "name": "Organic India Wheat Dalia",
    "weight": "500g",
    "price": 75,
    "rating": 4.4,
    "ratingCount": 510,
    "imageUrl": "https://organicindia.com/images/organic-wheat-dalia-500g.jpg",
  },
];

final List<Product> organicPremium = List.generate(organicPremiumList.length, (
  index,
) {
  return Product.fromMap(organicPremiumList[index]);
});
