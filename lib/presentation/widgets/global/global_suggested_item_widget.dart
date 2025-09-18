import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_packed_product_item_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_see_all_button.dart';
import 'package:flutter/material.dart';

class GlobalSuggestedItemWidget extends StatelessWidget {
  final String url;
  final String title;
  final int row;
  const GlobalSuggestedItemWidget({
    super.key,
    required this.url,
    required this.title,
    required this.row,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,fontFamily: font),
          ),
        ),
        GridView.builder(
          padding: EdgeInsets.only(bottom: 20),
          itemCount: 3 * row,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.485,
          ),
          itemBuilder: (context, index) {
            return GlobalPackedProductItemWidget(
              product: Product(
                name: "",
                weight: "",
                price: 0,
                rating: 0,
                ratingCount: 0,
                imageUrl: "",
              ),
              
              onItemTap: () {},
              
              isCartEmpty: true,
              length: 3, detailPageBloc: DetailPageBloc(), 
            );
          },
        ),

        GlobalSeeAllButton(onPressed: () {}, isCategory: false),
      ],
    );
  }
}
