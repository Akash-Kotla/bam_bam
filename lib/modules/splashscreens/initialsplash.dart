import 'package:flutter/material.dart';
class InitialSplash extends StatefulWidget {
  final Widget? child;
  const InitialSplash({super.key, required this.child});

  @override
  State<InitialSplash> createState() => _InitialSplashState();
}

class _InitialSplashState extends State<InitialSplash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 237, 237),
      body: Center(child: Image.asset('assets/images/splash_image_1.png')),
    );
  }
}
