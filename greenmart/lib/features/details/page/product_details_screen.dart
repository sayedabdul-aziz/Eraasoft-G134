import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/details/widgets/checkout_bottom_sheet.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .3,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Hero(
                  tag: model.tagKey,
                  child: Image.network(model.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        model.name,
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$${model.price}',
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    initiallyExpanded: true,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    title: Text(
                      'Product Details',
                      style: TextStyles.caption1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    children: [
                      Text(
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                        style: TextStyles.caption2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
        child: MainButton(
          text: 'Add to Cart',
          onPressed: () {
            showCheckoutBottomSheet(context, model);
          },
        ),
      ),
    );
  }
}
