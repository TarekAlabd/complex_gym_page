import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';
import 'package:simple_task/widgets/item_chip.dart';

class SideBanner extends StatelessWidget {
  const SideBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/banner.png',
            width: double.infinity,
            height: size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: SizedBox(
            child: ItemChip(
              text: 'ملصق جانبي',
              gradient: LinearGradient(
                  colors: [
                    AppColors.red,
                    AppColors.white.withOpacity(0.4),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.7, 1.0]),
              textColor: AppColors.white,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 16,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey.withOpacity(0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.red),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: AppColors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
