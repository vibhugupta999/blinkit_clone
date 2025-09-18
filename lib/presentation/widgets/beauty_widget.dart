import 'package:blinkit_clone/data/data_sources/App%20Categories/Beauty/beauty.dart';
import 'package:blinkit_clone/presentation/bloc/home%20bloc/home_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class BeautyWidget extends StatelessWidget {
  final NetworkImage networkImage;
   BeautyWidget({super.key, required this.networkImage});
  final HomeBloc homeBloc = HomeBloc();

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
              row: 1,
            ),
          ),
          GlobalCategoryWidget(superCategory: beauty[0], row: 5, tabtitle: 'Beauty',),
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
            row: 1,
          ),
          GlobalSuggestedItemWidget(
            url:
                "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
            title: "Protect, hydrate & soothe",
            row: 1,
          ),
        ],
      ),
    );
  }
}
