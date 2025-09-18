import 'dart:async';

import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'detail_page_event.dart';
part 'detail_page_state.dart';

class DetailPageBloc extends Bloc<DetailPageEvent, DetailPageState> {
  DetailPageBloc() : super(DetailPageInitial()) {
    on<DetailPageEvent>((event, emit) {});
    on<AddToCartButtonClickedEvent>(addToCartButtonClickedEvent);
    on<RemoveFromCartButtonClickedEvent>(removeFromCartButtonClickedEvent);
    on<SubCategoryClickedEvent>(subCategoryClickedEvent);
    on<CartItemBlocsChangedEvent>(cartItemBlocsChangedEvent);
  }

  FutureOr<void> addToCartButtonClickedEvent(
    AddToCartButtonClickedEvent event,
    Emitter<DetailPageState> emit,
  ) {
    if (cartItems.contains(event.product)) {
      cartItemsQuantity[cartItems.indexOf(event.product)]++;
    } else {
      cartItems.add(event.product);
      cartItemsQuantity.add(1);
      cartItemBlocs.add(event.detailPageBloc);
    }
    emit(AddToCartButtonClickedState());
  }

  FutureOr<void> removeFromCartButtonClickedEvent(
    RemoveFromCartButtonClickedEvent event,
    Emitter<DetailPageState> emit,
  ) {
    int productIndex = cartItems.indexOf(event.product);

    if (cartItemsQuantity[productIndex] > 1) {
      cartItemsQuantity[productIndex]--;
    } else {
      cartItemsQuantity.removeAt(productIndex);
      cartItems.remove(event.product);
      cartItemBlocs.removeAt(productIndex);
    }

    emit(RemoveFromCartButtonClickedState());
  }

  FutureOr<void> subCategoryClickedEvent(
    SubCategoryClickedEvent event,
    Emitter<DetailPageState> emit,
  ) {
    subCategorySelectedIndex = event.index;
    emit(SubCategoryClickedState());
  }

  FutureOr<void> cartItemBlocsChangedEvent(
    CartItemBlocsChangedEvent event,
    Emitter<DetailPageState> emit,
  ) {
    emit(CartItemBlocsChangedState());
  }
}
