import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/res/components/jobType/item_containers.dart';
import 'package:employ_ease/view/confirmAccount/confirm_account_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobTypeView extends StatefulWidget {
  const JobTypeView({super.key});

  @override
  State<JobTypeView> createState() => _JobTypeViewState();
}

class _JobTypeViewState extends State<JobTypeView> {
  List jobs = [
    "Designer",
    "Developer",
    "Data analyst",
    "Phsycologist",
    "Developer",
  ];

  List icons = [
    Assets.icons.designer.keyName,
    Assets.icons.developer.keyName,
    Assets.icons.analyst.keyName,
    Assets.icons.phsycologist.keyName,
    Assets.icons.developer.keyName,
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE3F0E9),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            padding: const EdgeInsets.all(16),
            color: const Color(0xffE3F0E9),
            child: Column(
              children: [
                Text(
                  "What type of job your looking for?",
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Text(
                  "Choose 2-4 job categories and well click the job vacancy for you",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.5),
                  ),
                ),
                const Gap(10),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return ItemContainers(
                  imageUrl: icons[index],
                  title: jobs[index],
                  index: index,
                );
              },
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const ConfirmAccountView(),
                  ),
                );
              },
              title: "Continue",
              width: double.infinity,
              height: 60,
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
