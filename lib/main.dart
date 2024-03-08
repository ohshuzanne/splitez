import 'package:flutter/material.dart';
import 'package:splitez/view/homepage.dart';
import 'package:splitez/theme/theme.dart';
import 'package:splitez/view/onboarding_page.dart';
import 'package:splitez/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
