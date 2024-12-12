import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/strings.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/core/widgets/app_text_form_field.dart';
import 'package:flutter_advanced/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Attention:  convert from stateless to statfull , to enable disable show unshow password.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late final bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Strings.welocomBack, style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(Strings.weHaveExited,
                    style: TextStyles.font14BlueSemiBold),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: Strings.email,
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: Strings.password,
                        isObscureText: isObscureText,
                        suffixIcon: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            Strings.forgetPassword,
                            style: TextStyles.font13BlueRegular,
                          ),
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                        buttonText: Strings.login,
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
