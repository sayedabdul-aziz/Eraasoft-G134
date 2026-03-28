import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/routes/navigations.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/services/local/shared_pref.dart';
import 'package:bookia/core/styles/colors.dart';
import 'package:bookia/core/styles/text_styles.dart';
import 'package:bookia/core/widgets/custom_svg_picture.dart';
import 'package:bookia/core/widgets/my_body_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var profileData = SharedPref.getUserInfo();
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CustomSvgPicture(path: AppImages.logoutSvg),
          ),
        ],
      ),
      body: MyBodyView(
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    imageUrl: profileData?.image ?? '',
                    height: 100,
                    width: 100,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.person,
                      size: 100,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profileData?.name ?? '', style: TextStyles.subtitle1),
                    Text(
                      profileData?.email ?? '',
                      style: TextStyles.body.copyWith(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(30),
            GestureDetector(
              onTap: () {
                pushTo(context, Routes.editProfile).then((value) {
                  setState(() {});
                });
              },
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Card(
                  color: AppColors.backgroundColor,
                  child: Center(child: Text('Edit profile')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
