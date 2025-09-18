import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class DecorWidget extends StatelessWidget {
  const DecorWidget({super.key});

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
              row: 1,
            ),
          ),

          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Smart accessories for you",
            row: 2,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Power up anytime, anywhere",
            row: 2,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "For a productive work space",
            row: 2,
          ),
        ],
      ),
    );
  }
}

