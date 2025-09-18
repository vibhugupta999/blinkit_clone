import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> cowGheeList = [
  {
    "name": "Patanjali Cow Ghee 1L",
    "weight": "1L",
    "price": 700,
    "rating": 4.7,
    "ratingCount": 480,
    "imageUrl": "https://example.com/images/patanjali_cowghee_1l.png",
  },
  {
    "name": "Aashirvaad Cow Ghee 1L",
    "weight": "1L",
    "price": 680,
    "rating": 4.6,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/aashirvaad_cowghee_1l.png",
  },
  {
    "name": "Organic India Cow Ghee 500ml",
    "weight": "500ml",
    "price": 450,
    "rating": 4.8,
    "ratingCount": 310,
    "imageUrl": "https://example.com/images/organicindia_cowghee_500ml.png",
  },
  {
    "name": "Pride of Cows Pure Cow Ghee 500ml",
    "weight": "500ml",
    "price": 480,
    "rating": 4.9,
    "ratingCount": 350,
    "imageUrl": "https://example.com/images/prideofcows_500ml.png",
  },
  {
    "name": "Sri Sri Tattva Cow Ghee 1L",
    "weight": "1L",
    "price": 720,
    "rating": 4.7,
    "ratingCount": 280,
    "imageUrl": "https://example.com/images/srisri_cowghee_1l.png",
  },

  {
    "name": "Gowardhan Cow Ghee 1L",
    "weight": "1L",
    "price": 650,
    "rating": 4.4,
    "ratingCount": 400,
    "imageUrl": "https://example.com/images/gowardhan_cowghee_1l.png",
  },
  {
    "name": "Keventer Cow Ghee 1L",
    "weight": "1L",
    "price": 670,
    "rating": 4.5,
    "ratingCount": 370,
    "imageUrl": "https://example.com/images/keventer_cowghee_1l.png",
  },
  {
    "name": "Mother Dairy Cow Ghee 1L",
    "weight": "1L",
    "price": 640,
    "rating": 4.3,
    "ratingCount": 300,
    "imageUrl": "https://example.com/images/motherdairy_cowghee_1l.png",
  },
  {
    "name": "Patel Cow Ghee 500ml",
    "weight": "500ml",
    "price": 400,
    "rating": 4.1,
    "ratingCount": 250,
    "imageUrl": "https://example.com/images/patel_cowghee_500ml.png",
  },
  {
    "name": "Amul Cow Ghee 1L",
    "weight": "1L",
    "price": 660,
    "rating": 4.5,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/amul_cowghee_1l.png",
  },
];
List<Product> cowGhee = List.generate(cowGheeList.length, (index) {
  return Product.fromMap(cowGheeList[index]);
});
