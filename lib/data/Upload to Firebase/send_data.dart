// ignore_for_file: unused_import, dead_code

import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Beauty%20&%20Personal%20Care/beauty_and_personal_care.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/grocery_and_kitchen.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Household%20&%20Essentials/household_and_essentials.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/Sweets%20&%20Chocolates/Products/syrups.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Snacks%20&%20Drinks/snacks_and_drinks.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/All/all.dart';
import 'package:blinkit_clone/data/models/category.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';
import 'package:blinkit_clone/data/models/super_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SendData {
  static final _firestore = FirebaseFirestore.instance;

  static void sendData({required List<SuperCategory> superCategories}) async {
    List<Map<String, dynamic>> superCategoryMaps = List.generate(
      superCategories.length,
      (index) {
        return superCategories[index].toMap();
      },
    );

    final docRef = _firestore.collection("Super Categories").doc("Kids");
    final snap = await docRef.get();
    for (int i = 0; i < superCategoryMaps.length; i++) {
      if (!snap.exists) {
        docRef.set({
          "superCategoryList": [superCategoryMaps[i]["superCategoryName"]],
        });
      } else {
        docRef.update({
          "superCategoryList": FieldValue.arrayUnion([
            superCategoryMaps[i]["superCategoryName"],
          ]),
        });
      }
      sendCategories(
        docRef: docRef,
        superCategoryName: superCategoryMaps[i]["superCategoryName"],
        categories: superCategoryMaps[i]["categories"],
      );
    }
  }

  static void sendCategories({
    required DocumentReference docRef,
    required String superCategoryName,
    required List<Category> categories,
  }) async {
    List<Map<String, dynamic>> categoryMaps = List.generate(categories.length, (
      index,
    ) {
      return categories[index].toMap();
    });
    final categoryCollectionRef = docRef.collection(superCategoryName);

    for (int i = 0; i < categoryMaps.length; i++) {
      final categoryDocRef = categoryCollectionRef.doc(
        categoryMaps[i]["categoryName"],
      );
      categoryDocRef.set({
        "categoryName": categoryMaps[i]["categoryName"],
        "categoryImageUrl": categoryMaps[i]["categoryImageUrl"],
      });
      sendSubCategories(
        categoryDocref: categoryDocRef,
        subcategories: categoryMaps[i]["subcategoryList"],
      );
    }
  }

  static void sendSubCategories({
    required DocumentReference categoryDocref,
    required List<SubCategory> subcategories,
  }) async {
    List<Map<String, dynamic>> subCategoryMaps = List.generate(
      subcategories.length,
      (index) {
        return subcategories[index].toMap();
      },
    );

    final subcategoryCollectionRef = categoryDocref.collection(
      "Sub Categories",
    );

    for (int i = 0; i < subCategoryMaps.length; i++) {
      final subcategoryDocRef = subcategoryCollectionRef.doc(
        subCategoryMaps[i]["subcategoryName"],
      );
      subcategoryDocRef.set({
        "subcategoryName": subCategoryMaps[i]["subcategoryName"],
        "subcategoryImageUrl": subCategoryMaps[i]["subcategoryImageUrl"],
      });
      sendProducts(
        subcategoryDocRef: subcategoryDocRef,
        productList: subCategoryMaps[i]["productList"],
      );
    }
  }

  static void sendProducts({
    required DocumentReference subcategoryDocRef,
    required List<Product> productList,
  }) async {
    List<Map<String, dynamic>> productMaps = List.generate(productList.length, (
      index,
    ) {
      return productList[index].toMap();
    });

    final productDocRef = subcategoryDocRef
        .collection("Products")
        .doc("productList");
    if (productList.isNotEmpty) {
      productDocRef.set({
        "productList": [
          {
            "name": productMaps[0]["name"],
            "weight": productMaps[0]["weight"],
            "price": productMaps[0]["price"],
            "rating": productMaps[0]["rating"],
            "ratingCount": productMaps[0]["ratingCount"],
            "imageUrl": productMaps[0]["imageUrl"],
          },
        ],
      });

      for (int i = 1; i < productMaps.length; i++) {
        productDocRef.update({
          "productList": FieldValue.arrayUnion([
            {
              "name": productMaps[i]["name"],
              "weight": productMaps[i]["weight"],
              "price": productMaps[i]["price"],
              "rating": productMaps[i]["rating"],
              "ratingCount": productMaps[i]["ratingCount"],
              "imageUrl": productMaps[i]["imageUrl"],
            },
          ]),
        });
      }
    }
  }

  static void manualSendData() async {

    final supercatref = _firestore.collection("Super Categories").doc("All");
    for (int i = 0; i < all.length; i++) {
      final supercatcollref = supercatref.collection(all[i].name);
      for (int j = 0; j < all[i].categories.length; j++) {
        final catdocref = supercatcollref.doc(
          all[i].categories[j].categoryName,
        );
        final subcatdocref = catdocref
            .collection("Sub Categories")
            .doc("Sub Category List");
        for (int k = 0; k < all[i].categories[j].subcategoryList.length; k++) {
          final snap = await subcatdocref.get();
          if (!snap.exists) {
            subcatdocref.set({
              "subCategoryList": [
                all[i].categories[j].subcategoryList[k].subcategoryName,
              ],
            });
          } else {
            subcatdocref.update({
              "subCategoryList": FieldValue.arrayUnion([
                all[i].categories[j].subcategoryList[k].subcategoryName,
              ]),
            });
          }
        }
      }
    }
    return;

    // _firestore
    //     //Super categories collection(App categories)
    //     .collection("Super Categories")
    //     //Next Document
    //     .doc("Beauty")
    //     //next collection (super categories)
    //     .collection("Snacks & Drinks")
    //     //next document (categories)
    //     .doc("Sweets & Chocolates")
    //     //sub categories collection
    //     .collection("Sub Categories")
    //     //sub categories document
    //     .doc("Syrups")
    //     //Product collection
    //     .collection("Products")
    //     //productList document
    //     .doc("productList")
    //     //productList Array of Map
    //     .update({"productList": syrupsList});
  }
}
