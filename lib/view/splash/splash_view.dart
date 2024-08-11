import 'dart:async';

import 'package:employ_ease/view/getStarted/get_started_view.dart';
import 'package:employ_ease/view/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        checkOnboard();
      },
    );
  }

  void checkOnboard() async {
    final pref = await SharedPreferences.getInstance();
    var val = pref.getBool("onboardVal") ?? false;
    if (val) {
      if (mounted) {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => const LoginView()));
      }
    } else {
      if (mounted) {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => const GetStartedView()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xff269662),
      body: Center(
        child: Container(
          width: size.width * .3,
          height: size.height * .13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
      ),
    );
  }
}
