import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';
import 'package:simple_task/widgets/custom_carousel_slider.dart';
import 'package:simple_task/widgets/expandable_item.dart';

class GalleryAndConditionsTabs extends StatefulWidget {
  const GalleryAndConditionsTabs({super.key});

  @override
  State<GalleryAndConditionsTabs> createState() =>
      _GalleryAndConditionsTabsState();
}

class _GalleryAndConditionsTabsState extends State<GalleryAndConditionsTabs> {
  int _selectedTabBar = 0;
  final List<String> trainerImages = [
                  'assets/images/gallery1.png',
                  'assets/images/gallery1.png',
                  'assets/images/gallery2.png',
                ];
                final List<String> traineesImages = [
                  'assets/images/before-after.png',
                  'assets/images/before-after.png',
                  'assets/images/before-after.png',
                ];
  final List<Tab> _screenTabs = <Tab>[
    Tab(
      // text: 'المعرض',
      // icon: Icon(Icons.image),
      child: Row(
        children: const [
          Icon(Icons.image),
          SizedBox(width: 8.0),
          Text('المعرض'),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: const [
          Icon(Icons.question_answer),
          SizedBox(width: 8.0),
          Text('شروط المدرب'),
        ],
      ),
    ),
  ];
  late Tab currentTab;

  @override
  void initState() {
    currentTab = _screenTabs[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _screenTabs.length,
      child: SizedBox(
        child: Column(
          children: [
            TabBar(
              labelColor: AppColors.red,
              tabs: _screenTabs,
              onTap: (index) {
                setState(() {
                  _selectedTabBar = index;
                });
              },
              indicatorColor: AppColors.red,
            ),
              _selectedTabBar == 0 ?
                Column(
                  children: [
                    const SizedBox(height: 16.0),
                    CustomCarouselSlider(
                        title: 'صور المدرب', imgList: trainerImages),
                    const SizedBox(height: 16.0),
                    CustomCarouselSlider(
                        title: 'نتائج المتدربين', imgList: traineesImages),
                  ],
                ) :
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ExpandableItem(
                      headerTitle: 'أي نوع من الأسئلة يوضع هنا',
                      body:
                          'أي نوع من الأسئلة يوضع هنا! أي نوع من الأسئلة يوضع هنا!',
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
