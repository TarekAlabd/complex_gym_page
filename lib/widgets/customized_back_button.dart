import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';

class CustomizedBackButton extends StatelessWidget {
  const CustomizedBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
        onTap: () => Navigator.of(context).pop(),
      ),
    );
  }
}
