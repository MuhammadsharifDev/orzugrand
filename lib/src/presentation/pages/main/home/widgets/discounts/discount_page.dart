import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_utils.dart';
import '../../../../../bloc/home/home_bloc.dart';
import '../../../../../components/widget/global_bottom.dart';

class DiscountPage extends StatelessWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: state.productList.length,
              itemBuilder: (context, index) {
                final product = state.productList[index];
                return Row(
                  children: [
                    SizedBox(
                      height: 81.h,
                      width: 91.w,
                      child: Image.asset(product.image),
                    ),
                    AppUtils.kGap6,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.tabTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        AppUtils.kGap16,
                        Row(
                          children: [
                            Text(
                              '${product.price.toString()} sum',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.orange,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
              AppUtils.kGap16,
            ),
            AppUtils.kGap16,
             const GlobalBottomWidget(text: 'Смотреть все 15', size: double.infinity,),
          ],
        );
      },
    );
  }
}
