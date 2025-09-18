import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/bhujia_and_mixtures.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/chips_and_wafers.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/healthy_snacks.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/nachos.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/namkeen_snacks.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/papad_and_fryums.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/popcorn.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Chips%20and%20Namkeen/Products/premium.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

final List<SubCategory> chipsAndNamkeen = [
  SubCategory(
    subcategoryName: "Chips & Wafers",
    subcategoryImageUrl: "",
    productList: chipsAndWafers,
  ),
  SubCategory(
    subcategoryName: "Bhujia & Mixtures",
    subcategoryImageUrl: "",
    productList: bhujiaAndMixtures,
  ),
  SubCategory(
    subcategoryName: "Namkeen Snacks",
    subcategoryImageUrl: "",
    productList: namkeenSnacks,
  ),
  SubCategory(
    subcategoryName: "Nachos",
    subcategoryImageUrl: "",
    productList: nachos,
  ),
  SubCategory(
    subcategoryName: "Healthy Snacks",
    subcategoryImageUrl: "",
    productList: healthySnacks,
  ),
  SubCategory(
    subcategoryName: "Popcorn",
    subcategoryImageUrl: "",
    productList: popcorn,
  ),
  SubCategory(
    subcategoryName: "Papad & Fryums",
    subcategoryImageUrl: "",
    productList: papadAndFryums,
  ),
  SubCategory(
    subcategoryName: "Premium",
    subcategoryImageUrl: "",
    productList: premium,
  ),
];
