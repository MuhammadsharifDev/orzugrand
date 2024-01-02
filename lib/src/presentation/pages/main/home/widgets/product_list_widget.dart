import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orzu_grand/src/core/utils/app_colors.dart';
import 'package:orzu_grand/src/core/utils/app_images.dart';
import 'package:orzu_grand/src/presentation/bloc/home/home_bloc.dart';
import 'package:orzu_grand/src/presentation/components/widget/global_bottom.dart';

import '../../../../../core/utils/app_utils.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: AppUtils.kPaddingT18,
            child: SizedBox(
              height: 160.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.productList.length,
                itemBuilder: (context, index) => SizedBox(
                  height: 152.h,
                  width: 292.w,
                  child: Material(
                    color: Colors.white,
                    borderRadius: AppUtils.kBorderRadius8,
                    child: Padding(
                      padding: AppUtils.kPaddingAll6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                state.productList[index].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Align(
                                child: Checkbox(
                                  checkColor: state.isChecked
                                      ? AppColors.green
                                      : Colors.white,
                                  value: state.productList[index].isCheck,
                                  onChanged: (value) {
                                    context.read<HomeBloc>().add(
                                          ToggleCheckBoxEvent(
                                              product: state.productList[index],
                                              index: index),
                                        );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Text(
                            state.productList[index].subTitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            state.productList[index].date,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          AppUtils.kGap12,
                          Row(
                            children: [
                              GlobalBottomWidget(text: 'Забрать заказ', size: 144.w),
                              const Spacer(),
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(AppImages.squareBox),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    AppUtils.kGap16,
              ),
            ),
          ),
        );
      },
    );
  }
}
