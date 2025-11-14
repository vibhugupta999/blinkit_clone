import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/data/models/super_category.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/login%20bloc/login_page_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/navigation%20bloc/navigation_bloc.dart';
import 'package:blinkit_clone/presentation/pages/categories.dart';
import 'package:blinkit_clone/presentation/pages/home.dart';
import 'package:blinkit_clone/presentation/pages/order_again.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Widget> screens = [
  Home(),
  OrderAgainPage(),
  CategoriesPage(),
  Home(),
];

int index = 0;

List<Product> cartItems = [];

List<int> cartItemsQuantity = [];

List<DetailPageBloc> cartItemBlocs = [];

int subCategorySelectedIndex = 0;

final CartBloc cartBloc = CartBloc();

int get handlingFee {
  return itemsTotal == 0 ? 0 : 2;
}

int get qty {
  int qty = 0;
  for (int value in cartItemsQuantity) {
    qty += value;
  }
  return qty;
}

int get itemsTotal {
  int total = 0;
  for (int i = 0; i < cartItems.length; i++) {
    total += cartItems[i].price * cartItemsQuantity[i];
  }
  return total;
}

int get getDeliveryFee {
  int deliveryFee;
  if (itemsTotal > 199 || itemsTotal <= 0) {
    deliveryFee = 0;
  } else {
    deliveryFee = 25;
  }
  return deliveryFee;
}

int get smallCartCharge {
  if (itemsTotal <= 99 && itemsTotal > 0) {
    return 20;
  } else {
    return 0;
  }
}

int get grandTotal {
  return itemsTotal + getDeliveryFee + handlingFee + smallCartCharge;
}

List<SuperCategory> superList = [];

User? user;

String phone = "";

String phoneNumber = "";

final NavigationBloc navigationBloc = NavigationBloc();

TextEditingController buildingNamecontroller = TextEditingController();
TextEditingController floorcontroller = TextEditingController();
TextEditingController areaLocalitycontroller = TextEditingController();
TextEditingController landmarkcontroller = TextEditingController();
TextEditingController namecontroller = TextEditingController();
TextEditingController phonecontroller = TextEditingController();
TextEditingController pinCodecontroller = TextEditingController();

final Map<String, IconData> tagIconMap = {
  "Home": FontAwesomeIcons.house,
  "Work": Icons.location_city_rounded,
  "Others": Icons.location_on_rounded,
};

int tagSelectedIndex = 3;

final AddressBloc addressBloc = AddressBloc();

void clearControllers() {
  buildingNamecontroller.clear();
  floorcontroller.clear();
  areaLocalitycontroller.clear();
  landmarkcontroller.clear();
  namecontroller.clear();
  phonecontroller.clear();
  pinCodecontroller.clear();
}

final AddressBloc selectAddressBloc = AddressBloc();

bool continueButtonEnabled = false;

final LoginPageBloc continuecheckbloc = LoginPageBloc();