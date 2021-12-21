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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width / 1.1,
        height: 50,
        // padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(width: 2),
        ), // color: Color(0xFF210F37)
        child: TextField(
          onSubmitted: widget.onchanged,
          controller: widget.controller,
          decoration: const InputDecoration(
              labelText: "Search",
              suffixIcon: Image(image: AssetImage("assets/Group 220.png")),
              prefixIcon: Image(image: AssetImage("assets/Frame.png"))),
        ),
      ),
    );
  }
}
