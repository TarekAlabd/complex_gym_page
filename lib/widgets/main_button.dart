import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color bgColor;
  final Color textColor;
  const MainButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.bgColor = AppColors.black,
    this.textColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
