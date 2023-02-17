import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C0C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0C0C0C),
        leading: GestureDetector(
          onTap: ()=> {
            context.go('/home'),
          },
          child: const Icon(Icons.arrow_back_rounded)
          ),
        title: Title(color: Colors.white,
        child: const Text('Cart')),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}