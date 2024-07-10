import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: const Color(0xffE3F0E9),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(.5),
              ),
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Spacer(),
              Text(
                "Set Filters",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                "Reset",
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
          Text(
            "Job Category",
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Gap(10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: theme.colorScheme.onSurface.withOpacity(.3),
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
                  "Product Design",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
          const Gap(10),
          Text(
            "Sub Category",
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Gap(10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: theme.colorScheme.onSurface.withOpacity(.3),
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
                  "UI/UX Designer",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
          const Gap(10),
          Text(
            "Location",
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Gap(10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: theme.colorScheme.onSurface.withOpacity(.3),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: theme.colorScheme.onSurface,
                ),
                const Gap(10),
                Text(
                  "Jakartha, Indonesia",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
          const Gap(10),
          Text(
            "Salary",
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
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
                    "Min Salary",
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.3),
                    ),
                  )
                ],
              ),
              const Gap(10),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "\$2400",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Gap(5),
                  Text(
                    "MAx Salary",
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.3),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Gap(10),
          Text(
            "Job Type",
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Full Time",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Part Time",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Remote",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Contract",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Freelance",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {},
            title: "Apply Filter",
            width: double.infinity,
            height: 60,
          ),
        ],
      ),
    );
  }
}
