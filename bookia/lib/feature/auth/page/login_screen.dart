import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/functions/navigations.dart';
import 'package:bookia/core/functions/validations.dart';
import 'package:bookia/core/styles/colors.dart';
import 'package:bookia/core/styles/text_styles.dart';
import 'package:bookia/core/widgets/custom_svg_picture.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/core/widgets/main_button.dart';
import 'package:bookia/core/widgets/my_body_view.dart';
import 'package:bookia/core/widgets/password_text_form_field.dart';
import 'package:bookia/feature/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 80,
        // leading: GestureDetector(
        //   onTap: () {
        //     pop(context);
        //   },
        //   child: Row(children: [CustomSvgPicture(path: AppImages.backSvg)]),
        // ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () => pop(context),
          child: CustomSvgPicture(path: AppImages.backSvg),
        ),
      ),
      body: MyBodyView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Welcome back! Glad to see you, Again!',
                style: TextStyles.headline,
              ),
              Gap(32),
              CustomTextFormField(
                controller: emailController,
                hintText: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              Gap(15),
              PasswordTextFormField(
                controller: passwordController,
                hintText: 'Enter your password',
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(30),
              MainButton(
                text: 'Login',
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
              Gap(35),
              SocialLoginButtons(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(22, 5, 22, 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?', style: TextStyles.caption1),
            Gap(5),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Register',
                style: TextStyles.caption1.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
