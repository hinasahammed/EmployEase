import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/res/components/selectProfile/profile_card.dart';
import 'package:employ_ease/res/components/selectProfile/resume_card.dart';
import 'package:employ_ease/view/uploadCv/upload_cv_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelectProfileView extends StatelessWidget {
  const SelectProfileView({super.key});

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
        title: Text(
          "Apply",
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: theme.colorScheme.primary.withOpacity(.3),
                  ),
                  child: Assets.images.jlogo.image(
                    width: 60,
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tokopedia",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(.4),
                      ),
                    ),
                    Text(
                      "Product Designer",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Onsite Jobs",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(.4),
                      ),
                    ),
                    Text(
                      "\$11k/Mo",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                  Text(
                    "Select a Profile",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileCard(
                        userName: "Dhe pinnem",
                        jobName: "Product Designer",
                        isChecked: true,
                      ),
                      ProfileCard(
                        userName: "Dhe pinnem",
                        jobName: "Product Designer",
                        isChecked: false,
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select a Resume",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ResumeCard(
                        jobName: "Ux Designer",
                        userName: "Dhe pinnem",
                        isChecked: true,
                      ),
                      ResumeCard(
                        jobName: "Product Designer",
                        userName: "Ithum njan",
                        isChecked: false,
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Cover Letter",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            height: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              "Write a Cover Letter...",
                              style: theme.textTheme.labelLarge!.copyWith(
                                color:
                                    theme.colorScheme.onSurface.withOpacity(.3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  color: theme.colorScheme.primary,
                                ),
                                Text(
                                  "Upload\nPDF",
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const UploadCvView()));
                    },
                    title: "Apply Resume",
                    width: double.infinity,
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
