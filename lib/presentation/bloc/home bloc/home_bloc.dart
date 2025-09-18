import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<HomeCategoryClickedEvent>(homeCategoryClickedEvent);
  }

  FutureOr<void> homeCategoryClickedEvent(
    HomeCategoryClickedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeCategoryClickedState(scale: 0.95));
    await Future.delayed(Duration(milliseconds: 75));
    emit(HomeCategoryClickedState(scale: 1));
  }
}
