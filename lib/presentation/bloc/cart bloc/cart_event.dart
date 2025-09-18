part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class AddtoCartEvent extends CartEvent {}

class RemovefromCartEvent extends CartEvent {}

class RefreshCartEvent extends CartEvent{}

class ClearCartEvent extends CartEvent{}