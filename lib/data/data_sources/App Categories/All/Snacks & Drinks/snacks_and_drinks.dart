import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/chips_and_namkeen.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Drinks%20&%20Juices/drinks_and_juices.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Ice%20Creams%20&%20More/ice_creams_and_more.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Instant%20Food/instant_food.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Paan%20Corner/paan_corner.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sauces%20&%20Spreads/sauces_and_spreads.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/sweets_and_chocolates.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Tea%20Coffee%20&%20Milk%20Drinks/tea_coffee_and_milk_drinks.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> snacksAndDrinks = [
  Category(
    categoryName: "Chips & Namkeen",
    categoryImageUrl:
        "https://www.jiomart.com/images/category/29000/thumb/chips-namkeens-20240621.png",
    subcategoryList: chipsAndNamkeen,
  ),
  Category(
    categoryName: "Sweets & Chocolates",
    categoryImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuu4X7fRoI8dvoJ4lY4Tx06AwykTDT0M9uLA&s",
    subcategoryList: sweetsAndChocolates,
  ),
  Category(
    categoryName: "Drinks & Juices",
    categoryImageUrl: "https://m.media-amazon.com/images/I/61O-IQYAryL.jpg",
    subcategoryList: drinksAndJuices,
  ),
  Category(
    categoryName: "Tea, Coffee & Milk Drinks",
    categoryImageUrl:
        "https://coffeemachinedelhi.com/wp-content/uploads/2023/09/kadak-coffee-chai-2kg-1.jpg",
    subcategoryList: teaCoffeeAndMilkDrinks,
  ),
  Category(
    categoryName: "Instant Food",
    categoryImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzSzu_2QpA-BVHoKH5GeDevJudG2FEuAhJOQ&s",
    subcategoryList: instantFood,
  ),
  Category(
    categoryName: "Sauces & Spreads",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/41r8wjYfMNL._UF1000,1000_QL80_.jpg",
    subcategoryList: saucesAndSpreads,
  ),
  Category(
    categoryName: "Paan Corner",
    categoryImageUrl:
        "https://5.imimg.com/data5/SELLER/Default/2022/9/YD/WE/OP/159590095/paan-corner-candy.jpg",
    subcategoryList: paanCorner,
  ),
  Category(
    categoryName: "Ice Creams & More",
    categoryImageUrl:
        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/NI_CATALOG/IMAGES/CIW/2024/11/13/476487c6-81fb-4239-bfda-de89df46a73d_456298_2.png",
    subcategoryList: iceCreamsAndMore,
  ),
];
