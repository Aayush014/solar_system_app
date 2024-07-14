
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system_app/Screens/Home%20Screen/View/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Future.delayed(Duration(seconds: 3),() {
    //   Navigator.of(context).push(CupertinoPageRoute(builder: (context) => HomeScreen(),));
    // },);
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => HomeScreen(),)),
        child: SizedBox(
          height: height,
          width: width,
          child: Image.asset(
            "Assets/Img/splash_screen.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
