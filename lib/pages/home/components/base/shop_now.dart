import 'package:flutter/material.dart';

class ShopNow extends StatelessWidget {
  const ShopNow({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.35,
        heightFactor: 0.15,
        
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/home page/banner/Shop Now.png'),
              ),
            ),
            
          ),
        ),
      );
  }
}