import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_task/utils/colors.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  const SocialMediaButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey.withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: Icon(
            icon,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
