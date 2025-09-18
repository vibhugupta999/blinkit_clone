import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/pages/search_page.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_app_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_category_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_search_bar_widget.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          GlobalAppBarWidget( topText: "Blinkit In"),
          SliverAppBar(
            flexibleSpace: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    homepagegradientsecondcolor,
                    tabbarmiddlegradient,
                    tabbarbackground,
                    tabbarbackground,
                  ],
                  stops: [0, 0.4, 0.7, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  GlobalSearchBarWidget(enabled: true),
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SearchPage()),
                        );
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(),
                    ),
                  ),
                ],
              ),
            ),
            toolbarHeight: 20,
            floating: true,
            pinned: true,
            forceElevated: true,
            scrolledUnderElevation: 4,
            shadowColor: Colors.black,
          ),
        ],

        body: SingleChildScrollView(
          child: Column(
            children: [
              GlobalCategoryWidget(
                superCategory: superList[0],
                row: 2,
                tabtitle: 'Home',
              ),
              GlobalCategoryWidget(
                superCategory: superList[1],
                row: 2,
                tabtitle: 'Home',
              ),
              GlobalCategoryWidget(
                superCategory: superList[2],
                row: 2,
                tabtitle: 'Home',
              ),
              GlobalCategoryWidget(
                superCategory: superList[3],
                row: 1,
                tabtitle: 'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
