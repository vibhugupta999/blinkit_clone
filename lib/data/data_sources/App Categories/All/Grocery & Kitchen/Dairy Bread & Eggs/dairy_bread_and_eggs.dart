import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/batter.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/bread_and_pav.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/cheese_and_butter.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/curd_and_yogurt.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/eggs.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/milk.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/paneer_and_tofu.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/Products/soy_milk_and_more.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

List<SubCategory> dairyBreadAndEggs = [
  SubCategory(
    subcategoryName: "Milk",
    subcategoryImageUrl: "",
    productList: milk,
  ),
  SubCategory(
    subcategoryName: "Bread and Pav",
    subcategoryImageUrl: "",
    productList: breadAndPav,
  ),
  SubCategory(
    subcategoryName: "Eggs",
    subcategoryImageUrl: "",
    productList: eggs,
  ),
  SubCategory(
    subcategoryName: "Curd & Yogurt",
    subcategoryImageUrl: "",
    productList: curdAndYogurt,
  ),
  SubCategory(
    subcategoryName: "Cheese and Butter",
    subcategoryImageUrl: "",
    productList: cheeseAndButter,
  ),
  SubCategory(
    subcategoryName: "Batter",
    subcategoryImageUrl: "",
    productList: batters,
  ),
  SubCategory(
    subcategoryName: "Paneer & Tofu",
    subcategoryImageUrl: "",
    productList: paneerAndTofu,
  ),
  SubCategory(
    subcategoryName: "Soy Milk & More",
    subcategoryImageUrl: "",
    productList: soyMilkAndMore,
  ),
];
