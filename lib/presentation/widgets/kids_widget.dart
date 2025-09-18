import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/kids.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class KidsWidget extends StatelessWidget {
  const KidsWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: GlobalSuggestedItemWidget(
              url:
                  "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
              title: "Top Deals",
              row: 2,
            ),
          ),
          GlobalCategoryWidget(superCategory: kids[0], row: 1, tabtitle: 'Kids'),
          GlobalCategoryWidget(superCategory: kids[1], row: 1, tabtitle: 'Kids'),
          GlobalCategoryWidget(superCategory: kids[2], row: 1, tabtitle: 'Kids'),
          GlobalCategoryWidget(superCategory: kids[3], row: 1, tabtitle: 'Kids'),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Smart accessories for you",
            row: 1,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Power up anytime, anywhere",
            row: 1,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "For a productive work space",
            row: 1,
          ),
        ],
      ),
    );
  }
}
