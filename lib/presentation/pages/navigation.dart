import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/navigation%20bloc/navigation_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_bottom_navigation_bar_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_view_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  @override
  void initState() {
    navigationBloc.add(NavigationInitialEvent());
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: navigationBloc,
      builder: (context, state) {
        switch (state.runtimeType) {
          case NavigationLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: loginblinkitlogobackground,
                  strokeWidth: 5,
                  backgroundColor: darkblack,
                  padding: EdgeInsets.all(20),
                ),
              ),
            );
          case NavigationLoadedState:
            return Scaffold(
              body: screens[index],
              bottomNavigationBar: GlobalBottomNavigationBarWidget(
                navigationBloc: navigationBloc,
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
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButtonAnimator:
                  FloatingActionButtonAnimator.noAnimation,
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
