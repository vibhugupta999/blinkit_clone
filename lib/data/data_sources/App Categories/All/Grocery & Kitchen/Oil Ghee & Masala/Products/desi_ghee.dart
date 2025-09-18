import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> desiGheeList = [
  {
    "name": "Amul Pure Ghee 1L",
    "weight": "1L",
    "price": 650,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/amul_ghee_1l.png",
  },
  {
    "name": "Dabur Hommade Desi Ghee 1L",
    "weight": "1L",
    "price": 680,
    "rating": 4.6,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/dabur_ghee_1l.png",
  },
  {
    "name": "Mother Dairy Desi Ghee 1L",
    "weight": "1L",
    "price": 660,
    "rating": 4.5,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/motherdairy_ghee_1l.png",
  },
  {
    "name": "Patanjali Cow Desi Ghee 500ml",
    "weight": "500ml",
    "price": 380,
    "rating": 4.3,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/patanjali_ghee_500ml.png",
  },
  {
    "name": "Gowardhan Pure Desi Ghee 1L",
    "weight": "1L",
    "price": 640,
    "rating": 4.4,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/gowardhan_ghee_1l.png",
  },

  {
    "name": "Nestle Pure Desi Ghee 500ml",
    "weight": "500ml",
    "price": 390,
    "rating": 4.2,
    "ratingCount": 250,
    "imageUrl": "https://example.com/images/nestle_ghee_500ml.png",
  },
  {
    "name": "Sri Sri Tattva Cow Desi Ghee 1L",
    "weight": "1L",
    "price": 700,
    "rating": 4.8,
    "ratingCount": 210,
    "imageUrl": "https://example.com/images/srisri_ghee_1l.png",
  },
  {
    "name": "Keventer Pure Cow Ghee 1L",
    "weight": "1L",
    "price": 660,
    "rating": 4.1,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/keventer_ghee_1l.png",
  },
  {
    "name": "Pride of Cows Pure Cow Ghee 500ml",
    "weight": "500ml",
    "price": 420,
    "rating": 4.7,
    "ratingCount": 190,
    "imageUrl": "https://example.com/images/prideofcows_ghee_500ml.png",
  },
  {
    "name": "Aashirvaad Cow Desi Ghee 1L",
    "weight": "1L",
    "price": 670,
    "rating": 4.5,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/aashirvaad_ghee_1l.png",
  },
];
List<Product> desiGhee = List.generate(desiGheeList.length, (index) {
  return Product.fromMap(desiGheeList[index]);
});
