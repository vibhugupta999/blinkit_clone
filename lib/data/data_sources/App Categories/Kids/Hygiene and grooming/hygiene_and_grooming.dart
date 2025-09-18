import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Hygiene%20and%20grooming/Grooming%20essentials/grooming_essentials.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Hygiene%20and%20grooming/Liquid%20Detergents%20and%20Cleansers/liquid_detergents_and_cleansers.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Hygiene%20and%20grooming/Oral%20Care/oral_care.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> hygieneAndGrooming = [
  Category(
    categoryName: "Oral Care",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/61ppU6+k6BL._UF894,1000_QL80_.jpg",
    subcategoryList: oralCare,
  ),
  Category(
    categoryName: "Liquid Detergents & Cleansers",
    categoryImageUrl:
        "https://mothersparsh.com/cdn/shop/files/Plant-Powered-baby-cleanser-for-Clean-baby-bottle-Clean-baby-toys-pacifiers-500ml-refill-pack-of-2-1.webp?v=1712060248&width=533",
    subcategoryList: liquidDetergentsAndCleansers,
  ),
  Category(
    categoryName: "Grooming Essentials",
    categoryImageUrl: "https://images-static.nykaa.com/media/catalog/product/tr:h-800,w-800,cm-pad_resize/5/f/5fec660MAJAB00000226_01.jpg",
    subcategoryList: groomingEssentials,
  ),
];
