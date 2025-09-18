import 'package:blinkit_clone/data/models/product.dart';

List<Map<String, dynamic>> fruit = [
  {
    "name": "Apple",
    "weight": "1kg",
    "price": 120,
    "rating": 4.5,
    "ratingCount": 87452,
    "imageUrl": "https://png.pngtree.com/png-vector/20210522/ourmid/pngtree-apple-is-naturally-thirsty-and-healthy-png-image_3323218.jpg",
  },
  {
    "name": "Banana",
    "weight": "1kg",
    "price": 60,
    "rating": 4.2,
    "ratingCount": 39284,
    "imageUrl": "https://p7.hiclipart.com/preview/332/204/967/banana-clip-art-banana-picture.jpg",
  },
  {
    "name": "Orange",
    "weight": "1kg",
    "price": 90,
    "rating": 4.0,
    "ratingCount": 45721,
    "imageUrl": "https://png.pngtree.com/png-clipart/20190515/original/pngtree-orange-png-png-image_3619070.jpg",
  },
  {
    "name": "Mango",
    "weight": "1kg",
    "price": 150,
    "rating": 4.7,
    "ratingCount": 98213,
    "imageUrl": "https://e7.pngegg.com/pngimages/379/427/png-clipart-mango-mangifera-indica-alphonso-benishan-banganapalle-mango-natural-foods-food-thumbnail.png",
  },
  {
    "name": "Pineapple",
    "weight": "2kg",
    "price": 180,
    "rating": 4.3,
    "ratingCount": 68015,
    "imageUrl": "https://example.com/images/pineapple.png",
  },
  {
    "name": "Watermelon",
    "weight": "3kg",
    "price": 220,
    "rating": 4.1,
    "ratingCount": 13450,
    "imageUrl": "https://example.com/images/watermelon.png",
  },
  {
    "name": "Papaya",
    "weight": "2kg",
    "price": 130,
    "rating": 3.8,
    "ratingCount": 52931,
    "imageUrl": "https://example.com/images/papaya.png",
  },
  {
    "name": "Kiwi",
    "weight": "500g",
    "price": 100,
    "rating": 4.6,
    "ratingCount": 78542,
    "imageUrl": "https://example.com/images/kiwi.png",
  },
  {
    "name": "Strawberry",
    "weight": "250g",
    "price": 200,
    "rating": 4.8,
    "ratingCount": 69012,
    "imageUrl": "https://example.com/images/strawberry.png",
  },
  {
    "name": "Blueberry",
    "weight": "200g",
    "price": 250,
    "rating": 4.7,
    "ratingCount": 81200,
    "imageUrl": "https://example.com/images/blueberry.png",
  },
];

final List<Product> fruits = List.generate(fruit.length, (index) {
  return Product.fromMap(fruit[index]);
});
