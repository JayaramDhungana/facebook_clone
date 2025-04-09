import 'package:facebook_clone_up/Screens/FriendPage.dart';
import 'package:facebook_clone_up/Screens/HomePage.dart';
// import 'package:facebook_clone_up/crop_image/crop_image2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),

          displayMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      home: Homepage(),
    );
  }
}
