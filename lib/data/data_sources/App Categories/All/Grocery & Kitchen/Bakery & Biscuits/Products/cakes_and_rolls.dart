import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> cakesAndRoll = [
  // Cakes
  {
    "name": "Britannia Treat Chocobakes 200g",
    "weight": "200g",
    "price": 75,
    "rating": 4.6,
    "ratingCount": 850,
    "imageUrl": "https://example.com/images/britannia_chocobakes_200g.png",
  },
  {
    "name": "Britannia Treat Chocobakes 400g",
    "weight": "400g",
    "price": 140,
    "rating": 4.7,
    "ratingCount": 800,
    "imageUrl": "https://example.com/images/britannia_chocobakes_400g.png",
  },
  {
    "name": "Britannia Treat Plum Cake 200g",
    "weight": "200g",
    "price": 85,
    "rating": 4.6,
    "ratingCount": 750,
    "imageUrl": "https://example.com/images/britannia_plum_cake_200g.png",
  },
  {
    "name": "Britannia Treat Plum Cake 400g",
    "weight": "400g",
    "price": 150,
    "rating": 4.7,
    "ratingCount": 700,
    "imageUrl": "https://example.com/images/britannia_plum_cake_400g.png",
  },
  {
    "name": "Britannia Swiss Roll 156g",
    "weight": "156g",
    "price": 40,
    "rating": 4.5,
    "ratingCount": 900,
    "imageUrl": "https://example.com/images/britannia_swiss_roll_156g.png",
  },

  {
    "name": "Britannia Swiss Roll Choco 156g",
    "weight": "156g",
    "price": 42,
    "rating": 4.6,
    "ratingCount": 870,
    "imageUrl":
        "https://example.com/images/britannia_swiss_roll_choco_156g.png",
  },
  {
    "name": "Britannia Swiss Roll Vanilla 156g",
    "weight": "156g",
    "price": 42,
    "rating": 4.5,
    "ratingCount": 820,
    "imageUrl":
        "https://example.com/images/britannia_swiss_roll_vanilla_156g.png",
  },
  {
    "name": "Britannia Milk Cake 200g",
    "weight": "200g",
    "price": 70,
    "rating": 4.4,
    "ratingCount": 780,
    "imageUrl": "https://example.com/images/britannia_milk_cake_200g.png",
  },
  {
    "name": "Britannia Treat Choco Fills Cake 150g",
    "weight": "150g",
    "price": 75,
    "rating": 4.7,
    "ratingCount": 760,
    "imageUrl":
        "https://example.com/images/britannia_treat_choco_fills_cake_150g.png",
  },

  // Other Brands Cakes
  {
    "name": "Monginis Black Forest Cake 250g",
    "weight": "250g",
    "price": 180,
    "rating": 4.6,
    "ratingCount": 500,
    "imageUrl": "https://example.com/images/monginis_blackforest_250g.png",
  },
];

final List<Product> cakeRolls = List.generate(cakesAndRoll.length, (index) {
  return Product.fromMap(cakesAndRoll[index]);
});
