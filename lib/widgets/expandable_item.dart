import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';

class ExpandableItem extends StatelessWidget {
  final String headerTitle;
  final String body;

  const ExpandableItem({
    Key? key,
    required this.headerTitle,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ExpandablePanel(
          header: Text(
            headerTitle,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          theme: const ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            iconColor: AppColors.red,
          ),
          // builder: (context, collapsed, expanded) => ,
          collapsed: const SizedBox.shrink(),
          expanded: Text(
            body,
            softWrap: true,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
