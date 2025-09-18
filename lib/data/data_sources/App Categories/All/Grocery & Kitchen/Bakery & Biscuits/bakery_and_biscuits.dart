import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/baking_ingredients.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/cakes_and_rolls.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/cookies.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/cream_biscuits.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/glucose_and_marie.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/gourmet_bakery.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/healthy_digestive.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/rusk_and_wafers.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/Products/sweet_and_salty.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

List<SubCategory> bakeryAndBiscuits = [
  SubCategory(
    subcategoryName: "Cookies",
    subcategoryImageUrl: "",
    productList: cookies,
  ),
  SubCategory(
    subcategoryName: "Cream Biscuits",
    subcategoryImageUrl: "",
    productList: cookiesWithCream,
  ),
  SubCategory(
    subcategoryName: "Healthy & Digestive",
    subcategoryImageUrl: "",
    productList: healthyDigestiveCookies,
  ),
  SubCategory(
    subcategoryName: "Sweet & Salty",
    subcategoryImageUrl: "",
    productList: sweetAndSaltyCookies,
  ),
  SubCategory(
    subcategoryName: "Glucose & Marie",
    subcategoryImageUrl: "",
    productList: glucoseMarieCookies,
  ),
  SubCategory(
    subcategoryName: "Rusk & Wafers",
    subcategoryImageUrl: "",
    productList: ruskAndWafers,
  ),
  SubCategory(
    subcategoryName: "Cakes & Rolls",
    subcategoryImageUrl: "",
    productList: cakeRolls,
  ),
  SubCategory(
    subcategoryName: "Baking Ingredients",
    subcategoryImageUrl: "",
    productList: bakingIngredients,
  ),
  SubCategory(
    subcategoryName: "Gourmet Bakery",
    subcategoryImageUrl: "",
    productList: gourmetBakeryProduct,
  ),
];
