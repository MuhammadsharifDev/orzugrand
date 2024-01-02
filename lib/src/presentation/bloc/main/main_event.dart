part of 'main_bloc.dart';

abstract class MainEvent {}

class SetBottomMenuEvent extends MainEvent {
  final BottomMenu menu;

  SetBottomMenuEvent({required this.menu});

  List<Object?> get props => [menu];
}
