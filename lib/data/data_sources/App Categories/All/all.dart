import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/beauty_and_personal_care.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/grocery_and_kitchen.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/household_and_essentials.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/snacks_and_drinks.dart';
import 'package:blinkit_clone/data/models/super_category.dart';

final List<SuperCategory> all = [
  SuperCategory(name: "Grocery & Kitchen", categories: groceryAndKitchen),
  SuperCategory(name: "Snacks & Drinks", categories: snacksAndDrinks),
  SuperCategory(
    name: "Beauty & Personal Care",
    categories: beautyAndPersonalCAre,
  ),
  SuperCategory(name: "Household Essentials", categories: householdEssentials),
];
