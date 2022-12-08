import 'package:flutter/material.dart';
import 'package:flutter_ui_example_2/colors.dart';
import 'package:flutter_ui_example_2/welcomePage/welcome_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: welcomeBlackColor,
      body: Body(
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(49),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white,
                  width: size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your E-mail',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(49),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white,
                  width: size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.020,
              ),
              SignInButton(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Widget widget;

  Body(this.widget);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'lib/assets/big_moon.png',
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'lib/assets/planet_.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'lib/assets/planet_1.png',
              width: size.width * 0.3,
            ),
          ),
          widget
        ],
      ),
    );
  }
}
