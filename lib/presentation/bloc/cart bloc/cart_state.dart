part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

final class CartInitial extends CartState {}

final class AddtoCartState extends CartState {}

final class RemovefromCartState extends CartState {}

final class RefreshCartState extends CartState {}

final class ClearCartState extends CartState{}