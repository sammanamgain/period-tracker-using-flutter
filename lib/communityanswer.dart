import 'package:flutter/material.dart';
import './community.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("community Answer"),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 400),
            child: BackButton(
              onPressed: () {
                //ClearSession();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                }
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Community()));
              },
            ),
          ),
          const Center(
            child: Text(
                "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create. The third option is to have the random paragraph be the ending paragraph in a short story. No matter which of these challenges is undertaken, the writer is forced to use creativity to incorporate the paragraph into their writing."),
          )
        ],
      ),
    ));
  }
}
