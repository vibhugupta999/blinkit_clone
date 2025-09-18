import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_see_all_button.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GlobalCategoryWidget(superCategory: superList[0], row: 2, tabtitle: 'Home'),
          GlobalCategoryWidget(superCategory: superList[1], row: 2, tabtitle: 'Home'),
          GlobalCategoryWidget(superCategory: superList[2], row: 2, tabtitle: 'Home'),
          GlobalCategoryWidget(superCategory: superList[3], row: 1, tabtitle: 'Home'),
          GlobalSeeAllButton(onPressed: () {}, isCategory: true),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Sweet Tooth",
            row: 1,
          ),

          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Cold Drinks & Juices",
            row: 2,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Instant & Frozen Food",
            row: 1,
          ),
        ],
      ),
    );
  }
}
