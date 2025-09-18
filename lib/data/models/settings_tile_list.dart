import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsTileModel {
  final IconData leadingIcon;
  final String title;

  SettingsTileModel({required this.leadingIcon, required this.title});
}

List<SettingsTileModel> yourInformation = [
  SettingsTileModel(
    leadingIcon: Icons.shopping_bag_outlined,
    title: "Your orders",
  ),
  SettingsTileModel(
    leadingIcon: Icons.favorite_outline_rounded,
    title: "Your wishlist",
  ),
  SettingsTileModel(
    leadingIcon: Icons.soup_kitchen_outlined,
    title: "Bookmarked recipes",
  ),
  SettingsTileModel(leadingIcon: Icons.post_add_rounded, title: "Address book"),
  SettingsTileModel(
    leadingIcon: Icons.description_outlined,
    title: "GST details",
  ),
  SettingsTileModel(
    leadingIcon: Icons.card_giftcard_rounded,
    title: "E-Gift Cards",
  ),
  SettingsTileModel(
    leadingIcon: Icons.description_outlined,
    title: "Your Prescriptions",
  ),
];

List<SettingsTileModel> feedingIndia = [
  SettingsTileModel(
    leadingIcon: FontAwesomeIcons.facebookF,
    title: "Your impact",
  ),
  SettingsTileModel(
    leadingIcon: Icons.library_books_outlined,
    title: "Get Feeding India reciept",
  ),
];

List<SettingsTileModel> paymentsAndCoupins = [
  SettingsTileModel(leadingIcon: Icons.wallet, title: "Wallet"),
  SettingsTileModel(leadingIcon: Icons.wallet, title: "Blinkit Money"),
  SettingsTileModel(
    leadingIcon: Icons.payment_rounded,
    title: "Payment settings",
  ),
  SettingsTileModel(
    leadingIcon: Icons.discount_outlined,
    title: "Your collected rewards",
  ),
];

List<SettingsTileModel> otherInformation = [
  SettingsTileModel(
    leadingIcon: FontAwesomeIcons.shareFromSquare,
    title: "Share the app",
  ),
  SettingsTileModel(leadingIcon: Icons.info_outline_rounded, title: "About us"),
  SettingsTileModel(
    leadingIcon: Icons.lock_outline_rounded,
    title: "Account privacy",
  ),
  SettingsTileModel(
    leadingIcon: Icons.notifications_outlined,
    title: "Notifications preferences",
  ),
  SettingsTileModel(leadingIcon: Icons.logout_rounded, title: "Log out"),
];
