import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/category.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/pages/search_page.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_packed_product_item_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_sub_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_view_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class SubCategoryDetailPage extends StatefulWidget {
  const SubCategoryDetailPage({
    super.key,
    required this.category,
    required this.detailPageBlocs,
  });
  final Category category;
  final List<List<DetailPageBloc>> detailPageBlocs;

  @override
  State<SubCategoryDetailPage> createState() => _SubCategoryDetailPageState();
}

class _SubCategoryDetailPageState extends State<SubCategoryDetailPage> {
  @override
  void initState() {
    cartBloc.add(RefreshCartEvent());
    super.initState();
  }

  final DetailPageBloc cartDetailPageBloc = DetailPageBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.category.categoryName,
          style: TextStyle(
            fontFamily: font,
            fontWeight: FontWeight.w100,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            icon: Icon(FontAwesome.magnifying_glass_solid),
          ),
        ],
      ),

      body: BlocBuilder<DetailPageBloc, DetailPageState>(
        bloc: cartDetailPageBloc,
        builder: (context, state) {
          return Row(
            children: [
              Container(
                width: screenWidth * 0.185,
                height: screenHeight,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: widget.category.subcategoryList.length,
                  itemBuilder: (context, index) {
                    return GlobalSubCategoryWidget(
                      index: index,
                      detailPageBloc: cartDetailPageBloc,
                      subCategory: widget.category.subcategoryList[index],
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: screenWidth * 0.815,
                  height: screenHeight,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.525,
                    ),
                    itemCount: widget
                        .category
                        .subcategoryList[subCategorySelectedIndex]
                        .productList
                        .length,
                    itemBuilder: (context, index) {
                      return GlobalPackedProductItemWidget(
                        detailPageBloc: widget
                            .detailPageBlocs[subCategorySelectedIndex][index],
                        product: widget
                            .category
                            .subcategoryList[subCategorySelectedIndex]
                            .productList[index],
                        length: 2,
                        isCartEmpty: true,
                        onItemTap: () {},
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: BlocBuilder<CartBloc, CartState>(
        bloc: cartBloc,
        builder: (context, state) {
          if (cartItems.isNotEmpty) {
            return GlobalViewCartWidget();
          } else {
            return SizedBox();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
    );
  }
}
