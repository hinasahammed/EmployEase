import 'package:employ_ease/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            "Let's Find a Job With Joobie",
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: Assets.images.profile.provider(),
        ),
      ],
    );
  }
}
