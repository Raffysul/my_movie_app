// import 'package:http/http.dart' as http;
//
// import '../models/movies.dart';
//
// class RemoteService {
//   Future<List<Movies>?> getMovies() async {
//     var client = http.Client();
//     var uri = Uri.parse("https://online-movie-database.p.rapidapi.com/auto-complete?q=game%20of%20thr");
//     //final uri = Uri.parse(url);
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var json = response.body;
//       return moviesFromJson(json);
//
//
//     }
//     return null;
//   }
// }