import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/strings.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //SvgPicture.asset(Strings.docDocLogoLowOpacity),
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          color: Colors.white.withOpacity(0.0),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.white,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(Strings.onboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            Strings.besterDoctorAppointementApp,
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
