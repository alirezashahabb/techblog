import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themData = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var bodyMargin = size / 10;
    return Container(
      color: Colors.red,
    );
  }
}
