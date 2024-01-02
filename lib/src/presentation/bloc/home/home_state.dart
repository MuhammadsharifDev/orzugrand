part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  error,
  success,
}

class HomeState extends Equatable {
  const HomeState({
    this.isChecked = false,
    this.productList = const [],
    this.point,
    this.product,
    this.isSelected = false,
    this.homeStatus = HomeStatus.initial,
    this.duration = const Duration(hours: 2),
  });

  final bool isChecked;
  final List<ListProduct> productList;
  final ListProduct? product;
  final Duration duration;
  final HomeStatus homeStatus;
  final Point? point;
  final bool isSelected;

  HomeState copyWith({
    bool? isChecked,
    bool? isSelected,
    Point? point,
    HomeStatus? homeStatus,
    ListProduct? product,
    Duration? duration,
    List<ListProduct>? productList,
  }) {
    return HomeState(
      isSelected: isSelected ?? this.isSelected,
      point: point ?? this.point,
      homeStatus: homeStatus ?? this.homeStatus,
      isChecked: isChecked ?? this.isChecked,
      product: product ?? this.product,
      duration: duration ?? this.duration,
      productList: productList ?? this.productList,
    );
  }

  @override
  List<Object?> get props => [
        isChecked,
        isSelected,
        point,
        productList,
        product,
        duration,
        homeStatus,
      ];
}
