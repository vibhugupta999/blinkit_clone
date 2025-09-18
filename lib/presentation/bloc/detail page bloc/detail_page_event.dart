part of 'detail_page_bloc.dart';

@immutable
abstract class DetailPageEvent {}

class AddToCartButtonClickedEvent extends DetailPageEvent {
  final Product product;
  final DetailPageBloc detailPageBloc;
  AddToCartButtonClickedEvent({
    required this.detailPageBloc,
    required this.product,
  });
}

class RemoveFromCartButtonClickedEvent extends DetailPageEvent {
  final Product product;

  RemoveFromCartButtonClickedEvent({required this.product});
}

class SubCategoryClickedEvent extends DetailPageEvent {
  final int index;

  SubCategoryClickedEvent({required this.index});
}

class CartItemBlocsChangedEvent extends DetailPageEvent {}
