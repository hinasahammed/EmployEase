import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  final String fieldName;
  final IconData? prefix;
  final IconData? suffix;
  const CustomTextFormfield({
    super.key,
    required this.fieldName,
    this.prefix, this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
          ),
        ),
        hintText: fieldName,
        hintStyle: theme.textTheme.bodyLarge!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        prefixIcon:  Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.2),
                ),
                child: Icon(
                  prefix,
                  color: theme.colorScheme.primary,
                ),
              ),
        suffixIcon:  Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.2),
                ),
                child: Icon(
                 suffix,
                  color: theme.colorScheme.primary,
                ),
              ),
      ),
    );
  }
}
