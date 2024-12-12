import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/strings.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: Strings.byLogingYouAgreeToOurConditiontions,
              style: TextStyles.font13GrayRegular),
          TextSpan(
              text: Strings.termsAndContions,
              style: TextStyles.font13DarkBlueMedium),
          TextSpan(
              text: Strings.and,
              style: TextStyles.font13GrayRegular.copyWith(height: 1.5)),
          TextSpan(
              text: Strings.privacyPolicy,
              style: TextStyles.font13DarkBlueMedium),
        ],
      ),
    );
  }
}
