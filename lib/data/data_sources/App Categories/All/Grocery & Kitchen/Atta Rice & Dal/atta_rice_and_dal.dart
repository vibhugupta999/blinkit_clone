import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/atta.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/besan_sooji_and_maida.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/dal.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/millet_and_other_flours.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/organic.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/rajma_chhole_and_others.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/Products/rice.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';

final List<SubCategory> attaRiceAndDal = [
  SubCategory(
    subcategoryName: "Atta",
    subcategoryImageUrl: "",
    productList: atta,
  ),
  SubCategory(
    subcategoryName: "Rice",
    subcategoryImageUrl: "",
    productList: rice,
  ),
  SubCategory(
    subcategoryName: "Dal",
    subcategoryImageUrl: "",
    productList: dal,
  ),
  SubCategory(
    subcategoryName: "Besan, Sooji & Maida",
    subcategoryImageUrl: "",
    productList: besanSoojiAndMaida,
  ),
  SubCategory(
    subcategoryName: "Rajma, Chhole & Others",
    subcategoryImageUrl: "",
    productList: rajmaChholeAndOthers,
  ),
  SubCategory(
    subcategoryName: "Millet & Other Flours",
    subcategoryImageUrl: "",
    productList: milletsAndOtherFlours,
  ),
  SubCategory(
    subcategoryName: "Organic",
    subcategoryImageUrl: "",
    productList: organic,
  ),
];
