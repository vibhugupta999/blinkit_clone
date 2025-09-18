part of 'detail_page_bloc.dart';

@immutable
abstract class DetailPageState {}

final class DetailPageInitial extends DetailPageState {}

final class AddToCartButtonClickedState extends DetailPageState {}

final class RemoveFromCartButtonClickedState extends DetailPageState {}

final class SubCategoryClickedState extends DetailPageState {}

final class CartItemBlocsChangedState extends DetailPageState{}