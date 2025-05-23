import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/utils/colors.dart';
import 'package:store_app/features/common/presentations/store_app_app_bar.dart';
import 'package:store_app/features/common/presentations/store_bottom_navigation_bar.dart';


class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  final item = [
    // NotificationItem(),
    // NotificationItem(),
    // NotificationItem(),
    // NotificationItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StoreAppAppBar(title: "Notifications"),
      body:
          item.length == 0
              ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/no_notification.svg",
                        width: 64.w,
                        height: 64.h,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          AppColors.primary300,
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "You haven’t gotten any notifications yet!",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          color: AppColors.primary900,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "We’ll alert you when something cool happens.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primary500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : NotificationItem(),
      bottomNavigationBar: StoreBottomNavigationBar()
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("salom")),
        SizedBox(height: 20),
        Center(child: Text("salom")),
        SizedBox(height: 20),
        Center(child: Text("salom")),
        SizedBox(height: 20),
        Center(child: Text("salom")),
        SizedBox(height: 20),
        Center(child: Text("salom")),
        SizedBox(height: 20),
        Center(child: Text("salom")),
        SizedBox(height: 20),
      ],
    );
  }
}
