import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzu_grand/src/presentation/components/widget/global_bottom.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_utils.dart';

class ProductOfDay extends StatelessWidget {
  const ProductOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppUtils.kBorderRadius10,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.asset(AppIcons.label),
              const Positioned(
                left: 10,
                child: Text(
                  "Хит",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          AppUtils.kGap28,
          Center(
            child: SizedBox(
              height: 130.h,
              width: 170.w,
              child: Image.asset(
                'assets/png_images/pls_tv.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppUtils.kGap32,
          const Text(
            "Микроволновая печь соло Gorenje\nMO17E1W",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUtils.kGap22,
          Row(
            children: [
              Column(
                children: [
                  const Stack(
                    children: [
                      Text(
                        "2 000 000 сум",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 0,
                        right: 0,
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                    ],
                  ),
                  Text(
                      "1 750 000 сум",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.orange,
                        fontWeight: FontWeight.w700,
                      )
                  )
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppUtils.kBorderRadius8,
                  ),
                  backgroundColor: AppColors.orange,
                  minimumSize: Size(86.w, 32.h),
                ),
                child: SvgPicture.asset(AppIcons.basket1),
              )
            ],
          ),
        ],
      ),
    );
  }
}
