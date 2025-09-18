// import 'package:blinkit_clone/data/constants/ui_consts.dart';
// import 'package:blinkit_clone/presentation/pages/search_page.dart';
// import 'package:blinkit_clone/presentation/widgets/beauty_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/decor_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/electronics_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/gifting_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/global/global_app_bar_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/global/global_search_bar_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/home_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/kids_widget.dart';
// import 'package:blinkit_clone/presentation/widgets/premium_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:icon_decoration/icon_decoration.dart';
// import 'package:icons_plus/icons_plus.dart';

// class Test extends StatefulWidget {
//   final NetworkImage networkImage;
//   final VoidCallback addToCart;
//   final VoidCallback removeFromCart;
//   const Test({
//     super.key,
//     required this.networkImage,
//     required this.addToCart,
//     required this.removeFromCart,
//   });

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   late ScrollController _scrollcontroller;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 7, vsync: this);
//     _scrollcontroller = ScrollController();
//     _tabController.addListener(() {
//       if (_tabController.indexIsChanging) {
//         _scrollcontroller.jumpTo(0);
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     _scrollcontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 7,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: NestedScrollView(
//           controller: _scrollcontroller,
//           headerSliverBuilder: (context, innerBoxIsScrolled) => [
//             GlobalAppBarWidget(onTap: () {}, topText: "Blinkit In"),
//             SliverAppBar(
//               flexibleSpace: Container(
//                 padding: EdgeInsets.symmetric(vertical: 8),
//                 alignment: Alignment.topCenter,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       homepagegradientsecondcolor,
//                       tabbarmiddlegradient,
//                       tabbarbackground,
//                       tabbarbackground,
//                     ],
//                     stops: [0, 0.4, 0.7, 1],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     GlobalSearchBarWidget(enabled: true),
//                     Positioned.fill(
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => SearchPage(),
//                             ),
//                           );
//                         },
//                         behavior: HitTestBehavior.translucent,
//                         child: Container(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               toolbarHeight: 0,
//               floating: true,
//               pinned: true,
//               scrolledUnderElevation: 4,
//               forceElevated: true,
//               shadowColor: Colors.black,
//               bottom: TabBar(
//                 controller: _tabController,
//                 tabAlignment: TabAlignment.start,
//                 isScrollable: true,
//                 enableFeedback: false,
//                 splashFactory: NoSplash.splashFactory,

//                 labelStyle: TextStyle(
//                   fontSize: 12,
//                   fontFamily: font,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 indicatorPadding: EdgeInsetsGeometry.symmetric(
//                   horizontal: TabBarIndicatorSize.label.index * 5,
//                 ),
//                 indicator: UnderlineTabIndicator(
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//                   borderSide: BorderSide(color: Color(0xff2d2d2d), width: 4),
//                 ),

//                 unselectedLabelColor: darkblack,
//                 unselectedLabelStyle: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   fontFamily: font,
//                   fontSize: 12,
//                 ),
//                 tabs: [
//                   Tab(
//                     text: "All",
//                     icon: Padding(
//                       padding: const EdgeInsets.only(bottom: 5),
//                       child: DecoratedIcon(
//                         icon: Icon(
//                           FontAwesomeIcons.basketShopping,
//                           fill: 1,
//                           size: 20,
//                           color: _tabController.index == 0
//                               ? navigationbarselectediconfillcolor
//                               : navigationbarunselectediconfillcolor,
//                         ),
//                         decoration: IconDecoration(
//                           border: IconBorder(width: 3),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     text: "Electronics",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         EvaIcons.headphones_outline,
//                         fill: 1,
//                         color: _tabController.index == 1
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                   Tab(
//                     text: "Beauty",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         EvaIcons.brush,
//                         fill: 1,
//                         color: _tabController.index == 2
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                   Tab(
//                     text: "Decor",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         Icons.light,
//                         fill: 1,
//                         color: _tabController.index == 3
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                   Tab(
//                     text: "Kids",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         Icons.baby_changing_station,
//                         fill: 1,
//                         color: _tabController.index == 4
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                   Tab(
//                     text: "Gifting",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         EvaIcons.gift,
//                         fill: 1,
//                         color: _tabController.index == 5
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                   Tab(
//                     text: "Premium",
//                     icon: DecoratedIcon(
//                       icon: Icon(
//                         Icons.diamond,
//                         fill: 1,
//                         color: _tabController.index == 6
//                             ? navigationbarselectediconfillcolor
//                             : navigationbarunselectediconfillcolor,
//                       ),
//                       decoration: IconDecoration(border: IconBorder(width: 3)),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//           body: TabBarView(
//             controller: _tabController,
//             physics: NeverScrollableScrollPhysics(),
//             children: [
//               HomeWidget(networkImage: widget.networkImage),
//               ElectronicsWidget(networkImage: widget.networkImage),
//               BeautyWidget(networkImage: widget.networkImage),
//               DecorWidget(),
//               KidsWidget(networkImage: widget.networkImage),
//               GiftingWidget(networkImage: widget.networkImage),
//               PremiumWidget(networkImage: widget.networkImage),
//             ],
//           ),
//         ),
//         // bottomNavigationBar: GlobalBottomNavigationBarWidget(),
//       ),
//     );
//   }
// }

import 'package:blinkit_clone/data/data_sources/App%20Categories/All/Grocery%20&%20Kitchen/grocery_and_kitchen.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/address_tile.dart';
import 'package:blinkit_clone/presentation/widgets/show_address_list_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with TickerProviderStateMixin {
  late final List<Map<String, String>> grocery;
  late AnimationController _controller;
  @override
  void initState() {
    grocery = groceryAndKitchen.map((e) {
      return {"name": e.categoryName, "url": e.categoryImageUrl};
    }).toList();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      reverseDuration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: BlocBuilder<AddressBloc, AddressState>(
            bloc: addressBloc,
            builder: (context, state) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showAddressListBottomSheet(context,_controller);
                    },
                    child: Text("print"),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: userAddresses.length,
                    itemBuilder: (context, index) {
                      return AddressTile(
                        userAddress: userAddresses[index],
                        index: index,
                        controller: _controller,
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
