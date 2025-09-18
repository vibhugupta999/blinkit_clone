import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Diapering%20made%20easy/Diapers/diapers.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Diapering%20made%20easy/Rash%20Cream%20&%20Powder/rash_cream_and_powder.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/Diapering%20made%20easy/Wipes%20&%20Dry%20Sheets/wipes_and_dry_sheets.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> diaperingMadeEasy = [
  Category(
    categoryName: "Diaper",
    categoryImageUrl:
        "https://rukminim2.flixcart.com/image/704/844/xif0q/diaper/d/w/g/m-new-diapers-pants-medium-76-count-76-pampers-original-imafymarffyqgffa.jpeg?q=20&crop=false",
    subcategoryList: diapers,
  ),
  Category(
    categoryName: "Wipes & Dry Sheets",
    categoryImageUrl:
        "https://images.ctfassets.net/aub2fvcyp2t8/6g8ourBTbLay94A1yPTdCT/1c98cbdede32f1176e65409c1c7026e1/72s_3-en-in?fm=webp&w=3840",
    subcategoryList: wipesAndDrySheets,
  ),
  Category(
    categoryName: "Rash Cream & Powder",
    categoryImageUrl: "https://m.media-amazon.com/images/I/716bpTCoBvL.jpg",
    subcategoryList: rashCreamPowder,
  ),
];
