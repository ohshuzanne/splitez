import 'package:flutter/material.dart';
import 'package:splitez/utils/color.dart';
import 'package:splitez/components/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              //picture
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.asset('lib/images/eye.png'),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    30,
                    0,
                    30,
                    0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey there!",
                        style: TextStyle(
                          fontFamily: 'SpaceGrotesk',
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "It's nice to see you again.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //username
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: MyTextField(
                  controller: _usernameController,
                  hintText: "Username",
                  obscureText: false,
                  textFieldBorder: Theme.of(context).colorScheme.onBackground,
                  textColor: Theme.of(context).colorScheme.onBackground,
                  shadowColor: Theme.of(context).colorScheme.onBackground,
                  textFieldColor: Theme.of(context).colorScheme.background,
                ),
              ),

              //password
              //username
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: MyTextField(
                  controller: _passwordController,
                  hintText: "Password",
                  obscureText: true,
                  textFieldBorder: Theme.of(context).colorScheme.onBackground,
                  textColor: Theme.of(context).colorScheme.onBackground,
                  shadowColor: Theme.of(context).colorScheme.onBackground,
                  textFieldColor: Theme.of(context).colorScheme.background,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
