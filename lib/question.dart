import 'package:flutter/material.dart';
import './home.dart';

class Question extends StatefulWidget {
  Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @required
  TextEditingController durationController = TextEditingController();

  @required
  TextEditingController lengthController = TextEditingController();
  double? d;
  double? l;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[200],
      ),
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        children: <Widget>[
          const Center(
            child: Text("Enter the period duration",
                style: TextStyle(fontSize: 18), selectionColor: Colors.red,),
          ),
          Card(
              child: Center(
            child: TextField(
              decoration: const InputDecoration(
                labelText: "period duration",
              ),
              controller: durationController,
              keyboardType: TextInputType.number,
            ),
          )),

          //   margin: const EdgeInsets.only(top: 30, right: 180),
          const Center(
            child:
                Text("Enter the period length", style: TextStyle(fontSize: 18)),
          ),

          Card(
              child: TextField(
            decoration: const InputDecoration(
              labelText: "period length",
            ),
            controller: lengthController,
            keyboardType: TextInputType.number,
          )),
          ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                //ClearSession();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                }
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(
                            d = double.parse(durationController.text),
                            l = double.parse(lengthController.text))));
              }),
        ],
      ),
    );
  }
}
