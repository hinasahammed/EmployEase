import 'package:employ_ease/res/components/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomGetStartedView extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String desc;
  final String btnText;
  const CustomGetStartedView({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.desc,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xff29BD68),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width * .9,
                height: size.height * .4,
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: size.width * .8,
                  height: size.height * .35,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -25,
                right: 10,
                left: 10,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const Gap(30),
                Text(
                  label,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Text(
                  desc,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .03,
                      height: size.height * .02,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    const Gap(5),
                    Container(
                      width: size.width * .03,
                      height: size.height * .02,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(.5),
                      ),
                    ),
                    const Gap(5),
                    Container(
                      width: size.width * .03,
                      height: size.height * .02,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                CustomButton(
                  width: double.infinity,
                  height: 70,
                  onPressed: () {},
                  title: "Next",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
