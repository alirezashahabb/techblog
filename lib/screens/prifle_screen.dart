import 'package:flutter/material.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/constant/string_constant.dart';
import 'package:techblog/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var themData = Theme.of(context).textTheme;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Assets.img.logo.image(height: size.height / 9.8),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 22,
          ),
          Assets.img.profiile.image(width: 100, height: 100),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.img.pen.image(
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                MyStrings.imageProfileEdit,
                style: themData.displaySmall,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text('فاطمه امیری'),
          const SizedBox(
            height: 12,
          ),
          const Text('fatemeamiri@gmail.com'),
          const SizedBox(
            height: 12,
          ),
          Divider(
            indent: size.width / 5,
            endIndent: size.width / 5,
          ),
          InkWell(
            splashColor: SolidColors.primaryColor,
            onTap: () {},
            child: const Text(
              MyStrings.myFavBlog,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Divider(
            indent: size.width / 5,
            endIndent: size.width / 5,
          ),
          InkWell(
              splashColor: SolidColors.primaryColor,
              onTap: () {},
              child: const Text(MyStrings.myFavPodcast)),
          const SizedBox(
            height: 12,
          ),
          Divider(
            indent: size.width / 5,
            endIndent: size.width / 5,
          ),
          InkWell(
            splashColor: SolidColors.primaryColor,
            onTap: () {},
            child: const Text(
              MyStrings.logOut,
            ),
          ),
        ],
      )),
    );
  }
}
