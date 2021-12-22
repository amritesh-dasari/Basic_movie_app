import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradexa_internship/Screens/moviePage.dart';

class MovieCard extends StatelessWidget {
  final LinkedHashMap cardet;
  const MovieCard({Key? key, required this.cardet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FutureProvider(
                create: (context) => Future.value(cardet),
                initialData: cardet,
                child: const MoviePage(),
              ),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(
                      width: 0.5,
                    ),
                  ),
                  child: AspectRatio(
                    aspectRatio: 1 / 0.55,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(cardet["Poster"]),
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Container(
                    height: 20,
                    width: 66,
                    child: Center(
                      child: Row(
                        children: [
                          const Text(" "),
                          const Image(
                            image: AssetImage("assets/Star 1.png"),
                            height: 10,
                          ),
                          Text(
                            " " + cardet['rating'],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text(
                cardet['Title'],
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Row(
                children: [
                  const Image(
                    image: AssetImage("assets/Group 356.png"),
                    height: 16,
                  ),
                  Text("  " + cardet['runtime'],
                      style: const TextStyle(color: Color(0xFFF79E44))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
