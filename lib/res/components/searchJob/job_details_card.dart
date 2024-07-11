import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobDetailsCard extends StatelessWidget {
  final String imageUrl;
  final String jobName;
  final String compnayName;
  final String location;
  final String address;
  const JobDetailsCard(
      {super.key,
      required this.imageUrl,
      required this.jobName,
      required this.compnayName,
      required this.location,
      required this.address});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: theme.colorScheme.primary.withOpacity(.3),
                ),
                child: Image.asset(
                  imageUrl,
                  width: 30,
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobName,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    compnayName,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.bookmark_outline)
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: theme.colorScheme.onSurface.withOpacity(.4),
              ),
              const Gap(5),
              Text(
                location,
                style: theme.textTheme.labelSmall!.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(.4),
                ),
              ),
              const Spacer(),
              Text(
                address,
                style: theme.textTheme.labelSmall!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "/bin",
                style: theme.textTheme.labelSmall!.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(.4),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
