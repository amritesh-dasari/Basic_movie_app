import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onchanged;
  const SearchBar({Key? key, required this.controller, required this.onchanged})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width / 1.1,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white24,
            border: Border.all(width: 2),
            borderRadius:
                BorderRadius.circular(20)), // color: Color(0xFF210F37)
        child: TextField(
          style: const TextStyle(color: Colors.white70, fontSize: 18),
          onSubmitted: widget.onchanged,
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Image(
                image: AssetImage("assets/Group 220.png"),
                height: 25,
              ),
              onPressed: widget.controller.clear,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Image(image: AssetImage("assets/Frame.png")),
            ),
          ),
        ),
      ),
    );
  }
}
