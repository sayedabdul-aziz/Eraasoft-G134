import 'dart:io';

import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/routes/navigations.dart';
import 'package:bookia/core/functions/validations.dart';
import 'package:bookia/core/styles/colors.dart';
import 'package:bookia/core/widgets/custom_svg_picture.dart';
import 'package:bookia/core/widgets/custom_text_form_field.dart';
import 'package:bookia/core/widgets/dialogs.dart';
import 'package:bookia/core/widgets/main_button.dart';
import 'package:bookia/core/widgets/my_body_view.dart';
import 'package:bookia/feature/profile/presentation/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:bookia/feature/profile/presentation/edit_profile/cubit/edit_profile_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String path = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listener: (context, state) {
        if (state is EditProfileSuccess) {
          pop(context);
          pop(context);
        } else if (state is EditProfileError) {
          pop(context);
          showMyDialog(context, 'Failed to update profile. Please try again.');
        } else if (state is EditProfileLoading) {
          showLoadingDialog(context);
        }
      },
      builder: (context, state) {
        var cubit = context.read<EditProfileCubit>();
        return Scaffold(
          appBar: AppBar(title: const Text('Edit Profile')),
          body: MyBodyView(
            child: Column(
              children: [
                Stack(
                  children: [
                    // check if picked image from device
                    // if not show profile image from api
                    // if not show no profile image
                    if (path.isNotEmpty)
                      ClipOval(
                        child: Image.file(
                          File(path),
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (path.isEmpty && cubit.imageUrl.isNotEmpty)
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: cubit.imageUrl,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
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
                    if (path.isEmpty && cubit.imageUrl.isEmpty)
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: AppColors.accentColor,
                        child: CustomSvgPicture(
                          path: AppImages.profileSvg,
                          color: AppColors.primaryColor,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () async {
                          pickProfileImage();
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: AppColors.backgroundColor,
                          child: CustomSvgPicture(path: AppImages.cameraSvg),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                CustomTextFormField(
                  controller: cubit.nameController,
                  hintText: 'Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const Gap(12),
                CustomTextFormField(
                  controller: cubit.phoneController,
                  hintText: 'Phone',
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty == true &&
                        !isEgyptianPhone(value)) {
                      return 'Please enter a valid Egyptian phone number';
                    }
                    return null;
                  },
                ),
                const Gap(12),
                CustomTextFormField(
                  controller: cubit.addressController,
                  hintText: 'Address',
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(20),
            child: MainButton(
              text: 'Save',
              onPressed: () {
                cubit.updateProfile(File(path));
              },
            ),
          ),
        );
      },
    );
  }

  void pickProfileImage() async {
    var picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        path = image.path;
      });
    }
  }
}

// File => Widget
// XFile => PickedFile
// XFile => File
// Path

// profile image
// asset => no profile image
// network => profile image from api
// file => profile image from device (offline)

// formData
