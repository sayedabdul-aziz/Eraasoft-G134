import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            // image
            Image.asset(
              AppImages.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // content
            Positioned(
              bottom: 70,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppImages.carrotSvg,
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'Welcome\nto Green Mart',
                    textAlign: TextAlign.center,
                    style: TextStyles.headline.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    text: 'Get Started',
                    onPressed: () {
                      pushReplacement(context, LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
