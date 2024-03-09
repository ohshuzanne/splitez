import 'package:flutter/material.dart';
import 'package:splitez/view/homepage.dart';
import 'package:splitez/theme/theme.dart';
import 'package:splitez/view/information.dart';
import 'package:splitez/view/onboarding_page.dart';
import 'package:splitez/theme/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:splitez/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:splitez/view/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        routes: {
          '/homepage': (context) => const HomePage(),
          '/detailpage': (context) => const DetailPage(),
          '/loginpage': (context) => const LoginPage(),
        });
  }
}
