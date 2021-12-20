import 'package:get/get.dart';

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
    }
  }
}
