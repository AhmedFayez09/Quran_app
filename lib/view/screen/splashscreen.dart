import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran/view/screen/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => mainScreen())));
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   animationController?.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: FadeTransition(
          opacity: fadingAnimation!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 300),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              const Text(
                'القراءن الكريم ',
                style: TextStyle(
                  color: Color(0xffB7935F),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                height: 200,
                child: Image.asset('assets/images/logo2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
