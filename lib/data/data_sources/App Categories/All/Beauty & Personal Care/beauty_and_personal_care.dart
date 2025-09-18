import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Baby%20Care/baby_care.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Bath%20&%20Body/bath_and_body.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Beauty%20&%20Cosmetics/beauty_and_cosmetics.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Feminine%20Hygiene/feminine_hygiene.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Hair/hair.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Health%20&%20Pharma/health_and_pharma.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Sexual%20Wellness/sexual_wellness.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/Skin%20&%20Face/skin_and_face.dart';
import 'package:blinkit_clone/data/models/category.dart';

final List<Category> beautyAndPersonalCAre = [
  Category(
    categoryName: "Bath & Body",
    categoryImageUrl:
        "https://cdn.shopclues.com/images/thumbnails/44688/320/320/playboyaxecombo14635722591474822661.jpg",
    subcategoryList: bathAndBody,
  ),
  Category(
    categoryName: "Hair",
    categoryImageUrl: "https://m.media-amazon.com/images/I/51yZe0AVn9L.jpg",
    subcategoryList: hair,
  ),
  Category(
    categoryName: "Skin & Face",
    categoryImageUrl:
        "https://vasustore.com/cdn/shop/products/Combo-Kit-_R_G-Cream_-Face-Wash_1100-X-1100.jpg?v=1660304603",
    subcategoryList: skinAndFace,
  ),
  Category(
    categoryName: "Beauty & Cosmetics",
    categoryImageUrl:
        "https://5.imimg.com/data5/SELLER/Default/2023/7/322720637/CC/UV/XQ/160780277/png-transparent-makeup-cosmetics-makeup-cosmetics-lipstick-brush.png",
    subcategoryList: beautyAndCosmetics,
  ),
  Category(
    categoryName: "Feminine Hygiene",
    categoryImageUrl:
        "https://cdn01.pharmeasy.in/dam/products_otc/A30661/stayfree-advanced-all-nights-ultra-soft-xxl-28-pads-2-1724918984.jpg",
    subcategoryList: feminineHygiene,
  ),
  Category(
    categoryName: "Baby Care",
    categoryImageUrl:
        "https://images-na.ssl-images-amazon.com/images/I/51mXBsbz20L.jpg",
    subcategoryList: babyCare,
  ),
  Category(
    categoryName: "Health & Pharma",
    categoryImageUrl:
        "https://bodycorescience.com/wp-content/uploads/2023/05/SIHGNATURE-WHEY-PROTEINBCS-OMEGA.webp",
    subcategoryList: healthAndPharma,
  ),
  Category(
    categoryName: "Sexual Wellness",
    categoryImageUrl:
        "https://www.healthurwealth.com/UploadFiles/817534371.jpg",
    subcategoryList: sexualWellnes,
  ),
];
