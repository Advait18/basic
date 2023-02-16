import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xFF0C0C0C),
          ),
        ),
      ),
    );
  }
}
