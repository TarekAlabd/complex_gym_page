import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';

class SubscriptionItem extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String totalPrice;
  final String monthlyPrice;
  const SubscriptionItem({
    super.key,
    this.bgColor = AppColors.grey,
    this.title = 'شهري',
    this.totalPrice = '8.49',
    this.monthlyPrice = '4.49',
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      // height: size.height * 0.16,
      // width: size.width * 0.3,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bgColor == AppColors.grey ? bgColor.withOpacity(0.2) : bgColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: bgColor == AppColors.grey
                          ? AppColors.black
                          : AppColors.white,
                    ),
              ),
              Text(
                '$totalPrice \$',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: bgColor == AppColors.grey
                          ? AppColors.black
                          : AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 6.0),
              Text(
                '$monthlyPrice \$/شهريًا',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: bgColor == AppColors.grey
                          ? AppColors.black
                          : AppColors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
