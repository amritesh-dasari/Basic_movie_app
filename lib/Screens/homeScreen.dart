import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradexa_internship/Widgets/MovieCard.dart';
import 'package:tradexa_internship/Widgets/SearchBar.dart';
import '../State/MovieListController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cardet;
    var movieController = Get.put(MovieListController());
    return Scaffold(
      backgroundColor: const Color(0xFF17082A),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/bloop.png")),
          ),
        ),
        GetBuilder<MovieListController>(builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                ),
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
                    cardet = controller.SearchedList[index];
                    return MovieCard(
                      cardet: cardet,
                    );
                  },
                ),
              ),
            ],
          );
        })
      ]),
    );
  }
}
