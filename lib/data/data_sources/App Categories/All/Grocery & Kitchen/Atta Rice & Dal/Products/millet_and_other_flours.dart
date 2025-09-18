import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> milletOtherFloursList = [
  {
    "name": "24 Mantra Organic Ragi Flour",
    "weight": "1kg",
    "price": 180,
    "rating": 4.7,
    "ratingCount": 650,
    "imageUrl": "https://24mantra.com/images/ragi-flour-1kg.jpg",
  },
  {
    "name": "Organic India Bajra Flour",
    "weight": "1kg",
    "price": 190,
    "rating": 4.8,
    "ratingCount": 540,
    "imageUrl": "https://organicindia.com/images/bajra-flour-1kg.jpg",
  },
  {
    "name": "True Elements Jowar Flour",
    "weight": "1kg",
    "price": 175,
    "rating": 4.6,
    "ratingCount": 700,
    "imageUrl": "https://trueelements.in/images/jowar-flour-1kg.jpg",
  },
  {
    "name": "Patanjali Bajra Flour",
    "weight": "1kg",
    "price": 160,
    "rating": 4.5,
    "ratingCount": 820,
    "imageUrl": "https://patanjaliayurved.net/images/bajra-flour-1kg.jpg",
  },
  {
    "name": "Natureland Organics Ragi Flour",
    "weight": "500g",
    "price": 110,
    "rating": 4.6,
    "ratingCount": 480,
    "imageUrl": "https://naturelandorganics.com/images/ragi-flour-500g.jpg",
  },
  {
    "name": "Amrit Krishi Jowar Flour",
    "weight": "1kg",
    "price": 185,
    "rating": 4.7,
    "ratingCount": 690,
    "imageUrl": "https://amritkrishi.shop/images/jowar-flour-1kg.jpg",
  },
  {
    "name": "Organic Tattva Bajra Flour",
    "weight": "500g",
    "price": 95,
    "rating": 4.5,
    "ratingCount": 360,
    "imageUrl": "https://organictattva.com/images/bajra-flour-500g.jpg",
  },
  {
    "name": "Environment Organic Ragi Flour",
    "weight": "1kg",
    "price": 200,
    "rating": 4.7,
    "ratingCount": 540,
    "imageUrl": "https://environmentorganic.in/images/ragi-flour-1kg.jpg",
  },
  {
    "name": "Shakti Flour Bajra",
    "weight": "1kg",
    "price": 155,
    "rating": 4.4,
    "ratingCount": 620,
    "imageUrl": "https://shaktifloors.com/images/bajra-flour-1kg.jpg",
  },
  {
    "name": "Farmley Pearl Millet Flour (Bajra)",
    "weight": "500g",
    "price": 110,
    "rating": 4.6,
    "ratingCount": 400,
    "imageUrl": "https://farmley.in/img/pearl-millet-flour-500g.jpg",
  },

];

final List<Product> milletsAndOtherFlours = List.generate(
  milletOtherFloursList.length,
  (index) {
    return Product.fromMap(milletOtherFloursList[index]);
  },
);
