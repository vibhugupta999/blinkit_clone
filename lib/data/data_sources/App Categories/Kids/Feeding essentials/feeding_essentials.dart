import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Feeding%20essentials/Baby%20Food/baby_food.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Feeding%20essentials/Feeding%20Accessories/feeding_accessories.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Feeding%20essentials/Feeding%20bottles%20&%20teats/feeding_bottles_and_teats.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> feedingEssentials = [
  Category(
    categoryName: "Baby Food",
    categoryImageUrl:
        "https://www.cerelac.co.uk/sites/default/files/2023-11/product-highlighter-6-months_0.png",
    subcategoryList: babyFood,
  ),
  Category(
    categoryName: "Feeding Bottles & teats",
    categoryImageUrl:
        "https://duckduckbaby.in/cdn/shop/files/SCY903-01_01.jpg?v=1714619472",
    subcategoryList: feedingBottlesAndTeats,
  ),
  Category(
    categoryName: "Feeding Accessories",
    categoryImageUrl: "https://images.meesho.com/images/products/500429949/cbl3y_512.webp",
    subcategoryList: feedingAccessories,
  ),
];