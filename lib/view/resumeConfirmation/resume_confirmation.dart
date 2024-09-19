import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/view/searchJob/search_job_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResumeConfirmation extends StatelessWidget {
  const ResumeConfirmation({super.key});

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
          "Confirmation",
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
              child: Column(
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                           CircleAvatar(
                            radius: 30,
                            backgroundImage: Assets.images.profile.provider(),
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Njan thanne",
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Ux Designer",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.4),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.description_rounded,
                            color: Colors.deepOrange,
                            size: 50,
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ente-Cv-Flutter",
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "670 kb",
                                style: theme.textTheme.labelSmall!.copyWith(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.4),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          const Gap(20),
          Expanded(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 226, 226, 226),
                    ),
                  ),
                  const Gap(20),
                  Icon(
                    Icons.check_circle,
                    color: theme.colorScheme.primary,
                    size: 100,
                  ),
                  const Gap(20),
                  Text(
                    "Confirmation Data",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    "Lorem ipsumw cdnf can sjdo such thing i do one dont do",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.4),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Expanded(child: SizedBox()),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const SearchJobView()));
                    },
                    title: "Confirmation Data",
                    width: double.infinity,
                    height: 60,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
