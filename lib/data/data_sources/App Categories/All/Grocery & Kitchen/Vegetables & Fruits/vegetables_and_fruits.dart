import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/all.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/coriander_and_others.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/exotics.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/flowers_and_leaves.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/fresh_fruits.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/fresh_vegetables.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/frozen_veg.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/Products/seasonal.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

List<SubCategory> vegetablesAndFruits = [
  SubCategory(
    subcategoryName: "All",
    subcategoryImageUrl: "",
    productList: allVegetablesAndFruits,
  ),
  SubCategory(
    subcategoryName: "Fresh Vegetables",
    subcategoryImageUrl: "",
    productList: freshVegetables,
  ),
  SubCategory(
    subcategoryName: "Fresh Fruits",
    subcategoryImageUrl: "",
    productList: fruits,
  ),
  SubCategory(
    subcategoryName: "Exotics",
    subcategoryImageUrl: "",
    productList: exotics,
  ),
  SubCategory(
    subcategoryName: "Coriander & Others",
    subcategoryImageUrl: "",
    productList: leafyVegetables,
  ),
  SubCategory(
    subcategoryName: "Flowers & Leaves",
    subcategoryImageUrl: "",
    productList: flowersandLeaves,
  ),
  SubCategory(
    subcategoryName: "Seasonal",
    subcategoryImageUrl: "",
    productList: seasonalFruitsAndVegetables,
  ),
  SubCategory(
    subcategoryName: "Frozen Veg",
    subcategoryImageUrl: "",
    productList: frozenFruitsandVegetables,
  ),
];
