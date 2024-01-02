import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../data/model/products.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<ToggleCheckBoxEvent>(_onCheckToggle);
    on<ProductListEvent>(_loadData);
    on<TimerEvent>(_onStartTime);
    on<CurrentLocationEvent>(_getCurrentLocation);
    on<SelectedEvent>(_onSelected);
  }

  void _loadData(ProductListEvent event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        productList: productItems,
      ),
    );
  }

  void _onSelected(SelectedEvent event,Emitter<HomeState> emit,){
    emit(state.copyWith(isSelected: !state.isSelected),);
  }

  Future<void> _getCurrentLocation(
    CurrentLocationEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        homeStatus: HomeStatus.loading,
      ),
    );
    var permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.denied) {
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      emit(
        state.copyWith(
          point: Point(
            latitude: position.latitude,
            longitude: position.longitude,
          ),
        ),
      );
    }
    emit(
      state.copyWith(
        homeStatus: HomeStatus.success,
      ),
    );
  }

  void _onStartTime(
    TimerEvent event,
    Emitter<HomeState> emit,
  ) {
    if (state.duration.inSeconds == 0) return;
    emit(
      state.copyWith(
        duration: Duration(
          seconds: state.duration.inSeconds - 1,
        ),
      ),
    );
  }

  void _onCheckToggle(ToggleCheckBoxEvent event, Emitter<HomeState> emit) {
    var newProduct = event.product;
    newProduct = newProduct.copyWith(isCheck: !newProduct.isCheck);
    var list = [...state.productList];

    list.removeAt(event.index);

    list.insert(event.index, newProduct);

    emit(state.copyWith(
      productList: list,
    ),);
  }

  final List<ListProduct> productItems = [
    ListProduct(
      price: 1750000,
      tabTitle: 'Электрическая варочная\nповерхность MAUNFELD\nEEHE.32.4B',
      image: 'assets/png_images/vacuum_clear.jpg',
      date: 'Самовывоз до 29 марта',
      title: 'Готов к выдаче',
      isCheck: false,
      subTitle: 'Заказ №10021122',
    ),
    ListProduct(
      price: 7750000,
      tabTitle:
          'Игровая приставка Sony\nPlayStation PS5 DIGITAL\nEDITION 825Gb/Go',
      image: 'assets/png_images/fridge.jpg',
      date: 'Самовывоз до 10 август',
      title: 'отличная нагрузка',
      isCheck: false,
      subTitle: 'Заказ №80021122',
    ),
    ListProduct(
      price: 9000000,
      tabTitle: 'Электрическая варочная\nповерхность MAUNFELD\nEEHE.32.4B',
      image: 'assets/png_images/pls_tv.jpg',
      date: 'Самовывоз до 12 июль',
      title: 'товар хороший',
      isCheck: false,
      subTitle: 'Заказ №7721122',
    ),
  ];
}
