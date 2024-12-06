import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/strings.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Strings.docDocLogo,
        ),
        SizedBox(width: 10.w),
        Text(
          Strings.appName,
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
