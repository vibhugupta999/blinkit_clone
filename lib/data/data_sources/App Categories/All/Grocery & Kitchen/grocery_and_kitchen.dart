import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Atta%20Rice%20&%20Dal/atta_rice_and_dal.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Bakery%20&%20Biscuits/bakery_and_biscuits.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dairy%20Bread%20&%20Eggs/dairy_bread_and_eggs.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Dry%20Fruits%20&%20Cereals/dry_fruits_and_cereals.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Oil%20Ghee%20&%20Masala/oil_ghee_and_masala.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/Vegetables%20&%20Fruits/vegetables_and_fruits.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> groceryAndKitchen = [
  Category(
    categoryName: "Vegetables & Fruits",
    categoryImageUrl:
        "https://d1sl07a7h3d3fr.cloudfront.net/admin/category/05cc9d49-1feb-4abc-8868-6fcf91efb2f6-FreshFruits.jpg",
    subcategoryList: vegetablesAndFruits,
  ),
  Category(
    categoryName: "Atta, Rice & Dal",
    categoryImageUrl:
        "https://services.kpnfresh.com/media/v1/categories/images/2ac4ebdf-8cee-4e21-8ac8-0fb7993eac91/rice-atta-dal.webp?c_type=C1",
    subcategoryList: attaRiceAndDal,
  ),
  Category(
    categoryName: "Oil, Ghee & Masala",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/71qQ1o-eCiL._UF1000,1000_QL80_.jpg",
    subcategoryList: oilGheeAndMasala,
  ),
  Category(
    categoryName: "Dairy, Bread & Eggs",
    categoryImageUrl:
        "https://storage.googleapis.com/shy-pub/340791/Screenshot2024-04-26184407-1714140472939.png",
    subcategoryList: dairyBreadAndEggs,
  ),
  Category(
    categoryName: "Bakery & Buscuits",
    categoryImageUrl:
        "https://img.cdnx.in/219726/1687014600986_8881680586448023.jpeg?width=260&height=260&format=webp",
    subcategoryList: bakeryAndBiscuits,
  ),
  Category(
    categoryName: "Dry Fruits & Cereals",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/71aqp95qP9L._UF1000,1000_QL80_.jpg",
    subcategoryList: dryFruitsAndCereals,
  ),
  Category(
    categoryName: "Chicken, Meat & Fish",
    categoryImageUrl:
        "https://www.shutterstock.com/image-photo/assortment-meat-seafood-beef-chicken-260nw-1410046670.jpg",
    subcategoryList: [],
  ),
  Category(
    categoryName: "KitchenWare & Appliances",
    categoryImageUrl:
        "https://image.made-in-china.com/202f0j00DbyialZJEdfE/Kitchen-New-Design-Bottle-Food-Processor-Juicer-and-Mixer-Commercial-Home-Used-Juicer-Extractor.webp",
    subcategoryList: [],
  ),
];
