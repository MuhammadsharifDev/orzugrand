import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_utils.dart';

class ReadAllWidget extends StatelessWidget {
  const ReadAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) =>  SizedBox(
          height: 152.h,
          width: 292.w,
          child: Material(
            borderRadius: AppUtils.kBorderRadius8,
            child: Image.asset('assets/png_images/windows.jpg',fit: BoxFit.cover,),
          ),
        ),
        separatorBuilder: (BuildContext context, int index) =>
        AppUtils.kGap16,
      ),
    );
  }
}
