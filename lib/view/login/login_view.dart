import 'package:employ_ease/assets/icons/icon_asset.dart';
import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:employ_ease/res/components/common/custom_textformfield.dart';
import 'package:employ_ease/view/jobType/job_type_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * .25,
              height: size.height * .12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff29C170),
                    Color(0xff64BF6E),
                  ],
                ),
              ),
              child: Icon(
                Icons.shopping_bag,
                color: theme.colorScheme.surface,
                size: 50,
              ),
            ),
            const Gap(20),
            Text(
              "Hey There!\nWelcome Back",
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            Text(
              "Email",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(5),
            const CustomTextFormfield(
              prefix: Icons.mail,
              suffix: Icons.check,
              fieldName: 'Email',
            ),
            const Gap(20),
            Text(
              "Password",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(5),
            const CustomTextFormfield(
              prefix: Icons.lock,
              suffix: Icons.visibility_off,
              fieldName: 'Password',
            ),
            const Gap(20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forget password?",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
            const Gap(20),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const JobTypeView(),
                  ),
                );
              },
              title: "Login",
              width: double.infinity,
              height: 60,
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  " Sign up",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                )
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  IconAsset.google,
                  width: 50,
                  height: 50,
                ),
                const Gap(30),
                Image.asset(
                  IconAsset.facebook,
                  width: 50,
                  height: 50,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
