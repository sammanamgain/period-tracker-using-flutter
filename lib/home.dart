import 'package:flutter/material.dart';
import 'package:period_tracker/chart.dart';
//import './chart.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
import './calender.dart';
import './community.dart';
//import './communityanswer.dart';

class Home extends StatefulWidget {
  double data;
  double name;
  Home(this.data, this.name);

  @override
  State<Home> createState() => _HomeState(data, name);
}

class _HomeState extends State<Home> {
  double data;
  double name;
  _HomeState(this.data, this.name);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("")),
        body: Container(
          color: Color.fromARGB(255, 194, 171, 233),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: <Widget>[
                  //     Name(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          //    crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                //ClearSession();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                }
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Home(22.0, 22.0)));
              }
              // Add your onPressed code here!
              ,
              backgroundColor: Colors.green,
              child: const Icon(Icons.home),
            ),
            FloatingActionButton(
              onPressed: () {
                //ClearSession();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                }
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Calender()));
              }
              // Add your onPressed code here!
              ,
              backgroundColor: Colors.green,
              child: const Icon(Icons.calendar_month),
            ),
            FloatingActionButton(
              onPressed: () {
                //ClearSession();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                }
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Community()));
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.article_rounded),
            ),
            FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.settings_accessibility_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
