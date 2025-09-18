import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/pages/search_page.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_app_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_search_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:flutter/material.dart';

class OrderAgainPage extends StatefulWidget {
  const OrderAgainPage({super.key});

  @override
  State<OrderAgainPage> createState() => _OrderAgainPageState();
}

class _OrderAgainPageState extends State<OrderAgainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
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
                            MaterialPageRoute(
                              builder: (context) => SearchPage(),
                            ),
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
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight / 3,
                color: itemwidgetbackground,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.6,
                      child: Image(
                        image: NetworkImage(
                          "https://play-lh.googleusercontent.com/5RCm2CM2n5y-MxuNewhpkijS2veFyL0hQLT1UGMinZ9rf1PygvagcriTsdKU-u-xZ0lW",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Reordering will be easy",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Items you order will show up here so you can buy them again easily",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: lightblack,
                          fontFamily: font,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GlobalSuggestedItemWidget(
                  url:
                      "https://www.bbassets.com/media/uploads/p/l/40090893_8-amul-amul-gold.jpg",
                  title: "Bestsellers",
                  row: 7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
