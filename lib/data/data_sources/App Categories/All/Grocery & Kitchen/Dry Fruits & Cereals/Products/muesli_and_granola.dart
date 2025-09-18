import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> muesliGranolaList = [
  {
    "name": "Kellogg’s Muesli Fruit, Nut & Seeds",
    "weight": "750g",
    "price": 400,
    "rating": 4.6,
    "ratingCount": 1400,
    "imageUrl":
        "https://www.kelloggs.com/en-in/products/muesli-fruit-nut-seeds.jpg",
  },
  {
    "name": "Yogabar Classic Muesli",
    "weight": "400g",
    "price": 310,
    "rating": 4.5,
    "ratingCount": 1100,
    "imageUrl": "https://yogabar.in/images/classic-muesli-400g.jpg",
  },
  {
    "name": "Bagrry’s Oats & Muesli",
    "weight": "500g",
    "price": 330,
    "rating": 4.4,
    "ratingCount": 850,
    "imageUrl": "https://bagrrys.com/assets/images/oats-muesli-500g.jpg",
  },
  {
    "name": "True Elements Multigrain Muesli",
    "weight": "350g",
    "price": 370,
    "rating": 4.6,
    "ratingCount": 920,
    "imageUrl": "https://trueelements.in/images/multigrain-muesli-350g.jpg",
  },
  {
    "name": "MuscleBlaze High Protein Muesli",
    "weight": "550g",
    "price": 430,
    "rating": 4.7,
    "ratingCount": 1030,
    "imageUrl": "https://muscleblaze.in/images/high-protein-muesli-550g.jpg",
  },
  {
    "name": "Nourish You Quinoa Muesli",
    "weight": "400g",
    "price": 360,
    "rating": 4.5,
    "ratingCount": 700,
    "imageUrl": "https://nourishyou.in/images/quinoa-muesli-400g.jpg",
  },
  {
    "name": "Soulfull Millet Muesli",
    "weight": "400g",
    "price": 320,
    "rating": 4.4,
    "ratingCount": 650,
    "imageUrl": "https://soulfull.co.in/images/millet-muesli-400g.jpg",
  },
  {
    "name": "Gaia Natural Muesli",
    "weight": "400g",
    "price": 385,
    "rating": 4.5,
    "ratingCount": 720,
    "imageUrl": "https://gaia.in/images/natural-muesli-400g.jpg",
  },
  {
    "name": "Pintola Nut & Seed Muesli",
    "weight": "500g",
    "price": 450,
    "rating": 4.6,
    "ratingCount": 890,
    "imageUrl": "https://pintola.in/images/nut-seed-muesli-500g.jpg",
  },
  {
    "name": "The Whole Truth Muesli",
    "weight": "375g",
    "price": 390,
    "rating": 4.5,
    "ratingCount": 730,
    "imageUrl": "https://thewholetruth.in/images/muesli-375g.jpg",
  },
];

final List<Product> muesliAndGranola = List.generate(muesliGranolaList.length, (
  index,
) {
  return Product.fromMap(muesliGranolaList[index]);
});
