import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SalaryCard extends StatelessWidget {
  final double width;
  final String salaryType;
  const SalaryCard({super.key, required this.width, required this.salaryType});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
                children: [
                  Container(
                    width: width,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "\$800",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Gap(5),
                  Text(
                    salaryType,
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.3),
                    ),
                  )
                ],
              );
  }
}