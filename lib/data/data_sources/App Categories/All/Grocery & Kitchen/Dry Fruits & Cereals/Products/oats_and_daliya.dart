import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> oatsDaliyaList = [
  {
    "name": "Quaker Oats Classic",
    "weight": "500g",
    "price": 210,
    "rating": 4.6,
    "ratingCount": 1500,
    "imageUrl": "https://quakeroats.in/images/quaker-oats-classic-500g.jpg",
  },
  {
    "name": "Kellogg’s Oats",
    "weight": "500g",
    "price": 220,
    "rating": 4.5,
    "ratingCount": 1270,
    "imageUrl": "https://www.kelloggs.com/en-in/products/oats.jpg",
  },
  {
    "name": "Bagrry’s Oats",
    "weight": "500g",
    "price": 170,
    "rating": 4.4,
    "ratingCount": 980,
    "imageUrl": "https://bagrrys.com/assets/images/oats-500g.jpg",
  },
  {
    "name": "Patanjali Oats",
    "weight": "500g",
    "price": 160,
    "rating": 4.3,
    "ratingCount": 840,
    "imageUrl": "https://patanjaliayurved.net/images/oats-500g.jpg",
  },
  {
    "name": "Saffola Masala Oats",
    "weight": "500g",
    "price": 180,
    "rating": 4.5,
    "ratingCount": 1120,
    "imageUrl": "https://saffola.in/images/masala-oats-500g.jpg",
  },
  {
    "name": "True Elements Rolled Oats",
    "weight": "500g",
    "price": 240,
    "rating": 4.6,
    "ratingCount": 750,
    "imageUrl": "https://trueelements.in/images/rolled-oats-500g.jpg",
  },
  {
    "name": "MuscleBlaze High Protein Oats",
    "weight": "550g",
    "price": 320,
    "rating": 4.7,
    "ratingCount": 880,
    "imageUrl": "https://muscleblaze.in/images/high-protein-oats-550g.jpg",
  },
  {
    "name": "Yogabar Oats+",
    "weight": "400g",
    "price": 270,
    "rating": 4.4,
    "ratingCount": 700,
    "imageUrl": "https://yogabar.in/images/oats-400g.jpg",
  },
  {
    "name": "Solimo Regular Oats",
    "weight": "500g",
    "price": 210,
    "rating": 4.5,
    "ratingCount": 980,
    "imageUrl": "https://solimo.in/images/oats-500g.jpg",
  },
  {
    "name": "Sundrop Oats",
    "weight": "500g",
    "price": 195,
    "rating": 4.3,
    "ratingCount": 850,
    "imageUrl": "https://sundrop.in/images/oats-500g.jpg",
  },
];

final List<Product> oatsDaliya = List.generate(oatsDaliyaList.length, (index) {
  return Product.fromMap(oatsDaliyaList[index]);
});
