import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_utils.dart';

class GlobalBottomWidget extends StatelessWidget {
  const GlobalBottomWidget({
    super.key,
    required this.text,
    required this.size,
  });

  final double size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: AppUtils.kBorderRadius8,
        ),
        backgroundColor: AppColors.orange,
        minimumSize: Size(size, 40.h),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
