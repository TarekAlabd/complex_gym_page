import 'package:flutter/material.dart';

class ItemChip extends StatelessWidget {
  final Color? bgColor;
  final Color textColor;
  final String text;
  final Gradient? gradient;
  const ItemChip({
    super.key,
    this.bgColor,
    required this.text,
    required this.textColor,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgColor,
        gradient: gradient,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
