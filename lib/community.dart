import 'package:flutter/material.dart';
import './communityanswer.dart';
import './calender.dart';
import './home.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(" community")),
      ),
      body: Column(children: [
        SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {
              //ClearSession();
              if (Navigator.canPop(context)) {
                Navigator.pop(context, true);
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Answer()));
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                  child: Text(" what if you are not feeling welll")),
            ),
          ),
        ),
        SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: null,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: const Center(
                  child: Text(" what if you are not feeling welll")),
            ),
          ),
        ),
        SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: null,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: const Center(
                  child: Text(" what if you are not feeling welll")),
            ),
          ),
        ),
        SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: null,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: const Center(
                  child: Text(" what if you are not feeling welll")),
            ),
          ),
        ),
        SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: null,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: const Center(
                  child: Text(" what if you are not feeling welll")),
            ),
          ),
        ),
      ]),
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
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    ));
  }
}
