import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  static final _firestore = FirebaseFirestore.instance;

  static Future<void> getCartItems() async {
    final snap = await _firestore.collection("Users").doc(user?.uid).get();
    if (!snap.exists || snap.data() == null) {
      cartItems = [];
      cartItemsQuantity = [];
      return;
    }
    List<dynamic> cart = snap.data()?["cartItems"] ?? [];
    List<dynamic> quantity = snap.data()?["cartItemsQuantity"] ?? [];
    dynamic tempphone = snap.data()?["phoneNumber"] ?? "";
    phoneNumber = tempphone;
    cartItems = cart
        .map((e) => Product.fromMap(Map<String, dynamic>.from(e)))
        .toList();
    cartItemsQuantity = quantity.cast();
    cartItemBlocs = List.generate(cartItems.length, (_) => DetailPageBloc());
  }

  static Future<void> setCartItems({required String? userId}) async {
    if (userId == null) {
      return;
    }
    final docRef = _firestore.collection("Users").doc(userId);
    final snap = await docRef.get();
    List<Map<String, dynamic>> cart = cartItems
        .map((e) => Map<String, dynamic>.from(e.toMap()))
        .toList();
    List<dynamic> quantity = cartItemsQuantity.map((e) => e).toList();
    if (!snap.exists) {
      docRef.set({"cartItems": cart, "cartItemsQuantity": quantity});
    } else {
      docRef.update({"cartItems": cart, "cartItemsQuantity": quantity});
    }
  }

  static Future<void> setUser() async {
    if (user == null) {
      return;
    }
    final docRef = _firestore.collection("Users").doc(user?.uid);
    final snap = await docRef.get();

    if (!snap.exists) {
      docRef.set({
        "Username": user?.displayName,
        "email": user?.email,
        "phoneNumber": phone,
      });
    }
    phoneNumber = phone;
  }

  static Future<void> setAddresses() async {
    if (user == null) {
      return;
    }

    final docRef = _firestore.collection("Users").doc(user?.uid);
    final snap = await docRef.get();
    List<Map<String, dynamic>> addresses = userAddresses
        .map((e) => Map<String, dynamic>.from(e.toMap()))
        .toList();
    if (!snap.exists) {
      docRef.set({"Addresses": addresses});
    } else {
      docRef.update({"Addresses": addresses});
    }
  }

  static Future<void> getAddresses() async {
    final snap = await _firestore.collection("Users").doc(user?.uid).get();
    if (!snap.exists) {
      userAddresses = [];
    }
    List<dynamic> addresses = snap.data()?["Addresses"] ?? [];
    userAddresses = addresses
        .map((e) => UserAddress.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }
}
