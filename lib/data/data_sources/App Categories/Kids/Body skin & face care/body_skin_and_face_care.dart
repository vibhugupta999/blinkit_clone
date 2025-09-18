import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Body%20skin%20&%20face%20care/Lotions%20Creams%20&%20More/lotions_creams_and_more.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Body%20skin%20&%20face%20care/Powders%20&%20Oils/powder_and_oils.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Body%20skin%20&%20face%20care/Soap%20Wash%20&%20Shampoo/soap_wash_and_shampoo.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> bodySkinAndFaceCare = [
  Category(
    categoryName: "Lotions, Creams & More",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/51XSDO+x0AL._UF894,1000_QL80_.jpg",
    subcategoryList: lotionsCreamsAndMore,
  ),
  Category(
    categoryName: "Soap, Wash & Shampoo",
    categoryImageUrl:
        "https://m.media-amazon.com/images/I/71ZIkq-rmYL._UF1000,1000_QL80_.jpg",
    subcategoryList: soapWashAndShampoo,
  ),
  Category(
    categoryName: "Powder & Oils",
    categoryImageUrl: "https://m.media-amazon.com/images/I/71hyqSwBL+L._UF894,1000_QL80_.jpg",
    subcategoryList: powderAndOils,
  ),
];
