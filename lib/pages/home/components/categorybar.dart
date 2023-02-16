import 'package:flutter/material.dart';

import 'base/category.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({super.key});

  @override
  State<CategoryBar> createState() => CategoryBarState();
}

class CategoryBarState extends State<CategoryBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.20,
        decoration: const BoxDecoration(
          color: Color(0xFF0C0C0C),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              Category(path: 'lib/images/home page/categories/new.jfif', name: 'NEW'),
              Category(path: 'lib/images/home page/categories/tops.jpg', name: 'TOPS',),
              Category(path: 'lib/images/home page/categories/jackets.jfif', name: 'JACKETS',),
              Category(path: 'lib/images/home page/categories/pants.jpg', name: 'PANTS',),
            ],
          ),
        ),
      );
  }
}