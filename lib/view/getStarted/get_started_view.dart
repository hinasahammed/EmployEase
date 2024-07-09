import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:employ_ease/res/components/custom_get_started_view.dart';
import 'package:employ_ease/view/login/login_view.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          CustomGetStartedView(
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            imageUrl: "assets/images/im1-removebg-preview.webp",
            label: "Search Job Easier And More Effective",
            desc:
                "Make your experience of searching job more easier and more effective",
            btnText: "Next",
            controller: pageController,
          ),
          CustomGetStartedView(
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            imageUrl: ImageAsset.getStartedImage2,
            label: "Apply for job anywhere & anytime",
            desc: "Jobbie makes you can apply job from anywhere and anytime",
            btnText: "Next",
            controller: pageController,
          ),
          CustomGetStartedView(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const LoginView(),
                ),
              );
            },
            imageUrl: ImageAsset.getStartedImage3,
            label: "Help Find The Right Job With Your Desire",
            desc: "Jobbie can help you find the right job with your desire",
            btnText: "Sign in",
            controller: pageController,
          ),
        ],
      ),
    );
  }
}
