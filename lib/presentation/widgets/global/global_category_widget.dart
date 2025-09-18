// ignore_for_file: use_build_context_synchronously

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/models/super_category.dart';
import 'package:blinkit_clone/presentation/bloc/home%20bloc/home_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_item_widget.dart';
import 'package:flutter/material.dart';

class GlobalCategoryWidget extends StatelessWidget {
  const GlobalCategoryWidget({
    super.key,

    required this.row,
    required this.tabtitle,
    required this.superCategory,
  });

  final int row;
  final String tabtitle;
  final SuperCategory superCategory;

  @override
  Widget build(BuildContext context) {
    int size = tabtitle == "Kids" ? 3 * row : 4 * row;
    final List<HomeBloc> homeBlocs = List.generate(size, (_) {
      return HomeBloc();
    });
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            superCategory.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: font,
              height: 3,
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.only(bottom: 25),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: screenWidth * 0.25 / 18,
              crossAxisCount: tabtitle == "Kids" ? 3 : 4,
              childAspectRatio: tabtitle == "Kids" ? 0.75 : 0.6,
              mainAxisSpacing: screenWidth * 0.25 / 16,
            ),
            itemCount: tabtitle == "Kids" ? 3 * row : 4 * row,
            itemBuilder: (context, index) {
              return GlobalCategoryItemWidget(
                homeBloc: homeBlocs[index],
                category: superCategory.categories[index],
                tabtitle: tabtitle,
              );
            },
          ),
        ],
      ),
    );
  }
}
