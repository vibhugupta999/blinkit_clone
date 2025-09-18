import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> organicAttaDalRiceList = [
  {
    "name": "24 Mantra Organic Wheat Atta",
    "weight": "5kg",
    "price": 650,
    "rating": 4.8,
    "ratingCount": 720,
    "imageUrl": "https://24mantra.com/images/organic-wheat-atta-5kg.jpg",
  },
  {
    "name": "Organic India Sharbati Wheat Atta",
    "weight": "5kg",
    "price": 680,
    "rating": 4.9,
    "ratingCount": 680,
    "imageUrl": "https://organicindia.com/images/sharbati-atta-5kg.jpg",
  },
  {
    "name": "Natureland Organics Organic Wheat Atta",
    "weight": "5kg",
    "price": 620,
    "rating": 4.7,
    "ratingCount": 510,
    "imageUrl": "https://naturelandorganics.com/images/wheat-atta-5kg.jpg",
  },
  {
    "name": "24 Mantra Organic Toor Dal",
    "weight": "1kg",
    "price": 140,
    "rating": 4.6,
    "ratingCount": 430,
    "imageUrl": "https://24mantra.com/images/toor-dal-1kg.jpg",
  },
  {
    "name": "Organic India Urad Dal",
    "weight": "1kg",
    "price": 150,
    "rating": 4.7,
    "ratingCount": 410,
    "imageUrl": "https://organicindia.com/images/urad-dal-1kg.jpg",
  },
  {
    "name": "Nutraj Organic Moong Dal",
    "weight": "1kg",
    "price": 160,
    "rating": 4.8,
    "ratingCount": 500,
    "imageUrl":
        "https://www.nutraj.com/assets/images/organic-moong-dal-1kg.jpg",
  },
  {
    "name": "24 Mantra Organic Rajma",
    "weight": "1kg",
    "price": 220,
    "rating": 4.7,
    "ratingCount": 380,
    "imageUrl": "https://24mantra.com/images/rajma-1kg.jpg",
  },
  {
    "name": "Organic India Chana Dal",
    "weight": "1kg",
    "price": 135,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://organicindia.com/images/chana-dal-1kg.jpg",
  },
  {
    "name": "Natureland Organics Organic Masoor Dal",
    "weight": "1kg",
    "price": 145,
    "rating": 4.7,
    "ratingCount": 390,
    "imageUrl": "https://naturelandorganics.com/images/masoor-dal-1kg.jpg",
  },
  {
    "name": "24 Mantra Organic Basmati Rice",
    "weight": "5kg",
    "price": 1100,
    "rating": 4.8,
    "ratingCount": 540,
    "imageUrl": "https://24mantra.com/images/basmati-rice-5kg.jpg",
  },
];

final List<Product> organic = List.generate(organicAttaDalRiceList.length, (index) {
  return Product.fromMap(organicAttaDalRiceList[index]);
});
