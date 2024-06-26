import 'package:flutter/material.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/constant/string_constant.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/model/post_model.dart';
import 'package:techblog/model/title_tag_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var themData = Theme.of(context).textTheme;
    double bodyMargin = size.width / 10;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: SolidColors.scaffoldBg,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: bodyMargin),
          child: ListView(
            children: [
              DrawerHeader(
                child: Assets.img.logo.image(scale: 2),
              ),
              ListTile(
                title: const Text('پروفایل کاربری'),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: const Text('درباره تک بلاگ'),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: const Text('اشتراک گذاری تک بلاگ'),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: const Text('تک بلاگ در گیت هاب'),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
            ],
          ),
        ),
      ),
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
      body: Stack(
        children: [
          BodyScreen(size: size, themData: themData),
        ],
      ),
    );
  }
}

/// this class for Home Screen
class BodyScreen extends StatelessWidget {
  const BodyScreen({
    super.key,
    required this.size,
    required this.themData,
  });

  final Size size;
  final TextTheme themData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                height: size.height / 3.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: Assets.img.logo.provider()),
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: GradientColors.homePosterCoverGradiant,
                  ),
                ),
              ),
              Positioned(
                bottom: 18,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'ملیکا عزیزی - یک روز پیش',
                          style: themData.titleMedium,
                        ),
                        Text(
                          'Like 253',
                          style: themData.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'دوازده قدم برنامه نویسی یک دوره ',
                      style: themData.displayLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tag.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 60,
                  margin: EdgeInsets.only(right: index == 0 ? 18 : 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: GradientColors.tags),
                  ),
                  child: Text(
                    '#${tag[index].title}',
                    style: themData.displayLarge!.copyWith(fontSize: 18),
                  ),
                );
              },
            ),
          ),

          /// view Hottest
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 12),
            child: Row(
              children: [
                Assets.img.pen.image(width: 20),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  MyStrings.viewHotestBlog,
                  style: themData.displaySmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 4.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                var items = blogList[index];
                return Padding(
                  padding: EdgeInsets.only(right: index == 0 ? 18 : 15),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 5.8,
                        width: size.width / 2.4,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                items.imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.bottomLeft,
                            colors: GradientColors.blogPost,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items.writer,
                                style: themData.titleMedium!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                items.views,
                                style: themData.titleMedium!
                                    .copyWith(color: Colors.white),
                              ),
                              const Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 2.4,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            items.content,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 12),
            child: Row(
              children: [
                Assets.img.mictophone.image(width: 20),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  MyStrings.viewHotestPodCasts,
                  style: themData.displaySmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 4.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                var items = blogList[index];
                return Padding(
                  padding: EdgeInsets.only(right: index == 0 ? 18 : 15),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 5.8,
                        width: size.width / 2.4,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                items.imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.bottomLeft,
                            colors: GradientColors.blogPost,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 2.4,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            items.writer,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
