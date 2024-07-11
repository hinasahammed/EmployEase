import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResumeCard extends StatelessWidget {
  final String jobName;
  final String userName;
  final bool isChecked;
  const ResumeCard(
      {super.key,
      required this.jobName,
      required this.userName,
      required this.isChecked});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
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
            const Gap(10),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    jobName,
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
                Text(
                  userName,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
