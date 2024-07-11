import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:employ_ease/res/components/jobDetails/card_top_content.dart';
import 'package:employ_ease/view/selectProfile/select_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobReview extends StatelessWidget {
  const JobReview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffE3F0E9),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
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
      body: Column(
        children: [
          const Gap(30),
          Expanded(
            child: Container(
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
                          color: const Color.fromARGB(255, 235, 235, 235),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Requirement",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
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
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Review",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Reviews",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: theme.colorScheme.primary,
                          width: 15,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Sentimental Score",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.4),
                            ),
                          ),
                          Text(
                            "100%",
                            style: theme.textTheme.displaySmall!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Text(
                        " 5",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        " /5 ratings",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.3),
                        ),
                      )
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Employee Review",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(10),
                  Container(
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) =>
                                        const SelectProfileView()));
                          },
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(ImageAsset.profile),
                              ),
                              const Gap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Veendum Njan",
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      color: theme.colorScheme.onSurface,
                                    ),
                                  ),
                                  Text(
                                    "UX Researcher",
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      color: theme.colorScheme.onSurface
                                          .withOpacity(.3),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: theme.colorScheme.onSurface,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Great place to work",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: theme.colorScheme.onPrimary,
                              size: 20,
                            ),
                            Text(
                              "4.5",
                              style: theme.textTheme.labelLarge!.copyWith(
                                color: theme.colorScheme.onPrimary,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Text(
                    "Tokopedia is an indonesian e-commerce company.",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.3),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
