part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class ToggleCheckBoxEvent extends HomeEvent {
  const ToggleCheckBoxEvent({required this.product, required this.index});

  final ListProduct product;
  final int index;

  @override
  List<Object?> get props => [
        product,
        index,
      ];
}

class ProductListEvent extends HomeEvent {
  const ProductListEvent();

  @override
  List<Object?> get props => [];
}
class TimerEvent extends HomeEvent {
  const TimerEvent();

  @override
  List<Object?> get props => [];
}

class CurrentLocationEvent extends HomeEvent{
  const CurrentLocationEvent();

  @override
  List<Object?> get props => [];
}

class SelectedEvent extends HomeEvent{
  const SelectedEvent();
  @override
  List<Object?> get props => [];
}