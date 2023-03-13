import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.format_align_left, size: 25, color: Colors.black,),
        actions: const [
          Icon(Icons.search, size: 25, color: Colors.black,)
        ],
      ),
      backgroundColor: Colors.white,
    );

  }
}
