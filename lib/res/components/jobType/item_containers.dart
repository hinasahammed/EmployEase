import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemContainers extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int index;
  const ItemContainers(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(5),
      width: size.width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 50,
                height: 50,
              ),
              const Gap(10),
              Text(
                title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          Icon(
            index == 0 || index == 1
                ? Icons.check_box
                : Icons.check_box_outline_blank,
            size: 30,
            color: index == 0 || index == 1
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}
