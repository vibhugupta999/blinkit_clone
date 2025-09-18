import 'package:blinkit_clone/data/models/category.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';
import 'package:blinkit_clone/data/models/super_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RetrieveData {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<SuperCategory>> getSuperCategories({
    required String docName,
  }) async {
    final List<SuperCategory> superCategoryList = [];
    final docRef = _firestore.collection("Super Categories").doc(docName);
    final tempsnap = await docRef.get();
    List<dynamic> supercats = tempsnap.data()?["superCategoryList"] ?? "";
    for (int i = 0; i < supercats.length; i++) {
      List<Category> categories = await getCategories(
        categoryCollectionName: supercats[i],
        docRef: docRef,
      );
      superCategoryList.add(
        SuperCategory.fromMap({
          "superCategoryName": supercats[i],
          "categories": categories,
        }),
      );
    }
    return superCategoryList;
  }

  static Future<List<Category>> getCategories({
    required String categoryCollectionName,
    required DocumentReference docRef,
  }) async {
    final List<Category> categoryList = [];
    final collref = docRef.collection(categoryCollectionName);
    final catsnap = await collref.doc("Category List").get();
    final List<dynamic> catlist = catsnap.data()?["categoryList"] ?? [];

    for (int i = 0; i < catlist.length; i++) {
      List<SubCategory> subCategories = await getSubCategories(
        categoryDocName: catlist[i],
        catCollRef: collref,
      );
      final snap = await collref.doc(catlist[i]).get();
      final String catimageurl = snap.data()?["categoryImageUrl"] ?? "";
      categoryList.add(
        Category.fromMap({
          "categoryName": catlist[i],
          "categoryImageUrl": catimageurl,
          "subcategoryList": subCategories,
        }),
      );
    }
    return categoryList;
  }

  static Future<List<SubCategory>> getSubCategories({
    required String categoryDocName,
    required CollectionReference catCollRef,
  }) async {
    final List<SubCategory> subCategoryList = [];
    final subcatcollref = catCollRef
        .doc(categoryDocName)
        .collection("Sub Categories");
    final subcatsnap = await subcatcollref.doc("Sub Category List").get();
    final List<dynamic> subcatlist =
        subcatsnap.data()?["subCategoryList"] ?? [];
    for (int i = 0; i < subcatlist.length; i++) {
      List<Product> products = await getProducts(
        subCatName: subcatlist[i],
        subcatcollref: subcatcollref,
      );
      final snap = await subcatcollref.doc(subcatlist[i]).get();
      final String subcatimageurl = snap.data()?["subCategoryImageUrl"] ?? "";
      subCategoryList.add(
        SubCategory.fromMap({
          "subcategoryName": subcatlist[i],
          "subcategoryImageUrl": subcatimageurl,
          "productList": products,
        }),
      );
    }
    return subCategoryList;
  }

  static Future<List<Product>> getProducts({
    required String subCatName,
    required CollectionReference subcatcollref,
  }) async {
    final productsnap = await subcatcollref
        .doc(subCatName)
        .collection("Products")
        .doc("productList")
        .get();
    final List<dynamic> productMapList =
        productsnap.data()?["productList"] ?? [];
    final List<Product> products = productMapList
        .map((e) => Product.fromMap(Map<String, dynamic>.from(e)))
        .toList();
    return products;
  }
}
