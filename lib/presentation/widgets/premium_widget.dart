import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class PremiumWidget extends StatelessWidget {
  const PremiumWidget({super.key, required this.networkImage});

  final NetworkImage networkImage;

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
              title: "Bestsellers",
              row: 2,
            ),
          ),
          GlobalCategoryWidget(
            superCategory: superList[3],
            row: 1,
            tabtitle: 'Premium',
          ),
          GlobalCategoryWidget(
            superCategory: superList[3],
            row: 1,
            tabtitle: 'Premium',
          ),
          GlobalCategoryWidget(
            superCategory: superList[3],
            row: 1,
            tabtitle: 'Premium',
          ),
          GlobalCategoryWidget(
            superCategory: superList[3],
            row: 1,
            tabtitle: 'Premium',
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Korean care for skin and hair",
            row: 1,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Science-backed skin & hair care",
            row: 2,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Protect, hydrate & soothe",
            row: 1,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Science-backed skin & hair care",
            row: 2,
          ),
        ],
      ),
    );
  }
}
