import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';
import 'package:simple_task/widgets/subscription_item.dart';

class SubscriptionPlans extends StatelessWidget {
  const SubscriptionPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'خطط الاشتراك',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 3,
          width: 30,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.red,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SubscriptionItem(),
            SizedBox(width: 8.0),
            SubscriptionItem(
              bgColor: AppColors.red,
              title: '3 شهور',
              totalPrice: '16.49',
              monthlyPrice: '5.50',
            ),
          ],
        ),
      ],
    );
  }
}
