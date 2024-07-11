import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemsCard extends StatelessWidget {
  final String title;
  const ItemsCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: theme.colorScheme.onSurface.withOpacity(.2),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color: theme.colorScheme.onSurface,
          ),
          const Gap(10),
          Text(
            title,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
