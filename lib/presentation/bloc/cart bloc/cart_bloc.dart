import 'dart:async';

import 'package:blinkit_clone/data/User%20Data/user.dart';
import 'package:blinkit_clone/data/User%20Data/user_data.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<AddtoCartEvent>(addtoCartEvent);
    on<RemovefromCartEvent>(removefromCartEvent);
    on<RefreshCartEvent>(refreshCartEvent);
    on<ClearCartEvent>(clearCartEvent);
  }
  FutureOr<void> cartInitialEvent(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    Users.listenToAuthStateChanges();
    await UserData.getCartItems();
    emit(CartInitial());
  }

  Future<void> addtoCartEvent(
    AddtoCartEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(AddtoCartState());
    await UserData.setCartItems(userId: user?.uid);
  }

  Future<void> removefromCartEvent(
    RemovefromCartEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(RemovefromCartState());
    await UserData.setCartItems(userId: user?.uid);
  }

  Future<void> refreshCartEvent(
    RefreshCartEvent event,
    Emitter<CartState> emit,
  ) async {
    await Future.delayed(Duration(seconds: 1));
    for (var i in cartItemBlocs) {
      i.add(CartItemBlocsChangedEvent());
      await Future.delayed(Duration(milliseconds: 20));
    }
    emit(RefreshCartState());
  }

  Future<void> clearCartEvent(
    ClearCartEvent event,
    Emitter<CartState> emit,
  ) async {
    cartItems.clear();
    cartItemsQuantity.clear();
    await UserData.setCartItems(userId: user?.uid);
    for (var i in cartItemBlocs) {
      i.add(CartItemBlocsChangedEvent());
      await Future.delayed(Duration(milliseconds: 20));
    }
    cartItemBlocs.clear();
    emit(ClearCartState());
  }
}
