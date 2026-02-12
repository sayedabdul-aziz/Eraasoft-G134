import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive Offer', style: TextStyles.title),
            TextButton(onPressed: () {}, child: Text('See All')),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = offers[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
