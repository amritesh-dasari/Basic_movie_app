// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MovieListController extends GetxController {
  var MovieList = [];
  var SearchedList = [];

  void searchMovies(movieName) async {
    if (movieName != '') {
      var url =
          Uri.parse('http://www.omdbapi.com/?apikey=bed74689&s=' + movieName);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var result = convert.jsonDecode(response.body) as Map<String, dynamic>;
        var movies = result['Search'];

        for (var i = 0; i < movies.length; i++) {
          var movieId = movies[i]['imdbID'];
          var titleUrl =
              Uri.parse('http://www.omdbapi.com/?apikey=bed74689&i=' + movieId);
          var movieResponse = await http.get(titleUrl);

          if (movieResponse.statusCode == 200) {
            var rating;
            var result1 =
                convert.jsonDecode(movieResponse.body) as Map<String, dynamic>;
            var ratingslst = result1['Ratings'];
            if (ratingslst.length == 0) {
              rating = "N/A";
            } else {
              rating = ratingslst[0]['Value'];
            }
            var runtime = result1['Runtime'];
            var genre = result1['Genre'];
            var year = result1['Year'];
            var country = result1['Country'];
            var language = result1['Language'];
            var plot = result1['Plot'];
            var director = result1['Director'];
            var actors = result1['Actors'];
            var writer = result1['Writer'];

            movies[i]['rating'] = rating;
            movies[i]['runtime'] = runtime;
            movies[i]['Ratings'] = ratingslst;
            movies[i]['Genre'] = genre;
            movies[i]['Year'] = year;
            movies[i]['Country'] = country;
            movies[i]['Language'] = language;
            movies[i]['Plot'] = plot;
            movies[i]['Director'] = director;
            movies[i]['Actors'] = actors;
            movies[i]['Writer'] = writer;
          }
        }
        SearchedList = movies;
        update();
      }
    } else {
      SearchedList.clear();
      update();
    }
  }

  void clearSearch() {
    SearchedList.clear();
    update();
  }
}
