import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splitez/components/button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void SignIn() {}
  void Register() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),

            //picture
            Center(
              child: Container(
                width: 230,
                height: 230,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Image.asset('lib/images/walletmascot.png'),
              ),
            ),

            const SizedBox(height: 10),

            //Welcome text
            Padding(
              padding: EdgeInsets.fromLTRB(
                30,
                0,
                20,
                0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Making money via good habits has never been this\neasy",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        height: 1,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),

            //Description
            Padding(
              padding: EdgeInsets.fromLTRB(
                30,
                10,
                30,
                0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Discover how you can make the most our of our application. Earn money while having fun with SplitEz.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //sign in
            Padding(
              padding: const EdgeInsets.fromLTRB(
                30,
                0,
                30,
                0,
              ),
              child: PrimaryButton(
                onTap: SignIn,
                buttonText: "Sign In",
                buttonColor: Theme.of(context).colorScheme.onBackground,
                borderColor: Theme.of(context).colorScheme.onBackground,
                textColor: Theme.of(context).colorScheme.background,
              ),
            ),

            //sign up
            Padding(
              padding: const EdgeInsets.fromLTRB(
                30,
                15,
                30,
                0,
              ),
              child: PrimaryButton(
                onTap: Register,
                buttonText: "Register",
                buttonColor: Theme.of(context).colorScheme.background,
                borderColor: Theme.of(context).colorScheme.onBackground,
                textColor: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
