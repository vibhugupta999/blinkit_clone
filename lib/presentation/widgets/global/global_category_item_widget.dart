// ignore_for_file: use_build_context_synchronously

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/category.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/home%20bloc/home_bloc.dart';
import 'package:blinkit_clone/presentation/pages/sub_category_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCategoryItemWidget extends StatefulWidget {
  const GlobalCategoryItemWidget({
    super.key,
    required this.category,
    required this.tabtitle,
    required this.homeBloc,
  });
  final String tabtitle;
  final Category category;
  final HomeBloc homeBloc;

  @override
  State<GlobalCategoryItemWidget> createState() =>
      _GlobalCategoryItemWidgetState();
}

class _GlobalCategoryItemWidgetState extends State<GlobalCategoryItemWidget> {
  late List<List<DetailPageBloc>> detailPageBlocs;
  @override
  void initState() {
    detailPageBlocs = List.generate(widget.category.subcategoryList.length, (
      index,
    ) {
      return List.generate(
        widget.category.subcategoryList[index].productList.length,
        (_) {
          return DetailPageBloc();
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        subCategorySelectedIndex = 0;
        widget.homeBloc.add(HomeCategoryClickedEvent());
        await Future.delayed(Duration(milliseconds: 75));
        cartBloc.add(RefreshCartEvent());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubCategoryDetailPage(
              category: widget.category,
              detailPageBlocs: detailPageBlocs,
            ),
          ),
        );
      },
      enableFeedback: true,
      splashColor: Colors.black,
      splashFactory: NoSplash.splashFactory,
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: widget.homeBloc,
        builder: (context, state) {
          return AnimatedScale(
            scale: state.runtimeType == HomeInitial
                ? 1
                : (state as HomeCategoryClickedState).scale,
            duration: Duration(milliseconds: 75),
            child: SizedBox(
              width: screenWidth * (0.25 * 8 / 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenWidth * 0.25,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: switch (widget.tabtitle) {
                        "Home" || "Kids" => itemwidgetbackground,
                        "Electronics" ||
                        "Premium" => electorniccategorybackground,
                        "Beauty" => beautycategorybackground,
                        _ => Colors.red,
                      },
                    ),
                    child: Center(
                      child: Container(
                        width: screenWidth * (0.16 * 8 / 9),
                        height: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, 18),
                              color: Colors.black45,
                              blurRadius: 30,
                              spreadRadius: -24,
                            ),
                          ],
                        ),
                        child: Image(
                          image: NetworkImage(widget.category.categoryImageUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "${widget.category.categoryName}\n",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: font,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textHeightBehavior: TextHeightBehavior(
                      leadingDistribution: TextLeadingDistribution.even,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
