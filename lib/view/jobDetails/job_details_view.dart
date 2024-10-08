import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/res/components/jobDetails/card_top_content.dart';
import 'package:employ_ease/res/components/jobDetails/what_you_will_do.dart';
import 'package:employ_ease/view/jobReview/job_review.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobDetailsView extends StatelessWidget {
  const JobDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffE3F0E9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: const Color(0xffE3F0E9),
        actions: const [
          Icon(Icons.bookmark),
          Gap(10),
        ],
        title: Text(
          "Tokopedia",
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(30),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardTopContent(
                    jobName: "Product Designer",
                    companyName: "Tokopedia",
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rp 12Jt",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Salary",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "16",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Applications",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Onsite",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Job Type",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(10),
                  const Divider(),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Requirement",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 235, 235),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Company",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const JobReview()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 235, 235),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Review",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "About The Role",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "They say no man is an island, and this holds particulary true of this role. As a Product Designer, you'll be part of the team that manages GoPay - Southeast Asia's largest payment application",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "What You Will Do",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(10),
                  SizedBox(
                    height: size.height * .23,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const Gap(10),
                      itemCount: 4,
                      itemBuilder: (context, index) => const WhatYouWillDo(
                        text: "Expert inn UI/UX Designer",
                      ),
                    ),
                  ),
                  const Gap(20),
                  const CustomButton(
                    title: "Apply This Job",
                    width: double.infinity,
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
