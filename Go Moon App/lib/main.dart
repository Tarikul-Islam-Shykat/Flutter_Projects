import 'package:flutter/material.dart';
import 'package:go_moon_ui/pages/home_page.dart';

void main() {
  runApp(new MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key}); // as its stateless, thats why constant is added.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Go Moon",

      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0),),

      home: HomePage()

    );
  }

}

