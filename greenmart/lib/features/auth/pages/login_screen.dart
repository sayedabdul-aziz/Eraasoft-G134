import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/validations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/core/widgets/password_text_form_field.dart';

// to handle validation in textFormField
// 1) wrap column with Form widget
// 2) add validator for each textFormField
// 3) create formKey for formState

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: SvgPicture.asset(AppImages.carrotSvg),
                  ),
                  const SizedBox(height: 40),
                  Text('Login', style: TextStyles.title),
                  const SizedBox(height: 16),
                  Text(
                    'Enter your email and password',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    'Email',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 7),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'xxxxx@gmail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';

                        /// xxxx@exaple.xxx
                      } else if (!isEmailValid(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Password',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 7),
                  PasswordTextFormField(hintText: '********'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  MainButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyles.caption1,
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign Up',
                                  style: TextStyles.caption1.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
