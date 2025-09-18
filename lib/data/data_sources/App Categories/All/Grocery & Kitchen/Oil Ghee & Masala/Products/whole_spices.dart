import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> wholeSpice = [
  // Cloves
  {
    "name": "MDH Cloves 100g",
    "weight": "100g",
    "price": 160,
    "rating": 4.7,
    "ratingCount": 420,
    "imageUrl": "https://example.com/images/mdh_cloves_100g.png",
  },
  {
    "name": "Everest Cloves 200g",
    "weight": "200g",
    "price": 310,
    "rating": 4.6,
    "ratingCount": 390,
    "imageUrl": "https://example.com/images/everest_cloves_200g.png",
  },

  // Cardamom
  {
    "name": "MDH Green Cardamom 50g",
    "weight": "50g",
    "price": 450,
    "rating": 4.8,
    "ratingCount": 470,
    "imageUrl": "https://example.com/images/mdh_cardamom_50g.png",
  },
  {
    "name": "Everest Green Cardamom 100g",
    "weight": "100g",
    "price": 800,
    "rating": 4.7,
    "ratingCount": 430,
    "imageUrl": "https://example.com/images/everest_cardamom_100g.png",
  },

  // Black Peppercorns
  {
    "name": "MDH Black Peppercorn 100g",
    "weight": "100g",
    "price": 260,
    "rating": 4.6,
    "ratingCount": 410,
    "imageUrl": "https://example.com/images/mdh_blackpeppercorn_100g.png",
  },

  {
    "name": "Tata Black Peppercorn 250g",
    "weight": "250g",
    "price": 600,
    "rating": 4.5,
    "ratingCount": 290,
    "imageUrl": "https://example.com/images/tata_blackpeppercorn_250g.png",
  },

  // Cinnamon Stick
  {
    "name": "Catch Cinnamon Stick 100g",
    "weight": "100g",
    "price": 270,
    "rating": 4.5,
    "ratingCount": 260,
    "imageUrl": "https://example.com/images/catch_cinnamonstick_100g.png",
  },
  {
    "name": "Tata Cinnamon Stick 250g",
    "weight": "250g",
    "price": 660,
    "rating": 4.7,
    "ratingCount": 240,
    "imageUrl": "https://example.com/images/tata_cinnamonstick_250g.png",
  },

  // Bay Leaves
  {
    "name": "MDH Bay Leaves 50g",
    "weight": "50g",
    "price": 90,
    "rating": 4.5,
    "ratingCount": 220,
    "imageUrl": "https://example.com/images/mdh_bayleaves_50g.png",
  },

  {
    "name": "Catch Bay Leaves 100g",
    "weight": "100g",
    "price": 140,
    "rating": 4.4,
    "ratingCount": 180,
    "imageUrl": "https://example.com/images/catch_bayleaves_100g.png",
  },

  // Star Anise
  {
    "name": "MDH Star Anise 50g",
    "weight": "50g",
    "price": 130,
    "rating": 4.6,
    "ratingCount": 190,
    "imageUrl": "https://example.com/images/mdh_staranise_50g.png",
  },

  // Mace
  {
    "name": "MDH Mace 50g",
    "weight": "50g",
    "price": 200,
    "rating": 4.7,
    "ratingCount": 130,
    "imageUrl": "https://example.com/images/mdh_mace_50g.png",
  },

  // Fennel Seeds
  {
    "name": "MDH Fennel Seeds 100g",
    "weight": "100g",
    "price": 90,
    "rating": 4.7,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/mdh_fennelseeds_100g.png",
  },
  {
    "name": "Tata Fennel Seeds 250g",
    "weight": "250g",
    "price": 210,
    "rating": 4.7,
    "ratingCount": 260,
    "imageUrl": "https://example.com/images/tata_fennelseeds_250g.png",
  },

  // Cumin Seeds
  {
    "name": "MDH Cumin Seeds 100g",
    "weight": "100g",
    "price": 60,
    "rating": 4.6,
    "ratingCount": 380,
    "imageUrl": "https://example.com/images/mdh_cuminseeds_100g.png",
  },
  {
    "name": "Everest Cumin Seeds 200g",
    "weight": "200g",
    "price": 115,
    "rating": 4.7,
    "ratingCount": 340,
    "imageUrl": "https://example.com/images/everest_cuminseeds_200g.png",
  },
];

List<Product> wholeSpices = List.generate(wholeSpice.length, (index) {
  return Product.fromMap(wholeSpice[index]);
});
