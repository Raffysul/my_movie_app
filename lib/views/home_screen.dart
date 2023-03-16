// import 'package:flutter/material.dart';
// import 'package:my_movie_app/models/movies.dart';
// import 'package:my_movie_app/views/movie_details.dart';
//
// import '../services/remote_services.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: ApiServices().getMovies(),
//       builder: (context, snapshot) {
//         switch (snapshot.connectionState) {
//           case ConnectionState.waiting:
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           default:
//             if (snapshot.hasError) {
//               return Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       snapshot.hasData;
//                     });
//                   },
//                   child: const Text("Oops!!! no internet connection"),
//                 ),
//               );
//             } else {
//               final series = snapshot.data as Movies;
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(series.image!.original.toString()),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Center(
//                       child: Card(
//                         elevation: 5,
//                         margin: const EdgeInsets.symmetric(
//                             horizontal: 10, vertical: 6),
//                         color: Colors.transparent,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             const SizedBox(
//                               height: 70,
//                             ),
//                             Text(
//                               series.name.toString(),
//                               style: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.w900,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             Text(
//                               series.summary.toString(),
//                               style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w300),
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: ((context) => MovieDetails(
//                                           episodes: series.eEmbedded!.episodes!,
//                                           images: series.image!,
//                                         )),
//                                   ),
//                                 );
//                               },
//                               child: const Text('Episodes'),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }
//         }
//       },
//     );
//   }
// }
