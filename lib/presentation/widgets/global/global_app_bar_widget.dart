
import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_address_change_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_appbar_column_text_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_wallet_profile_row_widget.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
SliverAppBar GlobalAppBarWidget({
  required String topText,
}) {
  return SliverAppBar(
    title: AppBarColumnTextWidget(topText: topText),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 5, right: 15),
        child: GlobalWalletProfileRowWidget(),
      ),
    ],
    bottom: PreferredSize(
      preferredSize: Size.square(13),
      child: GlobalAddressChangeWidget(),
    ),

    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [homepagegradientfirstcolor, homepagegradientsecondcolor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
  );
}
