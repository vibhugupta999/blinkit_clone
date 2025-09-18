part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {}

class NavigationInitialState extends NavigationState {}

class NavigationLoadingState extends NavigationState {}

class NavigationLoadedState extends NavigationState {
  final int index;

  NavigationLoadedState({required this.index});
}

class ChangedIndexState extends NavigationState {
  final int index;

  ChangedIndexState({required this.index});
}

class TabChangedState extends NavigationState {}