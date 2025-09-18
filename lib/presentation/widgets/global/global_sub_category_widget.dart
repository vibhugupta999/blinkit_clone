import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/sub_category.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:flutter/material.dart';

class GlobalSubCategoryWidget extends StatelessWidget {
  final int index;
  final SubCategory subCategory;
  final DetailPageBloc detailPageBloc;
  const GlobalSubCategoryWidget({
    super.key,
    required this.index,
    required this.subCategory,
    required this.detailPageBloc,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        detailPageBloc.add(SubCategoryClickedEvent(index: index));
      },
      splashFactory: NoSplash.splashFactory,
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.166,
            constraints: BoxConstraints(
              minHeight: screenWidth * 0.213,
              maxHeight: screenWidth * 0.25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: index == subCategorySelectedIndex
                          ? selectedsubcategoryitembackground
                          : productitembackgroundcolor,
                    ),
                    Positioned(
                      top: 30,
                      child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image(
                          image: NetworkImage(subCategory.subcategoryImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.16,
                      height: screenWidth * 0.16,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 8,
                          color: Colors.white,
                          strokeAlign: 0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
                Text(
                  subCategory.subcategoryName,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: index == subCategorySelectedIndex
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontFamily: font,
                    fontSize: 10,
                    color: index == subCategorySelectedIndex
                        ? darkblack
                        : unselectedsubcategoryname,
                  ),
                ),
              ],
            ),
          ),

          // Condition for selected sub category
          if (index == subCategorySelectedIndex) ...[
            Container(
              width: screenWidth * 0.185 * 0.055,
              height: screenWidth * 0.22,
              decoration: BoxDecoration(
                color: selectedsubcategoryindicator,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(10, 20),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
