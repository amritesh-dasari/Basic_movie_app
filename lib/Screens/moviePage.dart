import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardet = Provider.of<LinkedHashMap>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF17082A),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/bloop.png")),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect) {
                        return const LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image(
                        image: NetworkImage(cardet['Poster']),
                        height: MediaQuery.of(context).size.height * 0.75,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.075,
                          left: MediaQuery.of(context).size.width * 0.05),
                      child: Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Image(
                              image: AssetImage(
                                  'assets/eva_arrow-ios-back-fill.png'),
                              height: 55,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cardet['Title'],
                            overflow: TextOverflow.visible,
                            style: const TextStyle(
                                fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            cardet['Genre'],
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.visible,
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xFF210F37),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                            image: AssetImage('assets/Vector 27.png'),
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xFF210F37),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                            image: AssetImage('assets/Path-1.png'),
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xFF210F37),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                            image: AssetImage('assets/Path.png'),
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF210F37),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Row(children: const [
                                  Image(
                                    image: AssetImage('assets/Star 1.png'),
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image(
                                    image: AssetImage('assets/Star 1.png'),
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image(
                                    image: AssetImage('assets/Star 1.png'),
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image(
                                    image: AssetImage('assets/Star 1.png'),
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image(
                                    image: AssetImage('assets/Star 1.png'),
                                    height: 20,
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 20),
                                child: Text(
                                  cardet["rating"],
                                  style: const TextStyle(
                                    color: Color(0xFFF79E44),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Internet Movie Database",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 10),
                                child: Text(
                                  cardet['Ratings'][0]['Value'],
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Rotten Tomatoes",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 10),
                                child: Text(
                                  cardet['Ratings'][1]['Value'],
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, bottom: 20, top: 10),
                                child: Text(
                                  "Metacritic",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 20, top: 10),
                                child: Text(
                                  cardet['Ratings'][2]['Value'],
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                        // height: 500,
                        decoration: BoxDecoration(
                          color: const Color(0xFF210F37),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, right: 20),
                                  child: Image(
                                    image: AssetImage('assets/Group 357.png'),
                                    height: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    cardet['Year'],
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                  child: Image(
                                    image: AssetImage('assets/Vector.png'),
                                    height: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    cardet['Country'],
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                  child: Image(
                                    image: AssetImage('assets/Group 356.png'),
                                    height: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    cardet['runtime'],
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 20, right: 20),
                                  child: Image(
                                    image: AssetImage('assets/Group 358.png'),
                                    height: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    cardet['Language'],
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF210F37),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Plot",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Text(
                              "\"" + cardet['Plot'] + "\"",
                              style: const TextStyle(
                                  color: Colors.white54, fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Director",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 15),
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    cardet['Director'],
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Actors",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, left: 15, right: 15),
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    cardet['Actors'],
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Writer",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5, left: 15, right: 15, bottom: 10),
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    cardet['Writer'],
                                    style: const TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
