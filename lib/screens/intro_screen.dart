import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/constant/string_constant.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/screens/category_screen.dart';
import 'package:validators/validators.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themData = Theme.of(context);
    var size = MediaQuery.of(context).size;
    final TextEditingController emailController = TextEditingController();

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
              onPressed: () {
                _showEmailBottomSheet(context, size, themData, emailController);
              },
              child: const Text('ثبت نام'),
            )
          ],
        ),
      )),
    );
  }

  /// this method for Email bottom sheet
  Future<dynamic> _showEmailBottomSheet(BuildContext context, Size size,
      ThemeData themData, TextEditingController emailController) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  MyStrings.enterEmaile,
                  style: themData.textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                  child: TextField(
                    controller: emailController,
                    style: themData.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'techBlog@gmail.com',
                      hintStyle: themData.textTheme.headlineSmall,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (isEmail(emailController.text)) {
                      Navigator.pop(context);
                      _showOtpBottomSheet(
                        context,
                        size,
                        themData,
                      );
                    } else {
                      CherryToast.error(
                        title: const Text(
                          "لطفا ایمل خود را به درستی وارد کنید ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ).show(context);
                    }
                  },
                  child: const Text(
                    'ادامه',
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  /// this method for OTP bottom sheet
  Future<dynamic> _showOtpBottomSheet(
      BuildContext context, Size size, ThemeData themData) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  MyStrings.activateCode,
                  style: themData.textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: themData.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '****',
                      hintStyle: themData.textTheme.headlineSmall,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    ));
                  },
                  child: const Text(
                    'تایید',
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
