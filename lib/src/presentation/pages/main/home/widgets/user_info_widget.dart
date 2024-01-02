
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_utils.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Padding(
        padding: AppUtils.kPaddingT18,
        child: Row(
          children: [
            SvgPicture.asset(
              AppIcons.person,
              color: Colors.black,
            ),
            AppUtils.kGap10,
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  const TextSpan(
                    text: 'Здравствуйте,',
                  ),
                  const TextSpan(text: '  '),
                  TextSpan(
                    text: 'Дониёр',
                    style: TextStyle(
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
