import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/navigation%20bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:icons_plus/icons_plus.dart';

class GlobalBottomNavigationBarWidget extends StatefulWidget {
  final NavigationBloc navigationBloc;
  const GlobalBottomNavigationBarWidget({
    super.key,
    required this.navigationBloc,
  });

  @override
  State<GlobalBottomNavigationBarWidget> createState() =>
      _GlobalBottomNavigationBarWidgetState();
}

class _GlobalBottomNavigationBarWidgetState
    extends State<GlobalBottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: -5),
        ],
      ),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        bloc: widget.navigationBloc,
        builder: (context, state) {
          return NavigationBar(
            maintainBottomViewPadding: true,
            backgroundColor: Colors.white,
            height: screenHeight / 14,
            labelPadding: EdgeInsets.symmetric(vertical: 0),
            overlayColor: WidgetStatePropertyAll(Colors.white),
            labelTextStyle: WidgetStateProperty.fromMap({
              WidgetState.selected: TextStyle(
                fontFamily: font,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
              WidgetState.any: TextStyle(fontSize: 11, fontFamily: font),
            }),
            onDestinationSelected: (value) {
              // do state management here
              widget.navigationBloc.add(ChangedIndexEvent(index: value));
            },
            indicatorColor: Colors.white,
            indicatorShape: CircleBorder(
              eccentricity: 0,
              side: BorderSide(color: Colors.white),
            ),
            selectedIndex: index,
            destinations: [
              NavigationDestination(
                icon: UnselectedDecoratedIconWidget(
                  icon: FontAwesomeIcons.houseChimney,
                ),
                selectedIcon: SelectedDecoratedIconWidget(
                  icon: FontAwesomeIcons.houseChimney,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: UnselectedDecoratedIconWidget(
                  icon: FontAwesomeIcons.bagShopping,
                ),
                selectedIcon: SelectedDecoratedIconWidget(
                  icon: FontAwesomeIcons.bagShopping,
                ),
                label: "Order Again",
              ),
              NavigationDestination(
                icon: UnselectedDecoratedIconWidget(
                  icon: Iconsax.category_2_bold,
                  size: 22,
                ),
                selectedIcon: SelectedDecoratedIconWidget(
                  icon: Iconsax.category_2_bold,
                  size: 22,
                  background: false,
                ),
                label: "Categories",
              ),
              NavigationDestination(
                icon: UnselectedDecoratedIconWidget(
                  icon: EvaIcons.printer,
                  size: 22,
                  background: false,
                ),
                selectedIcon: SelectedDecoratedIconWidget(
                  icon: EvaIcons.printer,
                  size: 22,
                  background: false,
                ),
                label: "Print",
              ),
            ],
          );
        },
      ),
    );
  }
}

class SelectedDecoratedIconWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final bool background;
  const SelectedDecoratedIconWidget({
    super.key,
    required this.icon,
    this.size = 20,
    this.background = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,

      children: [
        Container(
          width: screenWidth / 30,
          height: screenWidth / 23,
          margin: EdgeInsets.symmetric(vertical: 4),
          color: background ? Colors.black : null,
        ),
        DecoratedIcon(
          icon: Icon(
            icon,
            color: navigationbarselectediconfillcolor,
            size: size,
          ),
          decoration: IconDecoration(
            border: IconBorder(
              color: background
                  ? const Color.fromARGB(170, 0, 0, 0)
                  : const Color.fromARGB(200, 0, 0, 0),
              width: 4,
            ),
          ),
        ),
      ],
    );
  }
}

class UnselectedDecoratedIconWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final bool background;
  const UnselectedDecoratedIconWidget({
    super.key,
    required this.icon,
    this.size = 20,
    this.background = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: screenWidth / 30,
          height: screenWidth / 23,
          margin: EdgeInsets.symmetric(vertical: 4),
        ),
        DecoratedIcon(
          icon: Icon(
            icon,
            color: navigationbarunselectediconfillcolor,
            size: size,
          ),
          decoration: IconDecoration(
            border: IconBorder(color: Color.fromARGB(190, 0, 0, 0), width: 3.5),
          ),
        ),
      ],
    );
  }
}
