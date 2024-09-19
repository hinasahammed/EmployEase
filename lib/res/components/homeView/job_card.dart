import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/view/jobDetails/job_details_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobCard extends StatelessWidget {
  final int index;
  const JobCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => const JobDetailsView()));
      },
      child: Container(
        width: size.width * .85,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: index == 0
                  ? Assets.images.background.provider()
                  : const NetworkImage(
                      "https://i.pinimg.com/564x/90/70/69/907069fa2ccf55c17c3f898c41faca05.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: Assets.images.jlogo.provider(),
                  radius: 25,
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tokopedia",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.surface,
                      ),
                    ),
                    Text(
                      "Fulltime",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.surface,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onSurface.withOpacity(.35),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "+14 Applied",
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Text(
              "Product Designer",
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.surface,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Jakarta, Indonesia",
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.surface,
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.colorScheme.surface.withOpacity(.3),
                  ),
                  child: Text(
                    'Ui Designer',
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.colorScheme.surface.withOpacity(.3),
                  ),
                  child: Text(
                    'Research',
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.colorScheme.surface.withOpacity(.3),
                  ),
                  child: Text(
                    'Product',
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
