import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String userName;
  final String jobName;
  final bool isChecked;
  const ProfileCard(
      {super.key,
      required this.userName,
      required this.jobName,
      required this.isChecked});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(ImageAsset.profile),
                ),
                Text(
                  userName,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  jobName,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: isChecked
                ? Icon(
                    Icons.check,
                    color: theme.colorScheme.onPrimary,
                  )
                : Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: theme.colorScheme.onSurface),
                    ),
                  ),
          ),
        )
      ],
    );
  }
}
