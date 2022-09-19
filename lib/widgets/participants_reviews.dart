import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_task/utils/colors.dart';

class ParticipantsReviews extends StatelessWidget {
  const ParticipantsReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.25,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'آراء المشتركين',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 3,
                    width: 30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'عرض جميع الآراء (24)',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width * 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/person1.png'),
                                  radius: 30,
                                ),
                                const SizedBox(width: 12.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'محمد سامي',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Row(
                                      children: [
                                        RatingBarIndicator(
                                          rating: 4,
                                          itemBuilder: (context, index) =>
                                              const Icon(
                                            Icons.star,
                                            color: AppColors.red,
                                          ),
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          direction: Axis.horizontal,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          '4',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'أمس',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                    color: AppColors.grey,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'هنالك العديد من الأنواع المتوفرة لنصوص لوريم ابسوم، ولكن الغالبية تم إدخال بعض النوادر من هنا',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: AppColors.grey,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
