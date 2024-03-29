
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<SetBottomMenuEvent>(_onChanged);
  }
  void _onChanged(SetBottomMenuEvent event,Emitter<MainState> emit){
    emit(state.copyWith(bottomMenu: event.menu));
  }
}
enum BottomMenu { home, wishlist, basket,search,setting }