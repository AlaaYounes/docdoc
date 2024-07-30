import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account? ',
              style: TextStyles.font13GreyRegular,
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyles.font13BlackBold
                  .copyWith(color: AppColor.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
