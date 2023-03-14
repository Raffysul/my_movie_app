import 'package:http/http.dart' as http;

import '../models/movies.dart';

class RemoteService {
  Future<Movies?> getMovies() async {
    var client = http.Client();
    var uri = Uri.parse("https://online-movie-database.p.rapidapi.com/auto-complete?q=game%20of%20thr");
    //final uri = Uri.parse(url);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return moviesFromJson(json);
    }
    return null;
  }
}
// Future<List<Movies>> _fetchAllMovies() async {
//   final response = await http.get("https://online-movie-database.p.rapidapi.com/auto-complete?q=game%20of%20thr");
//   if (response.statusCode == 200) {
//     final result = jsonDecode(response.body);
//     Iterable list = result["d"];
//     return list.map((movies) => Movie.fromJson)
//   }
// }