import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/home/data/product_model.dart';

void showCheckoutBottomSheet(BuildContext context, ProductModel model) {
  showModalBottomSheet(
    context: context,
    // enableDrag: false,
    // isDismissible: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return CheckoutBottomSheet(model: model);
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * .7,
        minHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Checkout', style: TextStyles.title),
                        IconButton(
                          onPressed: () {
                            pop(context);
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                    Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyles.body),
                        Text('\$${model.price}', style: TextStyles.body),
                      ],
                    ),
                    Divider(height: 50),
                  ],
                ),
              ),
            ),
            MainButton(text: 'Checkout', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
