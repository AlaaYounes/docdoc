import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By logging you agree to our ',
              style: TextStyles.font13GreyRegular,
            ),
            TextSpan(
              text: 'Terms & Conditions ',
              style: TextStyles.font13BlackBold,
            ),
            TextSpan(
              text: 'and ',
              style: TextStyles.font13GreyRegular,
            ),
            TextSpan(
              text: 'Privacy Policy ',
              style: TextStyles.font13BlackBold.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
