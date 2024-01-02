import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:orzu_grand/src/core/utils/app_colors.dart';
import 'package:orzu_grand/src/core/utils/app_icons.dart';
import 'package:orzu_grand/src/core/utils/app_images.dart';
import 'package:orzu_grand/src/core/utils/app_utils.dart';
import 'package:orzu_grand/src/presentation/components/widget/global_bottom.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/mixins/mixin.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/catalog_widget.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/discounts/discount_page.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/news/news_page.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/popular/popular_page.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/product_list_widget.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/product_of_day.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/read_all_widget.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/user_info_widget.dart';

import '../../../../config/router/app_routes.dart';
import '../../../bloc/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeMixin {
  @override
  void initState() {
    startTime();
    initController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.01),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pushNamed(
              Routes.currentLocation,
            );
          },
          icon: const Icon(
            Icons.location_on_outlined,
            color: Colors.grey,
          ),
        ),
        title: Text(
          "ORZUGRAND",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: AppColors.orange,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: AppUtils.kPaddingR16,
            child: GestureDetector(
                onTap: () => context.pushNamed(Routes.chat),
                child: SvgPicture.asset(AppIcons.sms)),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const UserInfoWidget(),
          const ProductListWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: AppUtils.kPaddingT20,
              child: Material(
                borderRadius: AppUtils.kBorderRadius8,
                child: Padding(
                  padding: AppUtils.kPaddingAll16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Поиск товаров',
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: AppUtils.kBorderRadius16,
                            ),
                          ),
                        ),
                      ),
                      AppUtils.kGap16,
                      SizedBox(
                        height: 160.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) =>
                              Material(
                                borderRadius: AppUtils.kBorderRadius10,
                                child: Image.asset(
                                  AppImages.aksiya,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          separatorBuilder: (BuildContext context, int index) =>
                          AppUtils.kGap16,
                        ),
                      ),
                      AppUtils.kGap20,
                      const GlobalBottomWidget(text: 'все аксия', size: double.infinity),
                      AppUtils.kGap50,
                      Row(
                        children: [
                          const Text(
                            "Товар дня",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              return Text(
                                '0${state.duration.inHours}: 0${state.duration
                                    .inMinutes % 60}:${state.duration
                                    .inSeconds % 60}',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      AppUtils.kGap18,
                      const ProductOfDay(),
                      AppUtils.kGap12,
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap:(){
                                  context.read<HomeBloc>().add(const SelectedEvent());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: state.isSelected
                                          ? Colors.grey
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage(AppImages.fridge),
                                  ),
                                ),
                              ),
                              AppUtils.kGap6,
                              GestureDetector(
                                onTap:(){
                                  context.read<HomeBloc>().add(const SelectedEvent());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: state.isSelected
                                          ? Colors.grey
                                          : Colors.red,
                                      width:
                                      2.0,
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage:
                                    AssetImage(AppImages.vacuum_clear),
                                  ),
                                ),
                              ),
                              AppUtils.kGap6,
                              GestureDetector(
                                onTap:(){
                                  context.read<HomeBloc>().add(const SelectedEvent());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: state.isSelected
                                          ? Colors.grey
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/png_images/pls_tv.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      AppUtils.kGap28,
                      const Text(
                        'Рекомендуем вам',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TabBar(
                        tabAlignment: TabAlignment.center,
                        dividerColor: Colors.white,
                        indicatorColor: AppColors.orange,
                        labelColor: AppColors.orange,
                        controller: tabController,
                        tabs: const [
                          Text(
                            'Новинки',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text('Популярное'),
                          Text('Скидки + Рассрочка'),
                        ],
                      ),
                      SizedBox(
                        height: 330.h,
                        child: Material(
                          color: Colors.white,
                          borderRadius: AppUtils.kBorderRadius8,
                          child: TabBarView(
                            controller: tabController,
                            children: const [
                              NewsPage(),
                              PopularPage(),
                              DiscountPage(),
                            ],
                          ),
                        ),
                      ),
                      AppUtils.kGap41,
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: 'ORZU',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: AppColors.green,
                              ),
                            ),
                            TextSpan(
                              text: 'BLOG',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: AppColors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppUtils.kGap20,
                      const ReadAllWidget(),
                      AppUtils.kGap20,
                      const GlobalBottomWidget(text: 'Читать все', size: double.infinity),
                      AppUtils.kGap93,
                      const CatalogWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
