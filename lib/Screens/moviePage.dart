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
      body: Column(
        children: [
          Stack(children: [
            ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
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
                      image: AssetImage('assets/eva_arrow-ios-back-fill.png'),
                      height: 55,
                    ),
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
