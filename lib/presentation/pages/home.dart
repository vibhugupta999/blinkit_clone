import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/bloc/navigation%20bloc/navigation_bloc.dart';
import 'package:blinkit_clone/presentation/pages/search_page.dart';
import 'package:blinkit_clone/presentation/widgets/beauty_widget.dart';
import 'package:blinkit_clone/presentation/widgets/decor_widget.dart';
import 'package:blinkit_clone/presentation/widgets/electronics_widget.dart';
import 'package:blinkit_clone/presentation/widgets/gifting_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_app_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_search_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/home_widget.dart';
import 'package:blinkit_clone/presentation/widgets/kids_widget.dart';
import 'package:blinkit_clone/presentation/widgets/premium_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ScrollController scrollController = ScrollController();
  final NavigationBloc navigationBloc = NavigationBloc();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    navigationBloc.add(TabChangedEvent(scrollController: scrollController));
    _tabController.addListener(() {
      navigationBloc.add(TabChangedEvent(scrollController: scrollController));
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: navigationBloc,
      builder: (context, state) {
        return DefaultTabController(
          length: 7,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: NestedScrollView(
              controller: scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                GlobalAppBarWidget(
                  
                  topText: "Blinkit In",
                ),
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
                  toolbarHeight: 0,
                  floating: true,
                  pinned: true,
                  scrolledUnderElevation: 4,
                  forceElevated: true,
                  shadowColor: Colors.black,
                  bottom: TabBar(
                    controller: _tabController,
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    enableFeedback: false,
                    splashFactory: NoSplash.splashFactory,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: font,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsetsGeometry.symmetric(
                      horizontal: TabBarIndicatorSize.label.index * 5,
                    ),
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xff2d2d2d),
                        width: 4,
                      ),
                    ),

                    unselectedLabelColor: darkblack,
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: font,
                      fontSize: 12,
                    ),
                    tabs: [
                      Tab(
                        text: "All",
                        icon: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: DecoratedIcon(
                            icon: Icon(
                              FontAwesomeIcons.basketShopping,
                              fill: 1,
                              size: 20,
                              color: _tabController.index == 0
                                  ? navigationbarselectediconfillcolor
                                  : navigationbarunselectediconfillcolor,
                            ),
                            decoration: IconDecoration(
                              border: IconBorder(width: 3),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Electronics",
                        icon: DecoratedIcon(
                          icon: Icon(
                            EvaIcons.headphones_outline,
                            fill: 1,
                            color: _tabController.index == 1
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Beauty",
                        icon: DecoratedIcon(
                          icon: Icon(
                            EvaIcons.brush,
                            fill: 1,
                            color: _tabController.index == 2
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Decor",
                        icon: DecoratedIcon(
                          icon: Icon(
                            Icons.light,
                            fill: 1,
                            color: _tabController.index == 3
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Kids",
                        icon: DecoratedIcon(
                          icon: Icon(
                            Icons.baby_changing_station,
                            fill: 1,
                            color: _tabController.index == 4
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Gifting",
                        icon: DecoratedIcon(
                          icon: Icon(
                            EvaIcons.gift,
                            fill: 1,
                            color: _tabController.index == 5
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Premium",
                        icon: DecoratedIcon(
                          icon: Icon(
                            Icons.diamond,
                            fill: 1,
                            color: _tabController.index == 6
                                ? navigationbarselectediconfillcolor
                                : navigationbarunselectediconfillcolor,
                          ),
                          decoration: IconDecoration(
                            border: IconBorder(width: 3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              body: switch (state.runtimeType) {
                NavigationLoadingState => Center(
                  child: CircularProgressIndicator(
                    color: loginblinkitlogobackground,
                    strokeWidth: 5,
                    backgroundColor: darkblack,
                    padding: EdgeInsets.all(20),
                  ),
                ),
                TabChangedState => TabBarView(
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HomeWidget(),

                    ElectronicsWidget(
                      networkImage: NetworkImage(
                        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
                      ),
                    ),

                    BeautyWidget(
                      networkImage: NetworkImage(
                        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
                      ),
                    ),
                    DecorWidget(),

                    KidsWidget(),

                    GiftingWidget(
                      networkImage: NetworkImage(
                        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
                      ),
                    ),

                    PremiumWidget(
                      networkImage: NetworkImage(
                        "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
                      ),
                    ),
                  ],
                ),
                _ => SizedBox(),
              },
            ),
          ),
        );
      },
    );
  }
}
