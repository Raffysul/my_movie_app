import 'package:flutter/material.dart';

import '../models/movies.dart';
import '../services/remote_services.dart';

class InTheaterScreen extends StatefulWidget {
  const InTheaterScreen({Key? key}) : super(key: key);

  @override
  State<InTheaterScreen> createState() => _InTheaterScreenState();
}

class _InTheaterScreenState extends State<InTheaterScreen> {
  // Movies? movies;
  // var isLoaded = false;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }
  //
  // getData() async {
  //   movies = await ApiServices().getMovies();
  //   if (movies != null) {
  //     setState(() {
  //       isLoaded = true;
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().getMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final series = snapshot.data as Movies;
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListView.builder(itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      series.image!.original.toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ));
                      }),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }
}
