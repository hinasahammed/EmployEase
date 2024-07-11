import 'package:flutter/material.dart';

class TabBarContents extends StatelessWidget {
  final int index;
  final String title;
  const TabBarContents({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 50,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: index == 0 ? theme.colorScheme.primary : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: theme.textTheme.bodyLarge!.copyWith(
            color: index == 0
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurface),
      ),
    );
  }
}
