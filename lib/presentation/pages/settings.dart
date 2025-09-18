import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/settings_tile_list.dart';
import 'package:blinkit_clone/presentation/widgets/settings%20widgets/settings_category_tile_widget.dart';
import 'package:blinkit_clone/presentation/widgets/settings%20widgets/settings_page_initial_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(FontAwesome.arrow_left_long_solid, color: darkblack),
        ),
        title: Text(
          "Profile",
          style: TextStyle(fontFamily: font, fontSize: 15, color: darkblack),
        ),
        elevation: 3,
        shadowColor: Colors.black45,
        scrolledUnderElevation: 3,
        flexibleSpace: Container(color: Colors.white),
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Your account",
                style: TextStyle(
                  fontFamily: font,
                  fontSize: 22,
                  color: darkblack,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.phone_outlined, size: 15, color: darkblack),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      phoneNumber,
                      style: TextStyle(
                        fontFamily: font,
                        fontSize: 12,
                        color: lightblack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SettingsPageInitialRowWidget(
                          text: "Blinkit Money",
                          icon: FontAwesome.wallet_solid,
                        ),
                        SettingsPageInitialRowWidget(
                          icon: FontAwesome.message_solid,
                          text: "Support",
                        ),
                        SettingsPageInitialRowWidget(
                          icon: Icons.wallet,
                          text: "Payments",
                        ),
                      ],
                    ),
                    SettingCategoryTileWidget(
                      title: "your information",
                      settingsTileList: yourInformation,
                    ),
                    SettingCategoryTileWidget(
                      title: "Feeding India",
                      settingsTileList: feedingIndia,
                    ),
                    SettingCategoryTileWidget(
                      title: "Payments and coupons",
                      settingsTileList: paymentsAndCoupins,
                    ),
                    SettingCategoryTileWidget(
                      title: "Other Information",
                      settingsTileList: otherInformation,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

