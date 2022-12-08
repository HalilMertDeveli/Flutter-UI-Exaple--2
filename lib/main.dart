import 'package:flutter/material.dart';
import 'package:flutter_ui_example_2/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Container(
                width: size.width * 0.8,
                color: Colors.white,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'SIGN IN ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
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
