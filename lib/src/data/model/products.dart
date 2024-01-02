class ListProduct {
  final String title;
  final String subTitle;
  final String date;
  final bool isCheck;
  final String image;
  final String tabTitle;
  final int price;

  ListProduct({
    required this.price,
    required this.date,
    required this.image,
    required this.title,
    required this.isCheck,
    required this.subTitle,
    required this.tabTitle,
  });

  ListProduct copyWith({bool? isCheck}) {
    return ListProduct(
      price: price,
      date: date,
      image: image,
      tabTitle: tabTitle,
      title: title,
      isCheck: isCheck ?? this.isCheck,
      subTitle: subTitle,
    );
  }
}
