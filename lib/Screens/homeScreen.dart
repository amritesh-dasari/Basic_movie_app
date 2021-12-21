import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradexa_internship/Widgets/SearchBar.dart';
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
    var movieController = Get.put(MovieListController());
    return Scaffold(
      backgroundColor: Color(0xFF17082A),
      appBar: AppBar(
        title: Text("Tradexa Internship Task"),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/bloop.png"))),
        ),
        GetBuilder<MovieListController>(builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: SearchBar(
                  controller: searchBarController,
                  onchanged: (string) {
                    controller.clearSearch();
                    controller.searchMovies(string);
                  },
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: controller.SearchedList.length,
                      itemBuilder: (context, index) {
                        print(controller.SearchedList[index]);
                        return Container();
                        //return MovieCard(controller.SearchedList[index],index);
                      }))
            ],
          );
        })
      ]),
    );
  }
}
