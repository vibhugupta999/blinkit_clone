part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class NavigationInitialEvent extends NavigationEvent {}

class ChangedIndexEvent extends NavigationEvent {
  final int index;
  ChangedIndexEvent({required this.index});
}

class TabChangedEvent extends NavigationEvent {
  final ScrollController scrollController;

  TabChangedEvent({required this.scrollController});
}
