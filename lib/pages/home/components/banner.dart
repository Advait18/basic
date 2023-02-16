import 'package:flutter/material.dart';

class MyBanner extends StatefulWidget {
  final String path;
  const MyBanner({super.key, required this.path});

  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (DragDownDetails details) {
        setState(() {
          _index = (_index + 1) % 3;
        });
      },
      child: IndexedStack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.path),
              fit: BoxFit.fill,
            )),
          ),
          Positioned(
            left: 165,
            top: 80,
            child: Container(
              height: 250,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/home page/banner/Shop Now.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
