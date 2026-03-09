import 'package:bookia/core/styles/colors.dart';
import 'package:bookia/core/styles/text_styles.dart';
import 'package:bookia/core/widgets/main_button.dart';
import 'package:bookia/feature/home/data/models/best_seller_books_response/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.image ?? '',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(10),
          SizedBox(
            height: 45,
            child: Text(
              product.name ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.body,
            ),
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${product.priceAfterDiscount}', style: TextStyles.body),
              SizedBox(
                height: 30,
                child: MainButton(
                  minWidth: 70,
                  minHeight: 30,
                  bgColor: AppColors.darkColor,
                  text: 'Buy',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
