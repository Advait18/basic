import 'package:basic_prototype/pages/authentication/components/my_text_field.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: MyTextField(
          controller: _searchcontroller,
          hintText: "Search",
          // decoration: const InputDecoration(
          //   fillColor: Color(0xFF0C0C0C),
          // ),
        ),
      ),
    );
  }
}
