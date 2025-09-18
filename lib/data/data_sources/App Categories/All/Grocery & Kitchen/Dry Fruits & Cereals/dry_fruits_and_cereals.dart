import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/corn_flakes_and_kids_cereals.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dates_and_seeds.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dry_fruits.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dry_fruits_gift_packs.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/dry_fruits_snacks.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/muesli_and_granola.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/oats_and_daliya.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/organic_and_premium.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/Products/vermicelli_and_poha.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

final List<SubCategory> dryFruitsAndCereals = [
  SubCategory(
    subcategoryName: "Dry Fruits",
    subcategoryImageUrl: "",
    productList: dryFruits,
  ),
  SubCategory(
    subcategoryName: "Dry Fuits Snacks",
    subcategoryImageUrl: "",
    productList: dryFruitsSnacks,
  ),
  SubCategory(
    subcategoryName: "Corn Flakes & Kids Cereals",
    subcategoryImageUrl: "",
    productList: cornFlakesAndKidsCereals,
  ),
  SubCategory(
    subcategoryName: "Muesli & Granola",
    subcategoryImageUrl: "",
    productList: muesliAndGranola,
  ),
  SubCategory(
    subcategoryName: "Oats & daliya",
    subcategoryImageUrl: "",
    productList: oatsDaliya,
  ),
  SubCategory(
    subcategoryName: "Dates & Seeds",
    subcategoryImageUrl: "",
    productList: datesAndSeeds,
  ),
  SubCategory(
    subcategoryName: "Vermicelli & Poha",
    subcategoryImageUrl: "",
    productList: vermicelliAndPoha,
  ),
  SubCategory(
    subcategoryName: "Organic & Premium",
    subcategoryImageUrl: "",
    productList: organicPremium,
  ),
  SubCategory(
    subcategoryName: "Dry Fruit Gift Packs",
    subcategoryImageUrl: "",
    productList: dryFruitsGiftPacks,
  ),
];
