import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String poster;
  final String runtime;
  final String rating;
  const MovieCard(
      {Key? key,
      required this.title,
      required this.poster,
      required this.runtime,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: () {},
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
                          image: NetworkImage(poster),
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
                          Text(" "),
                          Image(
                            image: AssetImage("assets/Star 1.png"),
                            height: 10,
                          ),
                          Text(
                            " " + rating,
                            style: TextStyle(color: Colors.white),
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
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/Group 356.png"),
                      height: 16,
                    ),
                    Text("  " + runtime,
                        style: TextStyle(color: Color(0xFFF79E44))),
                  ],
                )
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
