import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orzu_grand/src/core/utils/app_images.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../components/widget/global_bottom.dart';

class CatalogWidget extends StatelessWidget {
  const CatalogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 120.h,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "У нас всё!",
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Хватит листать,",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "переходи в каталог.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 28.h,
                width: 183.w,
                child: GlobalBottomWidget(text: 'Каталог', size: double.infinity,),
              )
            ],
          ),
        ),
        Positioned(
          left: 240,
          bottom: 20,
          child: SizedBox(
            height: 152.h,
            width: 135.w,
            child: Image.asset(
              AppImages.catalog,
            ),
          ),
        ),
      ],
    );
  }
}
