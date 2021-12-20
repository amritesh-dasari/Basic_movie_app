import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../State/MovieListController.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var movieController = Get.put(MovieListcontroller());
    return Scaffold(
      backgroundColor: Color(0xFF17082A),
      // appBar: AppBar(
      //   title: Text("Tradexa Internship Task"),
      // ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/bloop.png"))),
        ),
      ]),
    );
  }
}
