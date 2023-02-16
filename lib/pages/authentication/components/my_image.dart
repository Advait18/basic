import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final String path;

  const MyImage({
    super.key,
    required this.path,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        path,
        height: 25,
      )
    );
  }
}
