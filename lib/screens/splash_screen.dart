import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.logo.image(height: 80),
            const SizedBox(
              height: 20,
            ),
            const SpinKitFadingCube(
              color: SolidColors.primaryColor,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
