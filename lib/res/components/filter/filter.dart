import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/res/components/filter/items_card.dart';
import 'package:employ_ease/res/components/filter/salary_card.dart';
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
            children: [
              Text(
                "Set Filters",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(70),
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
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const ItemsCard(
            title: "Product Design",
          ),
          const Gap(10),
          Text(
            "Sub Category",
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const ItemsCard(
            title: "UI/UX Designer",
          ),
          const Gap(10),
          Text(
            "Location",
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const ItemsCard(
            title: "Jakartha, Indonesia",
          ),
          const Gap(10),
          Text(
            "Salary",
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SalaryCard(
                width: size.width / 3,
                salaryType: "Min Salary",
              ),
              const Gap(10),
              SalaryCard(
                width: size.width / 2,
                salaryType: "Max Salary",
              ),
            ],
          ),
          const Gap(10),
          Text(
            "Job Type",
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
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
          const Gap(20),
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
