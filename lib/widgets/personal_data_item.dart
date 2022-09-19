import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';

class PersonalDataItem extends StatelessWidget {
  const PersonalDataItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              'assets/images/boxer.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Column(
          children: [
            Text(
              'عبد الرحمن عبيد',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'الرياض . السعودية',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        const Spacer(),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: AppColors.red,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '4.2',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const Icon(
                  Icons.star,
                  color: AppColors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
