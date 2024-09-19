import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/view/created/created_account_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConfirmAccountView extends StatelessWidget {
  const ConfirmAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Confirm New\nAccount",
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 100,
              backgroundImage: Assets.images.profile.provider(),
            ),
            const Gap(20),
            Text(
              "Welcome",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(.5),
              ),
            ),
            Text(
              "Njan Thanne",
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const CreatedAccountView(),
                  ),
                );
              },
              title: "Create My Account",
              width: double.infinity,
              height: 60,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
