import 'package:flutter/material.dart';
import 'package:movie_app/screens/home.dart';

//import 'package:iconly/iconly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: const Color(0xff1D2031),
      ),
      home: const Scaffold(
        body: HomePage(),

        //
      ),
    );
  }
}
