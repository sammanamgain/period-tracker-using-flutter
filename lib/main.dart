import 'package:flutter/material.dart';
import './splash.dart';
import './question.dart';
//import './home.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Caveat'),
        home: Scaffold(
          appBar: AppBar(title: const Text("period tracker")),
          body: Container(
            color: Colors.teal,
            child: Column(
              children: <Widget>[
                Question(),
              ],
            ),
          ),
        ));
  }
}
