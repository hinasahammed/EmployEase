import 'package:employ_ease/getStarted/get_started_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmployEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff29BD68),
          primary: const Color(0xff24BC67),
        ),
        useMaterial3: true,
      ),
      home: const GetStartedView(),
    );
  }
}
