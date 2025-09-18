import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/models/settings_tile_list.dart';
import 'package:blinkit_clone/presentation/widgets/settings%20widgets/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingCategoryTileWidget extends StatelessWidget {
  final String title;
  final List<SettingsTileModel> settingsTileList;
  const SettingCategoryTileWidget({
    super.key,
    required this.title,
    required this.settingsTileList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\t${title.toUpperCase()}",
            style: TextStyle(
              color: profilesubheading,
              fontFamily: font,
              letterSpacing: 0,
              height: 3,
            ),
            textAlign: TextAlign.start,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: settingsTileList.length,
            itemBuilder: (context, index) {
              return SettingsTile(
                title: settingsTileList[index].title,
                leadingIcon: settingsTileList[index].leadingIcon,
                trailingIcon: Icons.arrow_forward_ios_rounded,
              );
            },
          ),
        ],
      ),
    );
  }
}
