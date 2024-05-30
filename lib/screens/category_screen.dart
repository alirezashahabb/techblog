import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/constant/string_constant.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/model/title_tag_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themData = Theme.of(context);
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.img.techblog.path,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  MyStrings.successfulRegistration,
                  style: themData.textTheme.headlineMedium,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: bodyMargin),
                  child: TextField(
                    style: themData.textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'نام و نام خانوادگی',
                        hintStyle: themData.textTheme.headlineMedium),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.chooseCats,
                  style: themData.textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 32, 12, 0),
                  child: SizedBox(
                    height: 85,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: tag.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5,
                              childAspectRatio: 0.3),
                      itemBuilder: (context, index) {
                        return Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.bottomLeft,
                                  colors: GradientColors.tags),
                            ),
                            child: Text(
                              '#${tag[index].title}',
                              style: themData.textTheme.displayLarge!
                                  .copyWith(fontSize: 18),
                            ));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
