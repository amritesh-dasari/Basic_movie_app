import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MovieListController extends GetxController {
  var MovieList = [];
  var SearchedList = [];

  @override
  void onInit() {
    super.onInit();
  }

  void searchMovies(movie_name) async {
    if (movie_name != '') {
      var url =
          Uri.parse('http://www.omdbapi.com/?apikey=bed74689&s=' + movie_name);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var result = convert.jsonDecode(response.body) as Map<String, dynamic>;
        var movies = result['Search'];

        for (var i = 0; i < movies.length; i++) {
          var movie_id = movies[i]['imdbID'];
          var title_url = Uri.parse(
              'http://www.omdbapi.com/?apikey=bed74689&i=' + movie_id);
          var movie_response = await http.get(title_url);

          if (movie_response.statusCode == 200) {
            var result1 =
                convert.jsonDecode(movie_response.body) as Map<String, dynamic>;
            var ratingslst = result1['Ratings'];
            var rating = ratingslst[0]['Value'];
            var runtime = result1['Runtime'];
            movies[i]['rating'] = rating;
            movies[i]['runtime'] = runtime;
          }
        }
        SearchedList = movies;
        update();
      } else {
        print('Request Failed with Status: ${response.statusCode}');
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
