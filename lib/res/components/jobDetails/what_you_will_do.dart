import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WhatYouWillDo extends StatelessWidget {
  final String text;
  const WhatYouWillDo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorScheme.primary.withOpacity(.2),
          ),
          child: Icon(
            Icons.check,
            color: theme.colorScheme.primary,
          ),
        ),
        const Gap(20),
        Text(
          text,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
