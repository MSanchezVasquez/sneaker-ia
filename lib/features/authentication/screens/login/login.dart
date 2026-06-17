import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_store/common/styles/spacing_styles.dart';
import 'package:sneaker_store/common/widgets/login_signup/form_divider.dart';
import 'package:sneaker_store/common/widgets/login_signup/social_buttons.dart';
import 'package:sneaker_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sneaker_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:sneaker_store/utils/constants/sizes.dart';
import 'package:sneaker_store/utils/constants/text_strings.dart';
import 'package:sneaker_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              TLoginHeader(),

              /// Login Form
              TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
