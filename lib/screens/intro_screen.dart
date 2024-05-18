import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/constant/string_constant.dart';
import 'package:techblog/gen/assets.gen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.img.techblog.path,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: MyStrings.welcom,
                    style: themData.textTheme.headlineMedium,
                  )),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return themData.textTheme.displayMedium!
                      .copyWith(fontSize: 18);
                }
                return themData.textTheme.displayMedium;
              })),
              onPressed: () {},
              child: const Text('ثبت نام'),
            )
          ],
        ),
      )),
    );
  }
}
