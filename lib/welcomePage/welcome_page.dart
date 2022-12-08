import 'package:flutter/material.dart';
import 'package:flutter_ui_example_2/LoginPage/login.dart';
import 'package:flutter_ui_example_2/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: welcomeBlackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'lib/assets/ss.jpg',
              width: double.infinity,
            ),
            SignInButton(size: size),
            ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Container(
                width: size.width * 0.8,
                color: Colors.white,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'SIGN UP ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              'lib/assets/bottom_background.jpg',
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(49),
      child: Container(
        width: size.width * 0.8,
        color: Colors.white,
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          },
          child: const Text(
            'SIGN IN ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
