import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/energy_bar.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/premium.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/chocolate_gift_packs.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/chocolate_packs.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/chocolates.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/indian_sweets.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/syrups.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

final List<SubCategory> sweetsAndChocolates = [
  SubCategory(
    subcategoryName: "Chocolates",
    subcategoryImageUrl: "",
    productList: chocolate,
  ),
  SubCategory(
    subcategoryName: "Chocolate Packs",
    subcategoryImageUrl: "",
    productList: chocolatePacks,
  ),
  SubCategory(
    subcategoryName: "Chocolate Gift Packs",
    subcategoryImageUrl: "",
    productList: chocolateGiftPacks,
  ),
  SubCategory(
    subcategoryName: "Indian Sweets",
    subcategoryImageUrl: "",
    productList: indianSweets,
  ),
  SubCategory(
    subcategoryName: "Candies & Gum",
    subcategoryImageUrl: "",
    productList: premium,
  ),
  SubCategory(
    subcategoryName: "Premium",
    subcategoryImageUrl: "",
    productList: premium,
  ),
  SubCategory(
    subcategoryName: "Energy Bars",
    subcategoryImageUrl: "",
    productList: energyBars,
  ),
  SubCategory(
    subcategoryName: "Syrups",
    subcategoryImageUrl: "",
    productList: syrups,
  ),
];
