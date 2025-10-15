import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/helper/Custom_divider.dart';
import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Core/utils/Text_Styless.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Widgets/Custom_Button.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Contact_With_Support.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Plan_Card.dart';
import 'package:otex_app/Features/Profile/Presentation/Views/Widgets/Profile_Header.dart';

class ProfileviewBody extends StatelessWidget {
  const ProfileviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          ProfileHeader(),
          SizedBox(height: 20.h),
          PlanCard(),
          SizedBox(height: 32.h),
          ContactWithSupport(),
          SizedBox(height: 199.h),
          Custom_divider(),
          SizedBox(height: 12.h),
          CustomButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'التالى',
                  style: TextStyless.tajawalBold16.copyWith(
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(width: 4.w),
                Image.asset(Assets.arrow_white, height: 24.w, width: 24.w),
              ],
            ),
          ),

          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
