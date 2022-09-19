import 'package:flutter/material.dart';
import 'package:simple_task/utils/colors.dart';
import 'package:simple_task/widgets/bio_section.dart';
import 'package:simple_task/widgets/customized_back_button.dart';
import 'package:simple_task/widgets/gallery_conditions_tabs.dart';
import 'package:simple_task/widgets/main_button.dart';
import 'package:simple_task/widgets/participants_reviews.dart';
import 'package:simple_task/widgets/personal_data_item.dart';
import 'package:simple_task/widgets/side_banner.dart';
import 'package:simple_task/widgets/subscription_plans.dart';

class MemberDetailsPage extends StatefulWidget {
  const MemberDetailsPage({super.key});

  @override
  State<MemberDetailsPage> createState() => _MemberDetailsPageState();
}

class _MemberDetailsPageState extends State<MemberDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomizedBackButton(),
        ),
        toolbarHeight: size.height * 0.04,
        leadingWidth: size.width * 0.14,
        title: Text(
          'عبد الرحمن عبيد',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColors.black,
              ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PersonalDataItem(),
              const SizedBox(height: 16.0),
              const BioSection(),
              const SizedBox(height: 16.0),
              const SideBanner(),
              const SizedBox(height: 16.0),
              const GalleryAndConditionsTabs(),
              const SizedBox(height: 16.0),
              const ParticipantsReviews(),
              const SizedBox(height: 16.0),
              const SubscriptionPlans(),
              const SizedBox(height: 24.0),
              MainButton(title: 'اشتراك', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
