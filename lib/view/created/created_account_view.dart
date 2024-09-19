import 'package:employ_ease/gen/assets.gen.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreatedAccountView extends StatelessWidget {
  const CreatedAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.background.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Your Account Set",
              style: theme.textTheme.headlineLarge!.copyWith(
                color: theme.colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            Text(
              "You have successfully top up the wallet",
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.surface,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(40),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const HomeView(),
                  ),
                );
              },
              title: "Back To Home",
              width: double.infinity,
              height: 60,
            ),
            const Gap(50),
          ],
        ),
      ),
    );
  }
}
