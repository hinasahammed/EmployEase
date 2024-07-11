import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardTopContent extends StatelessWidget {
  final String jobName;
  final String companyName;
  const CardTopContent(
      {super.key, required this.jobName, required this.companyName});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: theme.colorScheme.primary.withOpacity(.3),
          ),
          child: Image.asset(
            ImageAsset.jobLogo,
            width: 70,
          ),
        ),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jobName,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              companyName,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
