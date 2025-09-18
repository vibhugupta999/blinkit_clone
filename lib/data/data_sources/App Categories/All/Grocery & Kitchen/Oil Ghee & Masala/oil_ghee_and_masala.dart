import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/cow_ghee.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/desi_ghee.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/herbs_and_seasoning.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/oil.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/organic.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/powdered_spices.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/salt_sugar_and_jaggery.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/Products/whole_spices.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

List<SubCategory> oilGheeAndMasala = [
  SubCategory(
    subcategoryName: "Oil",
    subcategoryImageUrl: "",
    productList: oils,
  ),
  SubCategory(
    subcategoryName: "Desi Ghee",
    subcategoryImageUrl: "",
    productList: desiGhee,
  ),
  SubCategory(
    subcategoryName: "Cow Ghee",
    subcategoryImageUrl: "",
    productList: cowGhee,
  ),
  SubCategory(
    subcategoryName: "Powdered Spices",
    subcategoryImageUrl: "",
    productList: powederdSpices,
  ),
  SubCategory(
    subcategoryName: "Salt, Sugar & Jaggery",
    subcategoryImageUrl: "",
    productList: saltSugarAndJaggery,
  ),
  SubCategory(
    subcategoryName: "Whole Spices",
    subcategoryImageUrl: "",
    productList: wholeSpices,
  ),
  SubCategory(
    subcategoryName: "Herbs and Seasoning",
    subcategoryImageUrl: "",
    productList: herbsAndSeasoning,
  ),
  SubCategory(
    subcategoryName: "Organic",
    subcategoryImageUrl: "",
    productList: organics,
  ),
];