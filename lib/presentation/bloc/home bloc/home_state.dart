part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeCategoryClickedState extends HomeState {
  final double scale;

  HomeCategoryClickedState({required this.scale});
}
