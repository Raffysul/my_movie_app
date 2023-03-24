import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_movie_app/views/home_page%20.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  var list = ["Action", "Biography", "Drama"];

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              //decoration: const BoxDecoration(color: Colors.white),
              //height: 30,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 30,
                    width: 350,
                    height: 100,
                    child: Container(
                        // width: 100,
                        // height: 100,
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.star, color: Color(0xFFFCC419)),
                                Text(
                                  '8.2/10',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '150,212',
                                  style: TextStyle(
                                      color: Color(0xFF9A9BB2),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.star_border),
                                Text(
                                  'Rate This',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      '86',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Metascore',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '52 critic reviews',
                                  style: TextStyle(
                                      color: Color(0xFF9A9BB2),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ford v Ferrari',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            '2019',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'PG-13',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '2hr 32min',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFE6D8E),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  for (var item in list)
                    Container(
                      height: 30,
                      width: 90,
                      margin: const EdgeInsets.all(5),
                      //padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          shape: BoxShape.rectangle),
                      child: Center(
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF434670)),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Plot Summary',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF12153D)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      'American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF737599),
                          height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Cast & Crew',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF12153D)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(),
                    //Image.asset('assets/images/profile1.png'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'James Mangold',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF434670)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
