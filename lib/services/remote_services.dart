import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/movies.dart';

class ApiServices {
  Future<Movies?> getMovies() async {
    var url = Uri.parse(
        "https://api.tvmaze.com/singlesearch/shows?q=game%20of%20thrones&embed=episodes");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = response.body;
      var decodedRes = jsonDecode(result);
      return Movies.fromJson(decodedRes);
    } else {
      return null;
    }
  }
}



// class RemoteService {
//   Future<Movies?> getMovies() async {
//     var client = http.Client();
//     var uri = Uri.parse("https://online-movie-database.p.rapidapi.com/auto-complete?q=game%20of%20thr");
//     //final uri = Uri.parse(url);
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var result = response.body;
//       var decodedRes = jsonDecode(result);
//       return moviesFromJson(result);
//     }
//     return null;
//   }
// }
