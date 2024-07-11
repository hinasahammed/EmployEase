import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PopularJobCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String btnText;
  const PopularJobCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle, required this.btnText});

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
              Image.network(
                imageUrl,
                width: 50,
                height: 50,
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepOrange,
            ),
            child: Text(
              btnText,
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
