import 'package:employ_ease/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchFieldAndFilter extends StatelessWidget {
  final String hintText;
  const SearchFieldAndFilter({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const Gap(10),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Assets.icons.filter.image(
            width: 30,
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }
}
