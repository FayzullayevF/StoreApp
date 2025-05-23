import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/colors.dart';

class SuccessfulSignUpDialog extends StatelessWidget {
  const SuccessfulSignUpDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: 250,
          height: 286,
          padding: EdgeInsets.symmetric(
            horizontal: 36.w,
            vertical: 24,
          ),
          child: Column(
            spacing: 9,
            children: [
              SizedBox(
                width: 133,
                height: 44,
                child: Text(
                  "Sign Up Successful!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primary900,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet pretium cras id dui pellentesque ornare. Quisque malesuada.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primary500,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}