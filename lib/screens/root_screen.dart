import 'package:flutter/material.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/screens/home_screen.dart';
import 'package:techblog/screens/prifle_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: getLayOut(),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: GradientColors.bottomNavBackground,
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
            iconSize: 28,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white,
            backgroundColor: SolidColors.primaryColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(
                () {
                  selectedIndex = value;
                },
              );
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.article),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                ),
              ),
            ]),
      ),
    );
  }
}

List<Widget> getLayOut() {
  return <Widget>[
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];
}




// import 'dart:ui';

// import 'package:appleshop1/common/color.dart';
// import 'package:appleshop1/screens/cart_screen.dart';
// import 'package:appleshop1/screens/category_screens.dart';
// import 'package:appleshop1/screens/home_screens.dart';
// import 'package:appleshop1/screens/profile_screens.dart';
// import 'package:flutter/material.dart';

// class RootScreens extends StatefulWidget {
//   const RootScreens({super.key});

//   @override
//   State<RootScreens> createState() => _RootScreensState();
// }

// class _RootScreensState extends State<RootScreens> {
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: selectedIndex,
//         children: getLayOut(),
//       ),
//       bottomNavigationBar: ClipRRect(
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
//           child: BottomNavigationBar(
//             onTap: (value) {
//               setState(() {
//                 selectedIndex = value;
//               });
//             },
//             currentIndex: selectedIndex,
//             selectedLabelStyle: const TextStyle(
//                 fontSize: 12, color: CustomColors.mainColor, fontFamily: 'Sb'),
//             unselectedLabelStyle: const TextStyle(
//                 fontSize: 12,
//                 color: CustomColors.mainTextcolor,
//                 fontFamily: 'Sb'),
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             items: [
//               BottomNavigationBarItem(
//                   activeIcon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child: Image.asset('assets/images/icon_home_active.png'),
//                     ),
//                   ),
//                   icon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child: Image.asset('assets/images/icon_home.png'),
//                     ),
//                   ),
//                   label: 'خانه'),
//               BottomNavigationBarItem(
//                   activeIcon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child:
//                           Image.asset('assets/images/icon_category_active.png'),
//                     ),
//                   ),
//                   icon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child: Image.asset('assets/images/icon_category.png'),
//                     ),
//                   ),
//                   label: 'دسته بندی'),
//               BottomNavigationBarItem(
//                   activeIcon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child:
//                           Image.asset('assets/images/icon_basket_active.png'),
//                     ),
//                   ),
//                   icon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child: Image.asset('assets/images/icon_basket.png'),
//                     ),
//                   ),
//                   label: 'سبدخرید'),
//               BottomNavigationBarItem(
//                   activeIcon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child:
//                           Image.asset('assets/images/icon_profile_active.png'),
//                     ),
//                   ),
//                   icon: Padding(
//                     padding: const EdgeInsets.only(bottom: 4),
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 20,
//                             color: CustomColors.mainColor,
//                             spreadRadius: -7,
//                             offset: Offset(0, 13),
//                           )
//                         ],
//                       ),
//                       child: Image.asset('assets/images/icon_profile.png'),
//                     ),
//                   ),
//                   label: 'پروفایل'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List<Widget> getLayOut() {
//     return <Widget>[
//       const HomeScreens(),
//       const CategoryScreens(),
//       const CartScreen(),
//       const ProfileScreens(),
//     ];
//   }
// }
