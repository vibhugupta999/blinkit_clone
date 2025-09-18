import 'dart:async';

import 'package:blinkit_clone/data/Retrieval%20from%20Firebase/retrieve_data.dart';
import 'package:blinkit_clone/data/User%20Data/user_data.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Beauty/beauty.dart';
import 'package:blinkit_clone/data/data_sources/App%20Categories/Kids/kids.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitialState()) {
    on<NavigationInitialEvent>(navigationInitialEvent);
    on<ChangedIndexEvent>(changedIndexEvent);
    on<TabChangedEvent>(tabChangedEvent);
  }

  Future<void> navigationInitialEvent(
    NavigationInitialEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(NavigationLoadingState());

    if (superList.isEmpty) {
      superList = await RetrieveData.getSuperCategories(docName: "All");
    }
    emit(NavigationLoadedState(index: index));

    if (beauty.isEmpty) {
      beauty = await RetrieveData.getSuperCategories(docName: "Beauty");
    }
    if (kids.isEmpty) {
      kids = await RetrieveData.getSuperCategories(docName: "Kids");
    }
    emit(NavigationLoadedState(index: index));
    UserData.setUser();
    cartBloc.add(CartInitialEvent());
  }

  Future<void> changedIndexEvent(
    ChangedIndexEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(NavigationLoadingState());
    index = event.index;
    await Future.delayed(Duration(milliseconds: 200));
    emit(NavigationLoadedState(index: index));
  }

  FutureOr<void> tabChangedEvent(
    TabChangedEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(NavigationLoadingState());
    event.scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 450),
      curve: Curves.easeOutBack,
    );
    await Future.delayed(Duration(milliseconds: 600));
    emit(TabChangedState());
  }
}
