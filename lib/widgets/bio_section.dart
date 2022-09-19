import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_task/utils/colors.dart';
import 'package:simple_task/widgets/item_chip.dart';
import 'package:simple_task/widgets/social_media_button.dart';

class BioSection extends StatefulWidget {
  const BioSection({super.key});

  @override
  State<BioSection> createState() => _BioSectionState();
}

class _BioSectionState extends State<BioSection> {
  bool isExpanded = false;
  final collapsedBio =
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من ';
  final expandedBio =
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنا في هذا النص الكبير الذي يعد أكبر من الآخر بعدة أسطر قليلة لتجربة عملية الكولابس والإكسباند بشكل جيد.';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            ItemChip(
              bgColor: AppColors.red.withOpacity(0.2),
              text: 'رفع أثقال',
              textColor: AppColors.red,
            ),
            const Spacer(),
            const SocialMediaButton(
              icon: FontAwesomeIcons.facebookF,
            ),
            const SizedBox(width: 12.0),
            const SocialMediaButton(
              icon: FontAwesomeIcons.twitter,
            ),
            const SizedBox(width: 12.0),
            const SocialMediaButton(
              icon: FontAwesomeIcons.instagram,
            ),
            const SizedBox(width: 12.0),
            const SocialMediaButton(
              icon: FontAwesomeIcons.snapchat,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        AnimatedSize(
          duration: const Duration(milliseconds: 100),
          child: ConstrainedBox(
            constraints: isExpanded
                ? const BoxConstraints()
                : const BoxConstraints(maxHeight: 130),
            child: Text(
              isExpanded ? expandedBio : collapsedBio,
              style: Theme.of(context).textTheme.subtitle1,
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        isExpanded
            ? ConstrainedBox(
                constraints: const BoxConstraints(),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    backgroundColor: AppColors.white,
                  ),
                  child: Text(
                    isExpanded ? 'عرض أقل' : 'عرض الكل',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  backgroundColor: AppColors.white,
                ),
                child: Text(
                  isExpanded ? 'عرض أقل' : 'عرض الكل',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: AppColors.black,
                      ),
                ),
              ),
      ],
    );
  }
}
