import 'package:employ_ease/assets/icons/icon_asset.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
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
    IconAsset.designer,
    IconAsset.developer,
    IconAsset.analyst,
    IconAsset.phsycho,
    IconAsset.developer,
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE3F0E9),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
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
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: size.width,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            icons[index],
                            width: 50,
                            height: 50,
                          ),
                          const Gap(10),
                          Text(
                            jobs[index],
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        index == 0 || index == 1
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        size: 30,
                        color: index == 0 || index == 1
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                    ],
                  ),
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
