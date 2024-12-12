import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/strings.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: Strings.alreadyHaveAccount,
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: Strings.signUp,
            style: TextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
