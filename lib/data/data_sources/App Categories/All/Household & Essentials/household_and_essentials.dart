import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/Cleaners%20&%20Repellents/cleaners_and_repellents.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/Electronics/electronics.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/Home%20&%20Lifestyle/home_and_lifestyle.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/Stationary%20&%20Games/stationary_and_games.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> householdEssentials = [
  Category(
    categoryName: "Home & LifeStyle",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/51esW0d1qIL._UF1000,1000_QL80_.jpg",
    subcategoryList: homeAndLifeStyle,
  ),
  Category(
    categoryName: "Cleaners & Repellents",
    categoryImageUrl:
        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/43992f8db0b0554cce45cdb4cfeca64a",
    subcategoryList: cleanersAndRepellents,
  ),
  Category(
    categoryName: "Electronics",
    categoryImageUrl:
        "https://www.crompton.co.in/cdn/shop/files/RhinoPlusIronShot3.png?v=1694415643&width=1946",
    subcategoryList: electronics,
  ),
  Category(
    categoryName: "Stationary & games",
    categoryImageUrl:
        "https://cpimg.tistatic.com/07430145/b/4/Paper-Stationary.png",
    subcategoryList: stationaryAndGames,
  ),
];
